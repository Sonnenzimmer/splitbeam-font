
module.exports = function(grunt) {

  // Project configuration to deploy the 
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

  	assemble: {
  	  options: {
  		flatten: true,
  		removeHbsWhitespace: true,
  		partials: ['./source/doc/partials/*.hbs'],
  		data: ['./build/SplitBean-Regular.json'],
  		ext: '.html'
  	  },

      // build the html for the testpage
  	  pages: {
    		src: ['./source/doc/templates/*.hbs'],
    		dest: 'deploy/'
  	  },

      // build the css for the font (to get the codepoints)
      css: {
        options: { ext: '.css' },
        src: ['./source/doc/templates/css/*.hbs'],
        dest: 'deploy/css/'
      }

  	},
  });

  grunt.loadNpmTasks('assemble');

  // Default task(s).
  grunt.registerTask('default', ['assemble']);

};