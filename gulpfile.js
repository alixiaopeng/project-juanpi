/* 
gulp.task(taskname,callback):创建任务  taskname任务名称  callback执行的回调
gulp.src(url):设置引入文件的路径
gulp.dest():输出文件设置(如果不存在目录名，自动生成)
pipe():管道流(将任务链式连接起来)
gulp 任务名   -- 执行任务
*/

const gulp = require('gulp'); //引入gulp，生成一个gulp对象
const html = require('gulp-minify-html'); //引入html压缩插件  html函数方法
const css = require('gulp-clean-css'); //引入css压缩插件  css函数方法
// const sass = require('gulp-sass'); //引入sass编译插件 

//sass
const sourcemaps = require('gulp-sourcemaps'); //引入生成.map文件模块
const plugins = require('gulp-load-plugins')(); //生成.map文件 返回的是一个函数体。需要再次执行。
const script = require('gulp-uglify'); //压缩js的插件


// //es6转es5的三个模块
// //gulp-babel@7   babel-core       babel-preset-es2015
const babel = require('gulp-babel'); //主要
const babelcore = require('babel-core');
const es2015 = require('babel-preset-es2015');



//1.创建一个简单的gulp任务
gulp.task('hello', () => {
    console.log('hello,gulp');
});

//2.复制文件
gulp.task('copyfile', () => {
    return gulp.src('src/thirdplugins/*.js')
        .pipe(gulp.dest('dist/thirdplugins'));
});

//3.压缩html文件 - 引入插件包
gulp.task('uglifyhtml', () => {
    return gulp.src('src/*.html')
        .pipe(html()) //执行html插件包
        .pipe(gulp.dest('dist/'));
});

//4.压缩css文件 - 引入插件包
gulp.task('uglifycss', () => {
    return gulp.src('src/css/*.css')
        .pipe(css()) //执行css插件包
        .pipe(gulp.dest('dist/css'));
});

//5.sass编译成css - 引入插件包
// gulp.task('compilesass', () => {
    // return gulp.src('src/sass/*.scss')
        // .pipe(plugins.sourcemaps.init()) //初始化gulp-sourcemaps插件
        // .pipe(plugins.sass({
            // outputStyle: 'compressed' //压缩
        // }))
        // .pipe(plugins.sourcemaps.write('.')) //通过sourcemaps,生成.map文件
        // .pipe(gulp.dest('dist/css/'));
// });


//6.压缩js文件 - 引入插件包
gulp.task('uglifyjs', () => {
    return gulp.src('src/js/*.js')
        .pipe(babel({ //先将es6转换成es5
            presets: ['es2015'] //es2015->es6  es2016->es7...
        }))
        .pipe(script()) //执行js压缩
        .pipe(gulp.dest('dist/js'));
});