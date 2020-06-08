(function () {
	class Login {
		constructor() {
			this.header = $("#header");
			this.footer = $("#footer");
			this.userInput = $("#user .normal-input"); //账号输入框
			this.userIcon = $("#user .dele_info_img"); //账号清除图标
			this.passInput = $("#password .normal-input"); //密码输入框
			this.passIcon = $("#password .dele_info_img"); //密码清除图标
			this.loginBtn = $(".smt-o"); //登录按钮
			this.userFlag = false;
			this.passFlag = false;
		}

		/**
		 * 初始化函数
		 */
		init() {
			this.getHeader();
			this.getFooter();
			this.formVerification();
		}

		/**
		 * 获取公共部分header
		 */
		getHeader() {
			this.header.load("header.html");
		}

		/**
		 * 获取公共部分footer
		 */
		getFooter() {
			this.footer.load("footer.html");
		}

		/**
		 * 表单验证
		 */
		formVerification() {
			this.userFormVerification();
			this.passFormVerification();
            this.loginEvent();
            this.enterClickHandler();
			// this.ckClick();
		}

		/**
		 * 账号输入框验证
		 */
		userFormVerification() {
			let _this = this;
			this.userInput.on("input", function () {
				if ($(this).val() == "") {
					_this.userIcon.hide();
					_this.userFlag = false;
					_this.submitStatus();
				} else {
					_this.userIcon.show();
					_this.userFlag = true;
					_this.submitStatus();
				}
			});
			//点击清除图标，清空账号输入框
			this.userIcon.on("click", function () {
				_this.userInput.val("");
				$(this).hide();
			});
		}

		/**
		 * 密码输入框验证
		 */
		passFormVerification() {
			let _this = this;
			this.passInput.on("input", function () {
				if ($(this).val() == "") {
					_this.passIcon.hide();
					_this.passFlag = false;
					_this.submitStatus();
				} else {
					_this.passIcon.show();
					_this.passFlag = true;
					_this.submitStatus();
				}
			});
			//点击清除图标，清空密码输入框
			this.passIcon.on("click", function () {
				_this.passInput.val("");
				$(this).hide();
			});
		}

		/**
		 * 登录按钮的状态(可用和不可用)
		 */
		submitStatus() {
			if (this.userFlag && this.passFlag) {
				this.loginBtn.attr("disabled", false);
			} else {
				this.loginBtn.attr("disabled", true);
			}
		}

		/**
		 * 点击登录按钮的事件函数
		 * 发生ajax请求，将账号和密码发送到服务器
		 * 服务器返回true，代表验证成功，跳转到主页
		 * 服务器返回false,代表验证失败,提醒用户重新输入
		 */
		loginEvent() {
			let _this = this;
			this.loginBtn.on("click", function () {
				$.ajax({
					type: "post",
					url: "http://10.31.162.56/project-juanpi/php/login.php",
					data: {
						user: _this.userInput.val(),
						pass: _this.passInput.val(),
					},
				}).done(function (result) {
					if (result) {
						location.href = "index.html";
						localStorage.setItem("username", _this.userInput.val());
						// localStorage.setItem("password", _this.passInput.val());
					} else {
						alert("用户名或密码错误，请重新输入");
					}
				});
			});
		}

		/**
		 * 确认框点击事件
		 */
		// ckClick() {
		// 	$(".ck").on("click", () => {});
		// }

		/**
		 * 键盘enter事件
         * 点击enter实现登录按钮的点击功能
		 */
		enterClickHandler() {
            let _this = this;
			$(document).keyup(function (event) {
				if (event.keyCode == 13) {
					_this.loginBtn.click();
				}
			});
		}
	}

	let login = new Login();
	login.init();
})();
