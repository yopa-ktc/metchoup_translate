
  /* Le lien de production*/ let base = 'https://translate.metchoup.com/api/';
///* Le lien de test en local*/ let base = 'http://localhost/api/';

module.exports = {
    CONFIGURATION : {
        URL_ADD_SUGGESTION : base + 'suggestion',
        URL_GET_EXPRESSION : base + 'getExpressions',
        URL_GET_LANGUAGES : base + 'allLanguages',
        URL_UPLOAD : base + 'uploadExpressionSon'
    }
}