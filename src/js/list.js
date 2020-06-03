class List {
	constructor() {
        this.toolbar = $(".toolbar");
        this.header = $("#header");
		this.footer = $("#footer");
		this.brandList = $(".brand-list"); //商品列表部分
	}

	/**
	 * 初始化函数
	 */
	init() {
        this.getToolbar();
        this.getHeader();
		this.getFooter();
		this.renderGoodList();
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
	renderGoodList() {
		$.ajax({
			url: "http://10.31.162.56/project-juanpi/php/listdata.php",
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
}
