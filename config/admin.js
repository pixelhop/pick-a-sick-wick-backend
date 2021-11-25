module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '54af705ef4b1103117a67e9cc18a2ab0'),
  },
});
