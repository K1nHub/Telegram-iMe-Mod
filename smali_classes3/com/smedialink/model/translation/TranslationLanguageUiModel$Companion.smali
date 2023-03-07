.class public final Lcom/smedialink/model/translation/TranslationLanguageUiModel$Companion;
.super Ljava/lang/Object;
.source "TranslationLanguageUiModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/translation/TranslationLanguageUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/model/translation/TranslationLanguageUiModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createByLangCode(Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/model/translation/TranslationLanguageUiModel;
    .locals 3

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayLangCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/smedialink/model/translation/TranslationLanguageUiModel;

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Locale(languageCode).get\u2026(Locale(displayLangCode))"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2}, Lcom/smedialink/model/translation/TranslationLanguageUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAutoDetectionLanguage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Lcom/smedialink/model/translation/TranslationLanguageUiModel;
    .locals 2

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/smedialink/model/translation/TranslationLanguageUiModel;

    sget v1, Lorg/telegram/messenger/R$string;->translation_dialog_auto_language:I

    invoke-interface {p1, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/smedialink/model/translation/TranslationLanguageUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
