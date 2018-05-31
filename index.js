exports.handler = function(event, context, callback) {
    return callback(null, {
        'body': 'Hello, World!'
    });
};
