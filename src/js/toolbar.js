(function () {
	class Toolbar {
		constructor() {
			this.tipsHead = $(".tips"); //提示头
			this.tipsList = $(".list"); //下拉框
			this.localName = localStorage.getItem("username"); //本地存储用户名
			this.notLogin = $(".not-login"); //未登录状态
			this.logined = $(".logined"); //登录状态
			this.signOutBtn = $(".sign-out"); //退出按钮
			this.goodNum = $(".goods-num"); //商品数量
            this.cookieNum = []; //cookie中存放商品数量的数组
            this.cartBtn = $('.shopping-cart>a');//进入购物车按钮
		}

		/**
		 * 初始化函数
		 */
		init() {
			this.tipsListStatus();
			this.loginStatus();
			this.signOut();
            this.calgoodsNum();
            this.cartBtnClickHandler();
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

		/**
		 * 计算商品数量，显示在购物车中
		 */
		calgoodsNum() {
			if (this.localName) {
				//登录状态
				let sum = 0;
				this.cookieNum = this.getCookie("cookieNum").split(",");
				for (let i = 0; i < this.cookieNum.length; i++) {
					sum += parseInt(this.cookieNum[i]);
				}
				this.goodNum.html("(" + sum + ")");
			}
		}

		/**
		 * 获取本地cookie
		 */
		getCookie(cookiename) {
			let arr = decodeURIComponent(document.cookie).split("; ");
			for (let i = 0; i < arr.length; i++) {
				let newarr = arr[i].split("=");
				if (cookiename === newarr[0]) {
					return newarr[1];
				}
			}
        }
        
        /**
		 * 购物车按钮点击事件
         * 判断当前是否登录
         * 如果是登录则跳转到购物车页面，否则提醒用户登录并跳转到登录页面
		 */
        cartBtnClickHandler(){
            this.cartBtn.on('click',(e)=>{
                if (!this.localName) {//非登录状态
                    e.preventDefault();//阻止跳转到购物车页面
                    alert("请您先登录");
                    window.location.href="login.html";
                }
            })
        }
	}

	let toolbar = new Toolbar();
	toolbar.init();
})();
