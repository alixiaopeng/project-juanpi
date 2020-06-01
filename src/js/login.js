class Login{
    constructor(){
        this.header = $('#header');
        this.footer = $('#footer');
    }

    /**
	 * 初始化函数
	 */
    init(){
        this.getHeader();
        this.getFooter();
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
}