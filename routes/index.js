var express = require('express');
var router = express.Router();
var mysql  = require('../mysql/db')
/* GET home page. */
// router.get('/', function (req, res, next) {
//   res.render('index', { title: 'zzy' });
//   // var list = [];
//   // for (let i in [1, 2, 3]) {
//   //   list.push({ name: `我是第${i + 1}个` })
//   // }
//   // var obj = { msg: "123", input: req.query, list: list }
//   // res.send(obj)
// });

router.get('/zzy', function (req, res, next) {
  var result = ""
  var type = typeof (req.query.x);
  switch (type) {
    case 'number':
      result = 'number';
      break;
    case 'string':
      result = 'string';
      break;
    case 'object':
      if (Array.isArray(req.query.x)) {
        result = 'array';
      } else {
        result = 'object';
      }
      break;
  }
  res.send(result)
});

router.get('/cool', function (req, res, next) {
  var result = ""
  var type = typeof(req.query.x);
  if (type == 'number') {
    result = { errcode: 0, msg: "OK" }
  } else {
    result = { errcode: 1, msg: "not a number" }
  }
  res.send(result)
});

router.post('/cool2', function (req, res, next) {
  console.log(req.body)
  var result = ""
  var type = typeof(req.body.x);
  if (type == 'number') {
    result = { errcode: 0, msg: "OK" }
  } else {
    result = { errcode: 1, msg: "not a number" }
  }
  res.send(result)
});

router.get('/mysql',function(req,res,next){
  mysql.query('select * from students',(err,result)=>{
    if(err){
      res.send('查询出错了')
    }else{
      res.send(result)
    }
  })
})

router.post('/create',function(req,res,next){
  mysql.query(`insert into students (sex,name,age) value (0,"${req.body.name}",${req.body.age});`,(err,result)=>{
    if(err){
      res.send('执行出错了')
    }else{
      res.send(result)
    }
  })
})
module.exports = router;

