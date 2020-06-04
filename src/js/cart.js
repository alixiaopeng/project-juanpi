(function () {
	class Cart {
		constructor() {
            this.toolbar = $("#toolbar");
            this.header = $("#header");
		}

		init() {
            this.getToolbar();
            this.getHeader();
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
	}

	let cart = new Cart();
	cart.init();
})();
