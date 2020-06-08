const gulp = require("gulp"); //gulp对象
const css = require("gulp-clean-css"); //压缩css
const html = require("gulp-minify-html"); //压缩html
const script = require("gulp-uglify"); //压缩js
//sass
const sass = require("gulp-sass");
const plugins = require("gulp-load-plugins")();
const sourcemaps = require("gulp-sourcemaps");
//es6转es5
const babel = require("gulp-babel");
const babelcore = require("babel-core");
const es2015 = require("babel-preset-es2015");

//const imagemin = require("gulp-imagemin"); //压缩图片
const watch = require("gulp-watch"); //监听

//压缩图片
// gulp.task("uglifyimg", () => {
// 	return gulp
// 		.src("src/img/*.{jpg,png,gif}")
// 		.pipe(imagemin())
// 		.pipe(gulp.dest("dist/img"));
// });

// gulp.task('copyfile', () => {
//     return gulp.src('src/lib/*.js')
//         .pipe(gulp.dest('dist/lib'));
// });

gulp.task("copyfile", () => {
	return gulp.src("src/img/*.{jpg,png,gif}").pipe(gulp.dest("dist/img"));
});

//压缩html
gulp.task("uglifyhtml", () => {
	return gulp.src("src/*.html").pipe(html()).pipe(gulp.dest("dist/"));
});
//sass编译css
gulp.task("compilesass", () => {
	return gulp
		.src("src/sass/*.scss")
		.pipe(plugins.sourcemaps.init())
		.pipe(
			plugins.sass({
				outputStyle: "compressed",
			})
		)
		.pipe(plugins.sourcemaps.write("."))
		.pipe(gulp.dest("dist/css/"));
});

//压缩js
gulp.task("uglifyjs", () => {
	return gulp
		.src("src/js/*.js")
		.pipe(
			babel({
				presets: ["es2015"],
			})
		)
		.pipe(script())
		.pipe(gulp.dest("dist/js"));
});

//压缩css
gulp.task("uglifycss", () => {
	return gulp
		.src("src/css/*.css")
		.pipe(css()) //执行css插件包
		.pipe(gulp.dest("dist/css"));
});

//监听
// gulp.task('default',()=>{
//     watch(['src/*.html','src/sass/*.scss','src/script/*.js','src/img/*.{jpg,png,gif}'],gulp.parallel('uglifyhtml','compilesass','uglifyjs','uglifyimg'))
// })
gulp.task("default", () => {
	watch(
		["src/*.html", "src/sass/*.scss", "src/script/*.js", "src/css/*.css"],
		gulp.parallel("uglifyhtml", "compilesass", "uglifyjs", "uglifycss")
	);
});
