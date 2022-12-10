
function rc4(key, str) {
    var s = [], j = 0, x, res = '';
    for (var i = 0; i < 4; i++) {
        s[i] = i;
        console.log(s)
    }
    for (i = 0; i < 4; i++) {
        j = (j + s[i] + key.charCodeAt(i % key.length)) % 4;
        x = s[i];
        s[i] = s[j];
        s[j] = x;
        console.log(i)
        console.log(j)
        console.log(s)
    }
    i = 0;
    j = 0;
    for (var y = 0; y < str.length; y++) {

        i = (i + 1) % 4;
        j = (j + s[i]) % 4;
        x = s[i];
        s[i] = s[j];
        s[j] = x;
        console.log(i)
        console.log(j)
        console.log(s)
        res += String.fromCharCode(str.charCodeAt(y) ^ s[(s[i] + s[j]) % 4]);
    }
    return res;
}
