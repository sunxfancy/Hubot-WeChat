# node.js deps
fs   = require 'fs'

# app deps
yaml = require 'js-yaml'

user_config = fs.readFileSync './config.yaml' , 'utf8'

config      = fs.readFileSync './node_modules/hubot-weixin/config.yaml' , 'utf8'

obj  = yaml.load config
uobj = yaml.load user_config

for key, value of uobj
    obj[key] = value
console.log(obj)

module.exports = obj