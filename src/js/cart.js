(function () {
	class Cart {
		constructor() {
			this.header = $("#header");
			this.footer = $("#footer");
			this.cart = $(".jgeReN");
			this.cookieSid = []; //存放商品sid
			this.cookieNum = []; //存放商品数量
			this.selectAllCheckbox = $(".select-all"); //全选框
		}

		/**
		 * 初始化函数
		 */
		init() {
			this.getHeader();
			this.getFooter();
			this.getCookie();
			this.getData();
			this.selectAllEvent();
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
		 * 获取cookie数据
		 * 将sid和num分别存入对应的数组中
		 */
		getCookie() {
			this.cookieSid = $.cookie("cookieSid").split(",");
			this.cookieNum = $.cookie("cookieNum").split(",");
		}

		/**
		 * 通过sid获取对应的数据
		 */
		getData() {
			let _this = this;
			$.each(this.cookieSid, function (index, value) {
				let _index = index;
				$.ajax({
					url: "http://10.31.162.56/project-juanpi/php/getsid.php",
					data: {
						sid: value,
					},
					dataType: "json",
				}).done(function (data) {
					let arr = [];
					arr.push(data);
					$.each(arr, function (index, value) {
						let str = `
                            <div class="list-info">
                                <div class="check">
                                    <input type="checkbox">
                                </div>
                                <div class="pic">
                                    <a href="#">
                                        <img width="100" height="100" src="${
											value.url
										}">
                                    </a>
                                </div>
                                <div class="list-style">
                                    <strong>${value.title}</strong>
                                </div>
                                <div class="price">
                                    ￥<span>${value.newprice}</span>
                                    /
                                    ￥<span>${value.oldprice}</span>
                                </div>
                                <div class="num">${
									_this.cookieNum[_index]
								}</div>
                                <div class="subtotal">${
									value.newprice * _this.cookieNum[_index]
								}</div>
                                <div class="operate">
                                    <span class="delete"></span>
                                </div>
                            </div>
                        `;
						_this.cart.append(str);
					});
				});
			});
		}

		/**
		 * 计算总价
		 */
		// calcPrice() {
		//     let sum = 0;//商品的件数
		//     let count = 0;//商品的总价
		// }

		/**
		 * 全选功能
		 */
		selectAllEvent() {
			let _this = this;
			$(".good-list").on("click", "input", function () {
				let totalPrice = 0; //商品总价
				let totalNum = 0; //商品总数
				let checkboxList = _this.cart.find(":checkbox"); //单选框集合
				//点击全选框发生的事件
				_this.selectAllCheckbox.on("change", function () {
					let status = _this.selectAllCheckbox.prop("checked"); //当前全选框的checked值
					checkboxList.prop("checked", status); //单选框列表的checked的值都设置为全选框的值
					if (status) {
						//全选框是选中状态,计算总价和总数量
						$.each(checkboxList, function (index, ele) {
							let price = parseInt(
								$(ele).parent().parent().children().eq(5).text()
							); //一件商品的总价
							let num = parseInt(
								$(ele).parent().parent().children().eq(4).text()
							); //一件商品购买数量
							totalPrice += price;
							totalNum += num;
						});
					}
					$(".total-price").text("￥" + totalPrice);
					$(".checked").text(totalNum);
				});
				//点击单个单选框发生的事件
				checkboxList.on("click", function (e) {
					let priceArr = [];
					let numArr = [];
					let checkLength = _this.cart.find("input:checked").length; //单选框选中的长度
					let length = checkboxList.length; //单选框总长度
					if (checkLength == length) {
						_this.selectAllCheckbox.prop("checked", true);
					} else {
						//全选状态
						_this.selectAllCheckbox.prop("checked", false);
					}
					$.each(checkboxList, function (index, ele) {
						if (this.checked) {//单选框选中状态
							let price = parseInt(
								$(ele).parent().parent().children().eq(5).text()
							); //一件商品的总价
							let num = parseInt(
								$(ele).parent().parent().children().eq(4).text()
							); //一件商品购买数量
							totalPrice += price;
							totalNum += num;
						}
					});
					$(".total-price").text("￥" + totalPrice);
					$(".checked").text(totalNum);
				});
			});
		}
	}

	let cart = new Cart();
	cart.init();
})();
