class Detail {
	constructor() {
		this.toolbar = $(".toolbar");
		this.header = $("#header");
		this.footer = $("#footer");
		this.goodInfo = $(".good-info"); //整个放大镜部分
		this.spic = $("#pic"); //小图部分
		this.spicImg = $("#pic img"); //小图部分
		this.sf = $("#sf"); //浅黄部分
		this.bf = $("#bf"); //大图部分
		this.sfImg = $("#pic img");
		this.bfImg = $("#bf img"); //大图部分的图片
		this.proportion = this.bf.width() / this.spic.width();
		this.left = $("#left"); //左箭头
		this.right = $("#right"); //右箭头
		this.num = 6;
		this.reduceBtn = $(".reduce"); //-按钮
		this.addBtn = $(".add"); //+按钮
		this.inp = $(".inp"); //数量输入框
		this.step = 1;
		this.sid = location.search.substring(1).split("=")[1]; //获取图片sid
		this.dealWrapTitle = $(".deal-wrap h1"); //商品标题
		this.addCartBtn = $(".add-good"); //加入购物车按钮
		this.arrSid = []; //存储商品的编号sid
		this.arrNum = []; //存储商品的数量
	}

	/**
	 * 初始化函数
	 */
	init() {
		this.getToolbar();
		this.getHeader();
		this.getFooter();
		this.spicHover();
		this.changeImg();
		this.rightBtnClick();
		this.leftBtnClick();
		this.changNum();
        this.getImg();
        this.addToCart();
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
	 * 通过sid获取图片
	 */
	getImg() {
		if (!this.sid) this.sid = 1;
		let _this = this;
		$.ajax({
			url: "http://127.0.0.1/project-juanpi/php/getsid.php",
			data: {
				sid: this.sid,
			},
			dataType: "json",
		}).done(function (data) {
			_this.spicImg.attr("src", data.url);
			_this.spicImg.attr("alt", data.title);
			_this.bfImg.attr("src", data.url);
			_this.bfImg.attr("alt", data.title);
			_this.dealWrapTitle.text(data.title);
		});
	}

	/**
	 * 小图的hover事件
	 * 参数一：鼠标移入事件
	 * 鼠标移入,浅黄部分和大图部分显示
	 * 参数二：鼠标移出事件
	 * 鼠标移出,浅黄部分和大图部分隐藏
	 */
	spicHover() {
		let _this = this;
		this.spic.hover(
			function () {
				_this.sf.show();
				_this.bf.show();
				$(this).on("mousemove", function (ev) {
					let leftValue =
						ev.pageX -
						_this.spic.offset().left -
						_this.sf.width() / 2;
					let topValue =
						ev.pageY -
						_this.spic.offset().top -
						_this.sf.height() / 2;
					if (leftValue < 0) {
						leftValue = 0;
					} else if (leftValue >= 200) {
						//leftValue最大值为200
						leftValue = 200;
					}
					if (topValue < 0) {
						topValue = 0;
					} else if (
						topValue >=
						_this.spic.height() - _this.sf.height()
					) {
						topValue = _this.spic.height() - _this.sf.height();
					}
					_this.sf.css({
						left: leftValue,
						top: topValue,
					});

					_this.bfImg.css({
						left: -leftValue * _this.proportion,
						top: -topValue * _this.proportion,
					});
				});
			},
			function () {
				_this.sf.hide();
				_this.bf.hide();
			}
		);
	}

	/**
	 * 点击图片列表
	 * 小图部分和大图部分的图片都会修改对应点击的图片
	 */
	changeImg() {
		let _this = this;
		$("#list ul").on("click", "li", function () {
			let imgUrl = $(this).find("img").attr("src");
			_this.sfImg.attr("src", imgUrl);
			_this.bfImg.attr("src", imgUrl);
		});
	}

	/**
	 * 点击右箭头
	 * 列表图片向右切换
	 */
	rightBtnClick() {
		this.right.on("click", () => {
			let lists = $("#list ul li");
			if (lists.size() > this.num) {
				this.num++;
				$("#list ul").animate({
					left: -(this.num - 6) * lists.eq(0).outerWidth(true),
				});
			}
		});
	}

	/**
	 * 点击左箭头
	 * 列表图片向左切换
	 */
	leftBtnClick() {
		this.left.on("click", () => {
			let lists = $("#list ul li");
			if (this.num > 6) {
				this.num--;
				$("#list ul").animate({
					left: -(this.num - 6) * lists.eq(0).outerWidth(true),
				});
			}
		});
	}

	/**
	 * 改变商品数量
	 */
	changNum() {
		this.reduceBtnClick();
		this.addBtnClick();
	}

	/**
	 * 点击-按钮
	 * 商品数量减1
	 */
	reduceBtnClick() {
		this.reduceBtn.on("click", () => {
			let value = this.inp.val();
			value--;
			if (value < 0) value = 0;
			this.inp.val(value);
		});
	}

	/**
	 * 点击+按钮
	 * 商品数量加1
	 */
	addBtnClick() {
		this.addBtn.on("click", () => {
			let value = this.inp.val();
			value++;
			if (value > 99) value = 99;
			this.inp.val(value);
		});
	}

	/**
	 * 判断是第几次点击(cookie是否存在)
	 */
	confirmCookie() {
		if (cookie.get("cookieSid") && cookie.get("cookieNum")) {
			this.arrSid = cookie.get("cookieSid").split(","); //获取cookie 同时转换成数组。[1,2,3,4]
			this.arrNum = cookie.get("cookieNum").split(","); //获取cookie 同时转换成数组。[12,13,14,15]
		} else {
			this.arrSid = [];
			this.arrNum = [];
		}
	}

	/**
	 * 加入购物车
	 */
	addToCart() {
        let _this = this;
		this.addCartBtn.on("click", function () {
            _this.confirmCookie();
            if ($.inArray(_this.sid, _this.arrSid) != -1) { //sid存在，商品列表存在，数量累加
                //先取出cookie中存在的数量+当前添加的数量，一起添加到cookie中
                let num = parseInt(_this.arrNum[$.inArray(_this.sid, _this.arrSid)]) + parseInt(_this.inp.val());
                _this.arrNum[$.inArray(_this.sid, _this.arrSid)] = num;
                cookie.set('cookieNum', _this.arrNum, 10);
            } else {
                //第一次点击加入购物车按钮,将商品的sid和商品的数量放到提前准备的数组里面，然后将数组传入cookie.
                _this.arrSid.push(_this.sid); //将sid放到arrSid数组中
                cookie.set('cookieSid', _this.arrSid, 10);
                _this.arrNum.push(_this.inp.val()); //将数量放到到arrNum数组中
                cookie.set('cookieNum', _this.arrNum, 10);
            }
            alert('加入购物车成功');
        });
	}
}
