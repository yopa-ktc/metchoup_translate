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

    async postSuggestion(suggestion){

        try {
            const url = CONFIGURATION.URL_ADD_SUGGESTION;
            let suggestionInfo = {
                langue_arrive : suggestion.langue_arrive,
                expression_arrive : suggestion.expression_arrive,
                langue_depart : suggestion.langue_depart,
                expression_depart : suggestion.expression_depart,
                email : suggestion.email
            };
            return await axios.post(url, suggestionInfo);
        } catch (error) {
            console.log(error)
        }
        
    }

    async getExpression(language){
        const url = CONFIGURATION.URL_GET_EXPRESSION + '/'+ language;
        return await axios.get(url);
    }

}