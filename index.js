var ngrok = require('ngrok')

if (
  !process.env.TARGET_HOST ||
  !process.env.TARGET_PORT
) {
  throw new Error('The following env variables are required: TARGET_HOST, TARGET_PORT')
  process.exit(1)
}

var targetAddress = `${process.env.TARGET_HOST}:${process.env.TARGET_PORT}`

ngrok.connect({
  addr: targetAddress,
  region: process.env.NGROK_REGION || 'us'
}, (err, url) => {
  console.log(`
The ngrok HTTP tunnel is active:

${url} ---> ${targetAddress}
  `)
})
