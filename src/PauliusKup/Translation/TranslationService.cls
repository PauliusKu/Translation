/* --------------------------------------------------------------------------------
   Project     : Service Framework
   File        : TranslationService.cls
   Program     :  system/common/i18/TranslationService.cls
   Description : Class for getting translation data from DB
   Created     : 2023-08-10
   Notes       : CLOSED. Retrieves string for given params and language
-------------------------------------------------------------------------------- */

BLOCK-LEVEL ON ERROR UNDO, THROW.

USING PauliusKup.Translation.ITranslationService.
USING PauliusKup.Translation.TranslationServiceParam.
USING PauliusKup.Language.Language.

CLASS PauliusKup.Translation.TranslationService IMPLEMENTS ITranslationService:
  METHOD PUBLIC CHARACTER GetTransaltionMessage(poParam AS TranslationServiceParam):
    DEFINE VARIABLE pOut AS CHARACTER INIT ? NO-UNDO.
    // DEFINE BUFFER SysTranslation FOR SysTranslation.

    // //FOR EACH to use all availible triggers
    // FOR EACH SysTranslation NO-LOCK WHERE
    //          SysTranslation.Key          = poParam:cKey
    //      AND SysTranslation.Type         = "Data"
    //      AND SysTranslation.Language     = poParam:oLanguage:cISO
    //      AND SysTranslation.RecordStatus = "OK":

    //   pOut = SysTranslation.Translation.     

    //   LEAVE.
    // END. 
    
    IF pOut = ? THEN DO:
      //TODO Log missing translation and push it as a message to administrator
      IF poParam:cDefaultString > "" THEN
        pOut = poParam:cDefaultString.
      ELSE IF "c" = "b" then
        pOut = poParam:cKey.
      else
        message "error".
    END.     

    RETURN pOut.
  END METHOD.
END CLASS.