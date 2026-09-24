/* --------------------------------------------------------------------------------
   Project     : Service Framework
   File        : TranslationServiceParam.cls
   Program     :  system/common/language/TranslationServiceParam.cls
   Description : TranslationServiceParam object
   Created     : 2023-08-10
   Notes       : CLOSED. Specific parameters for usage in ITranslationService
-------------------------------------------------------------------------------- */

BLOCK-LEVEL ON ERROR UNDO, THROW.

USING PauliusKup.Language.Language.

CLASS PauliusKup.Translation.TranslationServiceParam:
  DEFINE PUBLIC PROPERTY cKey AS CHARACTER NO-UNDO
    PUBLIC GET.
    PUBLIC SET.

  DEFINE PUBLIC PROPERTY cDefaultString AS CHARACTER NO-UNDO
    PUBLIC GET.
    PUBLIC SET.

  DEFINE PUBLIC PROPERTY oLanguage AS Language NO-UNDO
    PUBLIC GET.
    PUBLIC SET.
END CLASS.