class List{
    constructor(){
        this.toolbar = $(".toolbar");
        this.footer = $("#footer");
    }

    /**
	 * 初始化函数
	 */
    init(){
        this.getToolbar();
        this.getFooter();
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
}