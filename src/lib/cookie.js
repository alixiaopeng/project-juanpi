let cookie = {
    set: function (name, value, days) {
        let d = new Date();
        d.setDate(d.getDate() + days)
        document.cookie = `${name}=${encodeURIComponent(value)};expires=${d};path=/`;
    },
    get: function (name) {
        let arr = decodeURIComponent(document.cookie).split('; ');
        for (let i = 0; i < arr.length; i++) {
            let newarr = arr[i].split('=');
            if (name === newarr[0]) {
                return newarr[1];
            }
        }
    },
    unset: function (name) {
        this.set(name, '', -1)
    }
}