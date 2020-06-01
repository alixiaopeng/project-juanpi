class Index {
	constructor() {
		this.toolbar = $("#toolbar");
		this.banner = $(".banner-m");//轮播图区域
		this.bannerImg = $(".banner-list a img");//轮播图图片
		this.prevBtn = $(".arrow_prev");//左箭头
		this.nextBtn = $(".arrow_next");//右箭头
		this.round = $(".round");//小圆圈区域
		this.roundLi = $(".round li");//小圆圈列表
		this.currentIndex = 0;//轮播图索引
        this.rotationTimer = null;//轮播图定时器
        this.fixBanner = $('.fix-banner');//底部fix-banner
        this.close = $('.close');//底部fix-banner关闭按钮
		this.rotationArr = [
			"https://goods7.juancdn.com/bao/200529/d/6/5ed0d0fe33b08967721b0b92_700x360.png?iopcmd=convert&Q=88&dst=png",
			"https://goods7.juancdn.com/bao/200525/d/9/5ecb837933b08978384bd465_700x360.jpg?iopcmd=convert&Q=88&dst=jpg",
			"https://goods5.juancdn.com/bao/200528/9/6/5ecf676733b0896df0119bd5_700x360.jpg?iopcmd=convert&Q=88&dst=jpg",
			"https://goods5.juancdn.com/bao/200526/9/2/5ecccce4b6f8ea3974065d56_700x360.jpg?iopcmd=convert&Q=88&dst=jpg",
		];//存放轮播图图片地址
	}

	/**
	 * 初始化函数
	 */
	init() {
		this.getToolbar();
        this.createRotation();
        this.fixBannerHide();
	}

	/**
	 * 获取公共部分toolbar
	 */
	getToolbar() {
		this.toolbar.load("toolbar.html");
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
	fixBannerHide(){
        this.close.on('click',()=>{
            this.fixBanner.hide();
        })
    }
}
