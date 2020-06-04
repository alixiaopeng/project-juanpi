(function () {
	class Cart {
		constructor() {
            this.toolbar = $("#toolbar");
            this.header = $("#header");
            this.footer = $("#footer");
		}

		init() {
            this.getToolbar();
            this.getHeader();
            this.getFooter();
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
	}

	let cart = new Cart();
	cart.init();
})();
