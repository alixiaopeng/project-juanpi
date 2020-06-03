class Register {
	constructor() {
		this.header = $("#header");
		this.footer = $("#footer");
		this.userInput = $("#user .normal-input"); //账号输入框
		this.userTips = $("#user .form-tips-info"); //账号提示文字
		this.userIcon = $("#user .form-tips-icon"); //账号提示图标
		this.passInput = $("#password .normal-input"); //密码输入框
		this.passTips = $("#password .form-tips-info"); //密码提示文字
		this.passIcon = $("#password .form-tips-icon"); //密码提示图标
		this.confirmInput = $("#confirm-pw .normal-input"); //确认密码输入框
		this.confirmTips = $("#confirm-pw .form-tips-info"); //确认密码提示文字
		this.confirmIcon = $("#confirm-pw .form-tips-icon"); //确认密码提示图标
		this.userFlag = false;
		this.passFlag = false;
		this.confirmFlag = false;
		this.formSubmitBtn = $(".smt-o"); //提交按钮
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
		this.confirmFormVerification();
		this.ckClick();
	}

	/**
	 * 账号输入框验证
	 */
	userFormVerification() {
		let _this = this;
		this.userInput.on("focus", function () {
			_this.userTips.show();
		});
		this.userInput.on("blur", function () {
			//输入框为空时
			if ($(this).val() == "") {
				_this.userIcon.show();
				_this.userTips.text("请输入账号");
				_this.userTips.css("color", "red");
				$(this).css("borderColor", "red");
				_this.userFlag = false;
				_this.submitStatus();
			} else {
				$.ajax({
					type: "post",
					url: "http://10.31.162.56/project-juanpi/php/registry.php",
					data: {
						username: $(this).val(),
					},
				}).done(function (result) {
					if (!result) {
						//账号不存在,可以注册
						_this.userIcon.show();
						_this.userIcon.css("backgroundPosition", "-40px -19px");
						_this.userTips.text("");
						_this.userInput.css("borderColor", "black");
						_this.userFlag = true;
						_this.submitStatus();
					} else {
						//账号已存在,提示用户不能注册
						_this.userIcon.show();
						_this.userIcon.css("backgroundPosition", "0px -19px");
						_this.userTips.text("该账号已存在，请重新输入");
						_this.userTips.css("color", "red");
						_this.userInput.css("borderColor", "red");
						_this.userFlag = false;
						_this.submitStatus();
					}
				});
			}
		});
	}

	/**
	 * 密码输入框验证
	 */
	passFormVerification() {
		let _this = this;
		this.passInput.on("focus", function () {
			_this.passTips.show();
		});
		this.passInput.on("blur", function () {
			if ($(this).val() == "") {
				_this.passIcon.show();
				_this.passIcon.css("backgroundPosition", "0px -19px");
				_this.passTips.text("请输入密码");
				_this.passTips.css("color", "red");
				$(this).css("borderColor", "red");
				_this.passFlag = false;
				_this.submitStatus();
			} else {
				_this.passIcon.show();
				_this.passTips.text("");
				_this.passIcon.css("backgroundPosition", "-40px -19px");
				$(this).css("borderColor", "black");
				_this.passFlag = true;
				_this.submitStatus();
			}
		});
	}

	/**
	 * 确认密码输入框验证
	 */
	confirmFormVerification() {
		let _this = this;
		this.confirmInput.on("focus", function () {
			_this.confirmTips.show();
		});
		this.confirmInput.on("blur", function () {
			if ($(this).val() == "") {
				_this.confirmIcon.show();
				_this.confirmIcon.css("backgroundPosition", "0px -19px");
				_this.confirmTips.text("请再次输入密码");
				_this.confirmTips.css("color", "red");
				$(this).css("borderColor", "red");
				_this.confirmFlag = false;
				_this.submitStatus();
			} else if ($(this).val() == _this.passInput.val()) {
				_this.confirmIcon.show();
				_this.confirmTips.text("");
				_this.confirmIcon.css("backgroundPosition", "-40px -19px");
				$(this).css("borderColor", "black");
				_this.confirmFlag = true;
				_this.submitStatus();
			} else {
				_this.confirmIcon.show();
				_this.confirmIcon.css("backgroundPosition", "0px -19px");
				_this.confirmTips.text("密码不一致");
				_this.confirmTips.css("color", "red");
				$(this).css("borderColor", "red");
				_this.confirmFlag = false;
				_this.submitStatus();
			}
		});
	}

	/**
	 * 提交按钮的状态(可用和不可用)
	 */
	submitStatus() {
        console.log(1)
		let ckValue = $(".ck").prop("checked");
		if (this.userFlag && this.passFlag && this.confirmFlag && ckValue) {
			this.formSubmitBtn.attr("disabled", false);
		} else {
			this.formSubmitBtn.attr("disabled", true);
		}
	}

	/**
	 * 确认框点击事件
	 */
	ckClick() {
		$(".ck").on("click", () => {
			this.submitStatus();
		});
	}
}
