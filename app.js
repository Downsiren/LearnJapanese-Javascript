//app.js
App({
  globalData: {
    userInfo: null
  },
  baseUrl: 'https://zxu.ink/learn/',
  // baseUrl: 'https://localhost/learn/',

  onLaunch: function() {
    // 展示本地存储能力
    var _this = this;
    var logs = wx.getStorageSync('logs') || []
    logs.unshift(Date.now())
    wx.setStorageSync('logs', logs)
    console.log("测试" + wx.getStorageSync("token"))
  },


  // 登录
  login: function() {
    var _this = this;
    return new Promise(function() {
      wx.login({
        success: res => {
          // 发送 res.code 到后台换取 openId, sessionKey, unionId
          if (res.code) {
            wx.request({
              url: _this.baseUrl + 'user/login',
              method: "POST",
              data: {
                nickName: _this.globalData.userInfo.nickName,
                avatarUrl: _this.globalData.userInfo.avatarUrl,
                token: wx.getStorageSync("token"),
                code: res.code
              },
              header: {
                'content-type': 'application/x-www-form-urlencoded',
              },
              success: function(res) {
                console.log(res);
                wx.setStorageSync("token", res.data.token);
                wx.setStorageSync("openid", res.data.openid);;
                _this.globalData.hasUserInfo = true;
                console.log(wx.getStorageSync("token"));
                wx.hideLoading();
                wx.showToast({
                  title: '登入成功',
                })
              },
              error: function(res) {
                console.log(res);
                wx.showLoading({
                  title: '网络错误'
                })
              }
            })
          } else {
            console.log('获取用户登录态失败！' + res.errMsg)
          }
        }
      })
    })
  },

  if_login: function() { //判断是否登入
    var token = wx.getStorageSync("token");
    console.log(token);
    if (token == "" || token == null) { //没有token
      return false
    } else { //有token
      return true
      console.log("已经登入");
    }
  }

  // ,
  // if_login: function () { //判断是否登入
  //   var _this = this;
  //   return new Promise(function () {
  //     var token = wx.getStorageSync("token");
  //     console.log(token);
  //     if (token == "" || token == null) { //没有token
  //       wx.getSetting({ //判断是否授权
  //         success(res) {
  //           if (res.authSetting['scope.userInfo']) { //已经授权 前往登录
  //             // 已经授权，可以直接调用 getUserInfo 获取头像昵称
  //             wx.getUserInfo({
  //               success(res) {
  //                 _this.globalData.userInfo = res.userInfo;
  //                 console.log(res.userInfo);
  //                 _this.setData({
  //                   userInfo: _this.globalData.userInfo,
  //                   hasUserInfo: true
  //                 })
  //                 _this.login(); //登入
  //                 wx.hideLoading();
  //                 wx.switchTab({
  //                   url: '/pages/index/index' //调回首页
  //                 })
  //               }
  //             })
  //           } else {//前往授权
  //             console.log("前往授权登录");
  //             return "wsq"//未授权
  //           }
  //         }
  //       })
  //     } else { //有token
  //       return "ydl"//已经登入
  //       console.log("已经登入");
  //     }
  //   })
  // }
})

