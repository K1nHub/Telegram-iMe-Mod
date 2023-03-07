.class public final Lcom/smedialink/mapper/translation/TranslationUiMappingKt;
.super Ljava/lang/Object;
.source "TranslationUiMapping.kt"


# direct methods
.method public static final mapToUI(Lcom/smedialink/storage/domain/model/translation/TranslationLanguage;Ljava/lang/String;)Lcom/smedialink/model/translation/TranslationLanguageUiModel;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentLangCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/smedialink/model/translation/TranslationLanguageUiModel;

    .line 10
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/translation/TranslationLanguage;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v2, Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/translation/TranslationLanguage;->getLanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Locale(languageCode).get\u2026(Locale(currentLangCode))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {v0, v1, p0}, Lcom/smedialink/model/translation/TranslationLanguageUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
