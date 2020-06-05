(function () {
	class Cart {
		constructor() {
			this.header = $("#header");
			this.footer = $("#footer");
			this.cart = $(".jgeReN");
			this.cookieSid = [];//存放商品sid
			this.cookieNum = [];//存放商品数量
		}

		init() {
			this.getHeader();
			this.getFooter();
			this.getCookie();
            this.getData();
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
                    $.each(arr,function(index,value){
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
                                <div class="num">${_this.cookieNum[_index]}</div>
                                <div class="subtotal">
                                    ￥<span>${
                                        value.newprice *
                                        _this.cookieNum[_index]
                                    }</span>
                                </div>
                                <div class="operate">
                                    <span class="delete"></span>
                                </div>
                            </div>
                        `;
                        _this.cart.append(str)
                    })
                });
            });
		}
	}

	let cart = new Cart();
	cart.init();
})();
