import { handler } from '../src'
import assert = require('assert');

const promisify = handler => async (...args: any) => new Promise((resolve, reject) => handler(...args, (err, res) => {
    if (err) {
        reject(err);
    } else {
        resolve(res);
    }
}))

describe('converts', () => {
    it('doc to pdf', async () => {
        const res = await promisify(handler)({}, {})

        assert(res === 'hello world, from typescript')
    })
})
