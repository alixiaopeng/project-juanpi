(function () {
	class List {
		constructor() {
			this.toolbar = $(".toolbar");
			this.header = $("#header");
			this.footer = $("#footer");
			this.brandList = $(".brand-list"); //商品列表部分
			this.signOutBtn = $(".sign-out"); //退出按钮
			this.page = 1; //当前页数
			this.pageBtn = $(".page a").not(".prev").not(".next"); //页数列表
			this.prevBtn = $(".prev"); //上一页
			this.nextBtn = $(".next"); //下一页
		}

		/**
		 * 初始化函数
		 */
		init() {
			this.getToolbar();
			this.getHeader();
			this.getFooter();
			this.renderGoodList(1);
			this.changePage();
            this.prevPage();
            this.nextPage();
		}

		/**
		 * 获取公共部分toolbar
		 */
		getToolbar() {
			this.toolbar.load("toolbar.html");
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
		 * 渲染商品列表
		 */
		renderGoodList(page) {
			$.ajax({
				url: "http://10.31.162.56/project-juanpi/php/listdata.php",
				data: {
					page: page,
				},
				dataType: "json",
			}).done((data) => {
				let str = "";
				for (var i = 0; i < data.length; i++) {
					str += `
                        <div class="goods">
                            <div class="goods-pic">
                                <a href="detail.html">
                                    <img src="${data[i].url}" alt="${data[i].title}"/>
                                </a>
                            </div>
                            <div class="good-price">
                                <span class="price-current"><em>￥</em>${data[i].newprice}</span>
                                <span class="des-other">
                                    <span class="price-old"><em>￥</em>${data[i].oldprice}</span></span
                                >
                            </div>
                            <div class="good-title">
                                <span class="title-info">${data[i].title}</span>
                                <span class="title-time">剩3天</span>
                            </div>
                        </div>
                    `;
				}
				this.brandList.html(str);
			});
		}

		/**
		 * 分页功能
		 */
		changePage() {
			let _this = this;
			$.each(this.pageBtn, function (index, value) {
				$(value).on("click", function () {
					_this.page = index + 1;
                    _this.renderGoodList(_this.page);
                    console.log(_this.page)
				});
			});
		}

		/**
		 * 上一页功能
		 */
		prevPage() {
			let _this = this;
			this.prevBtn.on("click", function () {
                _this.page--;
				if ((_this.page < 1)) {
					_this.page = 1;
					alert("没有上一页了");
				}
				_this.renderGoodList(_this.page);
			});
		}

		/**
		 * 下一页功能
		 */
		nextPage() {
			let _this = this;
			this.nextBtn.on("click", function () {
                _this.page++;
                console.log(_this.page);
				if ((_this.page > _this.pageBtn.length)) {
					_this.page = _this.pageBtn.length;
					alert("没有下一页了");
				}
				_this.renderGoodList(_this.page);
			});
		}
	}

	let list = new List();
	list.init();
})();
