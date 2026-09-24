/* --------------------------------------------------------------------------------
   Project     : Service Framework
   File        : ITranslationService.cls
   Program     :  system/common/i18/ITranslationService.cls
   Description : Interface for translation service
   Created     : 2023-08-10
   Notes       : CLOSED. Retrieves string for given parameter
-------------------------------------------------------------------------------- */

BLOCK-LEVEL ON ERROR UNDO, THROW.

USING PauliusKup.Translation.TranslationServiceParam.

INTERFACE PauliusKup.Translation.ITranslationService:
  METHOD PUBLIC CHARACTER GetTransaltionMessage(poParam AS TranslationServiceParam).
END INTERFACE.