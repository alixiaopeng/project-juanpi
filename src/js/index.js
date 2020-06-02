class Index {
	constructor() {
		this.toolbar = $("#toolbar");
		this.footer = $("#footer");
		this.suspen = $("#suspen"); //顶部悬浮部分
		this.banner = $(".banner-m"); //轮播图区域
		this.bannerImg = $(".banner-list a img"); //轮播图图片
		this.prevBtn = $(".arrow_prev"); //左箭头
		this.nextBtn = $(".arrow_next"); //右箭头
		this.round = $(".round"); //小圆圈区域
		this.roundLi = $(".round li"); //小圆圈列表
		this.currentIndex = 0; //轮播图索引
		this.rotationTimer = null; //轮播图定时器
		this.fixBanner = $(".fix-banner"); //底部fix-banner
		this.close = $(".close"); //底部fix-banner关闭按钮
		this.stairNav = $(".stair-nav"); // 楼梯导航栏
		this.topBtn = $(".top"); //底部按钮
		this.floor = $(".content .today"); // 列表主体部分(楼层)
		this.floorLi = $(".stair-list li"); // 楼梯导航栏列表
		this.rotationArr = [
			"https://goods7.juancdn.com/bao/200529/d/6/5ed0d0fe33b08967721b0b92_700x360.png?iopcmd=convert&Q=88&dst=png",
			"https://goods7.juancdn.com/bao/200525/d/9/5ecb837933b08978384bd465_700x360.jpg?iopcmd=convert&Q=88&dst=jpg",
			"https://goods5.juancdn.com/bao/200528/9/6/5ecf676733b0896df0119bd5_700x360.jpg?iopcmd=convert&Q=88&dst=jpg",
			"https://goods5.juancdn.com/bao/200526/9/2/5ecccce4b6f8ea3974065d56_700x360.jpg?iopcmd=convert&Q=88&dst=jpg",
		]; //存放轮播图图片地址
		// 商品列表部分
		this.hotList = $("#today-hot");//今日热卖部分
		this.cutList = $("#today-cut");//今日折扣部分
		this.brandList = $("#today-brand");//今日品牌
		this.newList = $("#today-new");//今日新品
	}

	/**
	 * 初始化函数
	 */
	init() {
		this.getToolbar();
		this.getFooter();
		this.getSuspension();
		this.createRotation();
		this.fixBannerHide();
		this.stairEffect();
		this.ListRender();
	}

	/**
	 * 获取公共部分toolbar
	 */
	getToolbar() {
		this.toolbar.load("toolbar.html");
	}

	/**
	 * 获取公共部分footer
	 */
	getFooter() {
		this.footer.load("footer.html");
	}

	/**
	 * 获取公共部分顶部悬浮
	 */
	getSuspension() {
		this.suspen.load("suspension.html");
	}

	/**
	 * 轮播图
	 */
	createRotation() {
		this.roundLiClick();
		this.nextBtnClick();
		this.prevBtnClick();
		this.autoPlay();
		this.bannerEvent();
	}

	/**
	 * 点击小圆圈切换图片
	 */
	roundLiClick() {
		let _this = this;
		this.round.on("click", "li", function () {
			_this.currentIndex = $(this).index();
			$(this).addClass("current").siblings().removeClass("current");
			_this.bannerImg.attr("src", _this.rotationArr[_this.currentIndex]);
		});
	}

	/**
	 * 点击右箭头
	 * 将当前索引值加1
	 * 改变banner图片的src
	 * 改变小圆圈的class
	 */
	nextBtnClick() {
		let _this = this;
		this.nextBtn.on("click", function () {
			_this.currentIndex++;
			if (_this.currentIndex > _this.rotationArr.length - 1) {
				_this.currentIndex = 0;
			}
			_this.bannerImg.attr("src", _this.rotationArr[_this.currentIndex]);
			_this.roundLi
				.eq(_this.currentIndex)
				.addClass("current")
				.siblings()
				.removeClass("current");
		});
	}

	/**
	 * 点击左箭头
	 * 将当前索引值减1
	 * 改变banner图片的src
	 * 改变小圆圈的class
	 */
	prevBtnClick() {
		let _this = this;
		this.prevBtn.on("click", function () {
			_this.currentIndex--;
			if (_this.currentIndex < 0) {
				_this.currentIndex = _this.rotationArr.length - 1;
			}
			_this.bannerImg.attr("src", _this.rotationArr[_this.currentIndex]);
			_this.roundLi
				.eq(_this.currentIndex)
				.addClass("current")
				.siblings()
				.removeClass("current");
		});
	}

	/**
	 * 轮播图自动播放
	 */
	autoPlay() {
		this.rotationTimer = setInterval(() => {
			this.nextBtn.click();
		}, 5000);
	}

	/**
	 * banner移入移出事件
	 * 参数1：移入事件
	 * 移入清除定时器
	 * 参数2：移出事件
	 * 移出重新开计时器
	 */
	bannerEvent() {
		this.banner.hover(
			() => {
				clearInterval(this.rotationTimer);
			},
			() => {
				this.rotationTimer = setInterval(() => {
					this.nextBtn.click();
				}, 5000);
			}
		);
	}

	/**
	 * 隐藏底部fix-banner部分
	 */
	fixBannerHide() {
		this.close.on("click", () => {
			this.fixBanner.hide();
		});
	}

	/**
	 * 楼梯部分功能
	 */
	stairEffect() {
		this.reachTop();
		this.scrollEffect();
		this.reachFloor();
	}

	/**
	 * 鼠标滚轮事件
	 * 楼梯的显示与隐藏
	 * 当滚轮的垂直距离大于等于300时，楼梯导航栏显示
	 * 当进入对应的主体部分(楼层),楼梯导航栏显示对应的li
	 */
	scrollEffect() {
		$(window).on("scroll", () => {
			let _this = this;
			let top = $(window).scrollTop();
			top >= 300 ? this.stairNav.show() : this.stairNav.hide();
			this.floor.each(function (index) {
				let floorTop = $(this).offset().top;
				if (floorTop > top) {
					_this.floorLi.removeClass("stair-current");
					_this.floorLi.eq(index).addClass("stair-current");
					return false;
				}
			});
		});
	}

	/**
	 * 点击顶部按钮，到达页面顶部
	 */
	reachTop() {
		this.topBtn.on("click", function () {
			$("html,body").animate({
				scrollTop: 0,
			});
		});
	}

	/**
	 * 点击楼梯导航栏，到达对应的主体部分(楼层)
	 */
	reachFloor() {
		let _this = this;
		this.floorLi.not(".top").on("click", function () {
			console.log($(this).index());
			let Top = _this.floor.eq($(this).index()).offset().top;
			$(this)
				.addClass("stair-current")
				.siblings()
				.removeClass("stair-current");
			$("html,body").animate({
				scrollTop: Top,
			});
		});
	}

    /**
	 * 商品列表渲染
	 */
	ListRender() {
		$.get('http://10.31.162.56/project-juanpi/php/index-list.php', (data) => {
			let hotListData = JSON.parse(data);
			let str = "";
			for (let i = 0; i < hotListData.length; i++) {
				let tmpStr = `
                    <li>
                        <div class="good-pic">
                            <a href="#">
                                <img
                                    src="${hotListData[i].url}"
                                    alt="${hotListData[i].title}"
                                />
                            </a>
                        </div>
                        <div class="good-price">
                            <span class="price-current">
                                <em>￥</em>${hotListData[i].newprice}
                            </span>
                            <span class="des-other">
                                <span class="price-old">
                                    <em>￥</em>${hotListData[i].oldprice}
                                </span>
                            </span>
                        </div>
                        <div class="good-title">
                            <a href="#">${hotListData[i].title}</a>
                            <span class="sold">上新</span>
                        </div>
                    </li>
                `;
				str += tmpStr;
			}
			this.hotList.html(str);
			this.cutList.html(str);
			this.brandList.html(str);
			this.newList.html(str);
		});
	}
}
