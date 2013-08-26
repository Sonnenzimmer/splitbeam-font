module.exports = function (grunt) {

    // Project configuration to deploy the 
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),

        assemble: {
            options: {
                flatten: true,
                removeHbsWhitespace: true,
                partials: ['./build/doc/partials/*.hbs'],
                data: ['./build/Splitbeam-Regular.json'],
                ext: '.html'
            },

            // build the html for the testpage
            pages: {
                src: ['./build/doc/templates/*.hbs'],
                dest: 'deploy/'
            },

            // build the css for the font (to get the codepoints)
            css: {
                options: {
                    ext: '.css'
                },
                src: ['./build/doc/templates/css/*.hbs'],
                dest: 'deploy/css/'
            }

        },
    });

    grunt.loadNpmTasks('assemble');

    // Default task(s).
    grunt.registerTask('default', ['assemble']);

};