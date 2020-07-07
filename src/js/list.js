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
			this.defaultOrder = $(".default"); //默认排序按钮
			this.ascendOrder = $(".ascending-order"); //升序按钮
			this.dropOrder = $(".drop-order"); //降序按钮
			this.goodsList = []; //存放商品的数组
			this.sortMode = "default";
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
			this.sort();
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
				url: "http://127.0.0.1/project-juanpi/php/listdata.php",
				data: {
					page: page,
				},
				dataType: "json",
			}).done((data) => {
				if (this.sortMode == "ascendSort") {
					this.ascendSort(data);
				} else if (this.sortMode == "dropSort") {
					this.dropSort(data);
				}
				let str = "";
				for (var i = 0; i < data.length; i++) {
					str += `
                        <div class="goods">
                            <div class="goods-pic">
                                <a href="detail.html?sid=${data[i].sid}">
                                    <img class="lazy" src="./img/lazy.png" width="220" height="215" data-src="${data[i].url}" alt="${data[i].title}"/>
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
                this.lazyLoad();
			});
        }
        
        /**
		 * 懒加载
		 */
		lazyLoad() {
			$(window).on("scroll", function () {
				let lazyImg = $("img.lazy");
				$.each(lazyImg, function (index, img) {
					//index:当前图片索引,img:当前图片
					let imgTopValue = lazyImg.eq(index).offset().top; //图片top值
					let scrollTop = $(window).scrollTop(); //滚动条的top值
					let clientHeight = $(window).height(); //可视区的高度
					if (imgTopValue < scrollTop + clientHeight - 150) {
						//图片的top值<可视化高度+滚动条的top值
						lazyImg.eq(index).attr("src", $(img).attr("data-src"));
					}
				});
			});
		}

		/**
		 * 分页功能
		 */
		changePage() {
			let _this = this;
			$.each(this.pageBtn, function (index, value) {
				$(value).on("click", function () {
					_this.pageBtn
						.eq(index)
						.addClass("active")
						.siblings()
						.removeClass("active");
					_this.page = index + 1;
					_this.renderGoodList(_this.page);
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
				if (_this.page < 1) {
					_this.page = 1;
					alert("没有上一页了");
				}
				_this.pageBtn
					.eq(_this.page - 1)
					.addClass("active")
					.siblings()
					.removeClass("active");
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
				if (_this.page > _this.pageBtn.length) {
					_this.page = _this.pageBtn.length;
					alert("没有下一页了");
				}
				_this.pageBtn
					.eq(_this.page - 1)
					.addClass("active")
					.siblings()
					.removeClass("active");
				_this.renderGoodList(_this.page);
			});
		}

		/**
		 * 排序功能
		 */
		sort() {
            let _this = this;
			this.ascendOrder.click(() => {
				_this.sortMode = "ascendSort";
                _this.renderGoodList(_this.page);
                this.ascendOrder.addClass('sort-active').siblings().removeClass('sort-active');
			});
			this.dropOrder.click(() => {
				_this.sortMode = "dropSort";
                _this.renderGoodList(_this.page);
                this.dropOrder.addClass('sort-active').siblings().removeClass('sort-active');
			});
			this.defaultOrder.click(() => {
				_this.sortMode = "";
                _this.renderGoodList(_this.page);
                this.defaultOrder.addClass('sort-active').siblings().removeClass('sort-active');
			});
		}

		/**
		 * 升序
		 */
		ascendSort(arr) {
			let temp;
			for (let i = 0; i < arr.length; i++) {
				for (let j = 0; j < arr.length - i - 1; j++) {
					if (
						parseInt(arr[j].newprice) >
						parseInt(arr[j + 1].newprice)
					) {
						temp = arr[j];
						arr[j] = arr[j + 1];
						arr[j + 1] = temp;
					}
				}
			}
		}

		/**
		 * 降序
		 */
		dropSort(arr) {
			let temp;
			for (let i = 0; i < arr.length; i++) {
				for (let j = 0; j < arr.length - i - 1; j++) {
					if (
						parseInt(arr[j].newprice) <
						parseInt(arr[j + 1].newprice)
					) {
						temp = arr[j];
						arr[j] = arr[j + 1];
						arr[j + 1] = temp;
					}
				}
			}
		}
	}

	let list = new List();
	list.init();
})();
