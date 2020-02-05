import { handler, initializer } from '../src'
import assert = require('assert');
import fs from 'fs';
import path from 'path';
import dotenv from 'dotenv';

const promisify = handler => async (...args: any) => new Promise((resolve, reject) => handler(...args, (err, res) => {
    if (err) {
        reject(err);
    } else {
        resolve(res);
    }
}))

describe('converts', () => {
    let context: any = {};

    before(() => {
        const env = fs.readFileSync(path.join(__dirname, '../.env'), 'utf-8')
        const parsed = dotenv.parse(env);

        process.env = { ...process.env, ...parsed }
        context.credentials = { accessKeyId: parsed.ALIBABA_CLOUD_ACCESS_KEY_ID, accessKeySecret: parsed.ALIBABA_CLOUD_ACCESS_KEY_SECRET }
    })

    it('doc to pdf', async () => {
        const initializeResult: any = await promisify(initializer)(context)

        console.log('res = ', initializeResult)
        assert(initializeResult === 'already downloaded.' || initializeResult.content === null)

        const res = await promisify(handler)({}, {})

        assert(res === 'hello world, from typescript')
    })
})
