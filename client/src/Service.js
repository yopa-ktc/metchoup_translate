import axios from 'axios';
import {CONFIGURATION} from './config';

export default class Service {

    // getToken(){
    //     var userToken;
    //     var user = firebase.auth().currentUser;
    //         if (user){
    //             userToken=user.ya;
    //             axios.defaults.headers.common['Authorization'] = userToken;
    //         }else{
    //         userToken=false;
    //         }
    //     return userToken;
    // }

    async postSuggestion(suggestion, son){

        try {
            const url = CONFIGURATION.URL_ADD_SUGGESTION;
            const suggestionInfo = new FormData();
                suggestionInfo.append("langue_arrive",suggestion.langue_arrive);
                suggestionInfo.append("expression_arrive",suggestion.expression_arrive);
                suggestionInfo.append("langue_depart", suggestion.langue_depart);
                suggestionInfo.append("expression_depart", suggestion.expression_depart);
                suggestionInfo.append("email", suggestion.email);
                suggestionInfo.append("expression_audio", son);

            return await axios.post(url, suggestionInfo);
        } catch (error) {
            console.log(error)
        }
    }

    async getAllLanguages(){
        const url = CONFIGURATION.URL_GET_LANGUAGES;
        // console.log("je cherche toutes les langues !")
        return await axios.get(url);
        // console.log(all)

    }

    async getExpression(language){
        const url = CONFIGURATION.URL_GET_EXPRESSION+'/'+language;
        return await axios.get(url);
    }

}