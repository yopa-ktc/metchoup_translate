// import logo from './logo.svg';
import React, { Component } from 'react';
// import {Link} from 'react-router-dom';
import Select from 'react-select';
// import AsyncSelect from 'react-select/async';
import './App.css';
import Service from  './Service';

export default class App extends Component{

  constructor(props){
    super(props);
    this.setTranslation = this.setTranslation.bind(this);
    this.handleSubmitDoc = this.handleSubmitDoc.bind(this);
    this.handlerChangeFile = this.handlerChangeFile.bind(this);
    this.handlerChange = this.handlerChange.bind(this);
    this.handlerSelectSrcLanguage = this.handlerSelectSrcLanguage.bind(this);
    this.handlerSelectTrsLanguage = this.handlerSelectTrsLanguage.bind(this);
    this.customTheme = this.customTheme.bind(this);
    this.cleanArea = this.cleanArea.bind(this);

    this.state = {
      listLanguage : [],
      srcLanguage : "french",
      trsLanguage : "",
      audioTrsLanguage : "",
      showExpressions : false,
      listExpression : [],
      listTranslation : [],
      textSrc: "",
      textTrs: "",

      suggestion : {
        langue_arrive : "",
        expression_arrive : "",
        langue_depart : "",
        expression_depart : "",
        expression_son : "",
        email : ""
      },

      confirmationSuggestion : undefined,
      spinner : "visually-hidden"
    };

    this.Service = new Service();
  }

  async componentDidMount(){

    //Get all the languages
    const allLanguages = await this.Service.getAllLanguages();
    //console.log(allLanguages)

    //Trouver la liste des expressions de la langue choisie
    const reponse = await this.Service.getExpression(this.state.srcLanguage);
    let suggestion =  {
      langue_arrive : "",
      expression_arrive : "",
      langue_depart : "",
      expression_depart : "",
      expression_son : "",
      email : ""
    };
    
    var listLanguages = [];

     allLanguages.data.forEach((info) => {
       if(info.Tables_in_martinku_metchoup_translate !== 'suggestions' ){
         var expression = {
           value: info.Tables_in_martinku_metchoup_translate,
           label: info.Tables_in_martinku_metchoup_translate
         };
         listLanguages.push(expression);
       }
     })

    // allLanguages.data.forEach((info) => {
    //   if (info.Tables_in_metchoup_translate !== 'suggestions') {
    //     var expression = {
    //       value: info.Tables_in_metchoup_translate,
    //       label: info.Tables_in_metchoup_translate
    //     };
    //     listLanguages.push(expression);
    //   }
    // })

    this.setState((state)=>({suggestion: suggestion, listExpression: reponse.data, listLanguage: listLanguages, confirmationSuggestion : undefined}));
  }


  async handlerChange(event) {
    const target = event.target;
    const name = target.name;
    const value = target.value;
    if(target.type === 'textarea'){
      this.setState((state)=>({textSrc: value}));
    }else{
      let suggestion = this.state.suggestion;
      suggestion[name] = value;
      this.setState({suggestion: suggestion});
    }
  }

  handlerSelectTrsLanguage(name){
    this.setState((state)=>({trsLanguage: name.value, message: undefined, showExpressions: true, textTrs: ""}));
  }

  //Mis à jour de la langue source et des ses expressions
  async handlerSelectSrcLanguage(language){
      this.setState((state)=>({srcLanguage: language.value, textSrc: ""}));
      const reponse = await this.Service.getExpression(language.value);

      //console.log(reponse.data)

      var listExpression = [];

      reponse.data.forEach((info) => {
         var expression = {
           id_src: info.id,
           expression: info.expression
         };
         listExpression.push(expression);
     })
      this.setState((state)=>({listExpression: listExpression}));
  }

  //Button qui efface tous les champs des texts
  async cleanArea(){
    this.setState((state)=>({textSrc: "", textTrs: ""}));
  }

  //Fonction qui permet de choisir la langue de traduction
  async setTranslation(){
    const inputField = document.querySelector('.chosen-value');
    if(this.state.trsLanguage === ""){
      this.setState((state)=>({message: <h6 className="message">Choose a language for translation</h6>, showExpressions: false, error: "error"}));
    }else if(this.state.srcLanguage === this.state.trsLanguage){
      this.setState((state)=>({message: <h6 className="message">The source language must be different for the translation language</h6>, showExpressions: false, error: "error"}));
    }else{
       
      //Fonction qui active le dictionnaire de la langue de traduction
      const reponse = await this.Service.getExpression(this.state.trsLanguage);
      this.setState((state)=>({listTranslation: reponse.data}))

      // console.log(this.state.listTranslation)

      this.setState((state)=>({message: undefined, showExpressions: true, error: ""}));

      const dropdown = document.querySelector('.value-list');
      const dropdownArray = [...document.querySelectorAll('li')];
      dropdown.classList.add('open');
      // inputField.focus(); // Demo purposes only
      let valueArray = [];
      dropdownArray.forEach(item => {
        // console.log(item)
        valueArray.push(item.textContent);
      });

      // const closeDropdown = () => {
      //   dropdown.classList.remove('open');
      // }
  
      inputField.addEventListener('input', () => {
        dropdown.classList.add('open');
        let inputValue = inputField.value.toLowerCase();
        if (inputValue.length > 0) {
          for (let j = 0; j < valueArray.length; j++) {
            if (!(inputValue.substring(0, inputValue.length) === valueArray[j].substring(0, inputValue.length).toLowerCase())) {
              dropdownArray[j].classList.add('closed');
            } else {
              dropdownArray[j].classList.remove('closed');
            }
          }
        } else {
          for (let i = 0; i < dropdownArray.length; i++) {
            dropdownArray[i].classList.remove('closed');
          }
        }
      });
  
      //Mis à jour du texte dans le champ de traduction
      dropdownArray.forEach((item, index) => {
        
        //index = this.state.listExpression[index].id;
        item.addEventListener('click', (evt) => {
         try {
          //Si la traduction existe
          if(this.state.listTranslation !== ""){
            this.setState((state)=>({textSrc: item.textContent, textTrs: this.state.listTranslation[index].expression, audioTrsLanguage: this.state.listTranslation[index].expression_audio}));
          }else{
            //Sinon dire qu'elle est en étude !
            this.setState((state)=>({message: <h6 className="message">That translation doesnt exist, please <span data-toggle="modal" data-target="#suggestionForm">contribute</span></h6>}));
          }
          dropdownArray.forEach(dropdown => {
            dropdown.classList.add('closed');
          });
         } catch (error) {
            console.log(error)
            this.setState((state)=>({message: <h6 className="message">That translation doesnt exist, please <span data-toggle="modal" data-target="#suggestionForm">contribute</span></h6>}));

            console.log(this.state.listExpression)
         }
          
          
        });   
      })

      // for(let i = 0; this.state.listExpression   ){
      // }
  
      // inputField.addEventListener('focus', () => {
      //   inputField.placeholder = 'Write your text';
      //   dropdown.classList.add('open');
      //   dropdownArray.forEach(dropdown => {
      //     dropdown.classList.remove('closed');
      //   });
      // });
      // inputField.addEventListener('blur', () => {
      //   inputField.placeholder = 'Write your text here...';
      //   dropdown.classList.remove('open');
      // });
  
      document.addEventListener('click', (evt) => {
        const isDropdown = dropdown.contains(evt.target);
        const isInput = inputField.contains(evt.target);
        if (!isDropdown && !isInput) {
          dropdown.classList.remove('open');
        }
      });
    }
  }

  //Fonction qui envoie une nouvelle suggestion de traduction au serveur
  async handleSubmitDoc(event){
    event.preventDefault();
    this.setState((state)=>({spinner: ""}))
    const reponse = await this.Service.postSuggestion(this.state.suggestion, this.state.son)
    if(reponse.status === 200){
      var buttonClose = document.getElementById('closeModal');
      this.setState((state)=>({confirmationSuggestion: <p className="alert alert-success"><b>Me lapt'euh</b> (thank you !) 
          <br/>Your transaction will be studied</p>, spinner : "visually-hidden"})
      ); 
      setTimeout(()=> {
        buttonClose.click();
        this.componentDidMount();
      }, 3000)
    }
  }


  handlerChangeFile(event){
    try {
      event.preventDefault();
      const target = event.target;
      const file = target.files[0];
      if(file.type === "audio/x-m4a" || file.type === "audio/wav" || file.type === "audio/mpeg" || file.type === "audio/ogg"){
        if(file.size/(1024) <= 3000){
          //this.state.son = file;
          this.setState((state)=>({son:file, confirmationSuggestion: <p className="alert alert-success">Fichier bien enregistré !</p>})); 
          setTimeout(()=> {
            this.setState((state)=>({confirmationSuggestion: undefined})); 
          }, 1500)
        }else{
          this.setState((state)=>({confirmationSuggestion: <p className="error">Audio trop lourd ! ( moins de 3MB )</p>})); 
        }
      }else{
        this.setState((state)=>({confirmationSuggestion: <p className="error">Votre fichier n'est pas audio !</p>})); 
      }
    } catch (error) {
      console.log(error)
    }
  }

  readExpression(){
    const expression_son = document.getElementById('expression_son');
    expression_son.play();
  }

  copyText(){
    var toCopy = document.getElementById('translationText');
        toCopy.select();
        document.execCommand('copy');
        this.setState((state)=>({message: <h6 style={{backgroundColor: "rgb(88, 255, 199)"}}>Text copied !</h6>}));
        setTimeout(()=> {
          this.setState((state)=>({message: undefined}));
        }, 3000)
    return false;
  }

  customTheme(theme){
    return {
      ...theme,
      colors: {
        ...theme.colors,
        primary25: 'rgb(88, 255, 199)',
        primary: 'rgb(88, 255, 199)',
      },
    };
  }

  customThemeTrs(theme){
    return {
      ...theme,
      colors: {
        ...theme.colors,
        primary25: '#b245bc',
        primary: '#b245bc',
      },
    };
  }

  render(){
    return(
      <>
      <header>
          <nav className="navbar navbar-expand-lg navbar-light" style={{backgroundColor: "#b245bc"}}>
            <a style={{color: "rgb(88, 255, 199)"}} className="nav-link" target="_blanck" href="https://metchoup.com"><i className="bi bi-arrow-left-square"></i> Back to the site <span className="sr-only">(current)</span></a>
            <button type="button" data-toggle="modal" data-target="#suggestionForm" className="nav-link btn btn-dark btn-sm">Contribute</button>
            <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span className="navbar-toggler-icon"></span>
            </button>

            <div className="collapse navbar-collapse" id="navbarSupportedContent">
              <ul className="navbar-nav mr-auto">
                <span className="nav-item active ml-3">
                  <a style={{color: "white"}} className="navbar-brand" href="https://translate.metchoup.com">Metchoup-translate</a>
                </span>

                <span className="nav-item">
                  <span style={{color: "white"}} className="nav-link"><img src='united-states.png' alt='english-version'/> Page in english</span>   
                </span>
                
                <span className="nav-item">
                  <span style={{color: "white"}} className="nav-link"><img src='france.png' alt='french-version'/> Page in french</span>
                </span>
              </ul>
   
              <a style={{color: "white"}} href="/admin">Login</a>
            </div>
          </nav>
      </header>
     
    <div align="center" className="mt-2" style={{width: "80%", margin: "auto"}}>
      <strong><h1 style={{fontSize: "1.25rem"}}><span style={{color: "#b245bc"}}>Translate yours words</span> between <span style={{color: "rgb(0, 209, 139)"}}>africans languages</span></h1></strong>
      <hr/>
      
      {/* -------------------------------- */}
      <div className="row container">
          <div className="col">
              <Select 
                theme={this.customTheme}
                defaultValue={this.state.listLanguage[3]}
                placeholder={this.state.srcLanguage}
                options={this.state.listLanguage}
                onChange={this.handlerSelectSrcLanguage}
              />
          </div>
          <div className="col">
              <Select 
                theme={this.customThemeTrs}
                placeholder="Translation language"
                options={this.state.listLanguage}
                onChange={this.handlerSelectTrsLanguage}
              />
          </div>
      </div>
      {this.state.message}
      <hr/>
      <div className="row">
        <div className="col-sm">
          <form className="form-control-clearable">
            <span onClick={this.cleanArea}>x</span>
            <textarea autoFocus value={this.state.textSrc} onChange={this.handlerChange} placeholder="Write your text here..." onClick={this.setTranslation} rows="3" className="chosen-value srcArea form-control mt-1"></textarea>
          </form>
            { !this.state.showExpressions ? '' :
                <ul className="value-list">
                  {this.state.listExpression.map((item, id) => (
                    <li key={item.id_src}>{item.expression}</li>
                  ))}
                </ul>
            }
        </div>

        <div className="col-sm">
          <textarea rows="3" id="translationText" value={this.state.textTrs} className="form-control textcss mt-1"></textarea>
          <audio id='expression_son' src={'expression_son/'+this.state.trsLanguage+'/'+this.state.audioTrsLanguage}></audio>
          <h3>
          <button onClick={() => this.readExpression()} className="btn btn-outline-secondary"><i className="bi bi-volume-up-fill"></i></button> <button className="btn btn-outline-secondary" onClick={() => this.copyText()}><i className="bi bi-clipboard"></i></button></h3> 
        </div>
      </div>
      
    </div>

    <div id="video_tutorial">
      <iframe src="https://www.youtube.com/embed/m_1uVqzg1iw" title="YouTube video player" frameorder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowFullScreen></iframe>
    </div>


    <div className="modal fade" id="suggestionForm" tabIndex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div className="modal-dialog modal-dialog-centered" role="document">
        <div className="modal-content modalMetchoup">
          <div className="modal-header">
            <h5 className="modal-title" id="exampleModalLabel">Suggest a translation</h5>
            <button type="button" className="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <form onSubmit={this.handleSubmitDoc} encType='multipart/form-data'>
            <div className="modal-body">
                <div className="input-group input-group-sm mb-3">
                  <span className="input-group-text" id="inputGroup-sizing-sm">source language</span>
                  <input required value={this.state.suggestion.langue_depart} type="text" name="langue_depart" className="form-control" onChange={this.handlerChange} aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"/>
                </div>
                {/* <input required value={this.state.suggestion.langue_depart} name="langue_depart" className="form-control mb-2" type="text" onChange={this.handlerChange} placeholder="langue de départ"/> */}
                <div className="input-group input-group-sm mb-3">
                  <span className="input-group-text" id="inputGroup-sizing-sm">original expression</span>
                  <input required value={this.state.suggestion.expression_depart} name="expression_depart" className="form-control" type="text" onChange={this.handlerChange} aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"/>                 
                </div>
                {/* <input required value={this.state.suggestion.expression_depart} name="expression_depart" className="form-control mb-2" type="text" onChange={this.handlerChange} placeholder="expression d'origine"/> */}
                <div className="input-group input-group-sm mb-3">
                  <span className="input-group-text" id="inputGroup-sizing-sm">Translation language</span>
                  <input required value={this.state.suggestion.langue_arrive} name="langue_arrive" className="form-control" type="text" onChange={this.handlerChange} aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"/>
                  {/* <input required value={this.state.suggestion.langue_arrive} name="langue_arrive" className="form-control mb-2" type="text" onChange={this.handlerChange} placeholder="langue d'arrivée"/> */}
                </div>

                <div className="input-group input-group-sm mb-3">
                  <span className="input-group-text" id="inputGroup-sizing-sm">translated expression</span>
                  <input required value={this.state.suggestion.expression_arrive} name="expression_arrive" className="form-control" type="text" onChange={this.handlerChange} aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"/>
                  {/* <input required value={this.state.suggestion.expression_arrive} name="expression_arrive" className="form-control mb-2" type="text" onChange={this.handlerChange} placeholder="expression traduite"/> */}
                </div> 
                  
                <div className="custom-file mb-2">
                    <input type="file" accept=".mp3,.wav,.ogg,.m4a,.mpeg" name="expression_son" className="custom-file-input" id="validatedCustomFile" aria-describedby="customFileValidationFeedback" onChange={this.handlerChangeFile}/>
                    <label className="custom-file-label" htmlFor="validatedCustomFile">fichier de prononciation<span className="sr-only"> (required)</span>
                    </label>
                    <div className="invalid-feedback" id="customFileValidationFeedback">
                        Example invalid custom file feedback
                    </div>
                </div>
                
                <div className="input-group input-group-sm mb-3">
                  <span className="input-group-text" id="inputGroup-sizing-sm">Your email/name</span>
                  <input required value={this.state.suggestion.email} name="email" className="form-control" type="text" onChange={this.handlerChange} aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"/>
                </div>

            </div>
              
              {this.state.confirmationSuggestion}
            <div className="modal-footer">
              <div className={"spinner-border text-success "+ this.state.spinner} role="status">
                <span className="visually-hidden">Loading...</span>
              </div>
              <button type="button" id="closeModal" className="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="submit" disabled={this.state.confirmationSuggestion !== undefined || this.state.spinner === ""} className="btn btn-success">Save</button>
            </div>
          </form>
        </div>
      </div>
    </div>
    </>
    )
  }
};
