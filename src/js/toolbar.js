(function () {
	class Toolbar {
		constructor() {
			this.tipsHead = $(".tips"); //提示头
			this.tipsList = $(".list"); //下拉框
			this.localName = localStorage.getItem("username"); //本地存储用户名
			this.notLogin = $(".not-login"); //未登录状态
			this.logined = $(".logined"); //登录状态
			this.signOutBtn = $(".sign-out"); //退出按钮
		}

		/**
		 * 初始化函数
		 */
		init() {
			this.tipsListStatus();
			this.loginStatus();
			this.signOut();
		}

		/**
		 * 登录状态
		 */
		loginStatus() {
			if (this.localName) {
				this.logined.show();
				this.notLogin.hide();
				this.tipsHead.html("欢迎," + this.localName);
			} else {
				this.notLogin.show();
				this.logined.hide();
			}
		}

		/**
		 * 下拉框的显示与隐藏
		 */
		tipsListStatus() {
			this.tipsHead.on("mouseover", () => {
				this.tipsList.show();
			});

			this.tipsHead.on("mouseout", () => {
				this.tipsList.hide();
			});

			this.tipsList.on("mouseover", function () {
				$(this).show();
			});

			this.tipsList.on("mouseout", function () {
				$(this).hide();
			});
		}

		/**
		 * 退出登录状态
		 * 清除localStorage
		 * 页面刷新
		 */
		signOut() {
			this.signOutBtn.on("click", function (e) {
				if (window.confirm("您确定退出登录吗？")) {
					e.preventDefault();
					localStorage.removeItem("username");
					window.location.reload();
				}
			});
		}
	}

	let toolbar = new Toolbar();
	toolbar.init();
})();
