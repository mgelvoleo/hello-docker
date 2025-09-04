const request = require('supertest');
const app = require('../app');

describe('GET /', () => {
  it('responds with JSON containing message', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
    expect(res.body).toHaveProperty('message');
  });
});

