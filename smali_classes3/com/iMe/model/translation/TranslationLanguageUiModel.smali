.class public final Lcom/iMe/model/translation/TranslationLanguageUiModel;
.super Ljava/lang/Object;
.source "TranslationLanguageUiModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/translation/TranslationLanguageUiModel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/model/translation/TranslationLanguageUiModel$Companion;


# instance fields
.field private final displayLanguage:Ljava/lang/String;

.field private final languageCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/model/translation/TranslationLanguageUiModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/model/translation/TranslationLanguageUiModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/model/translation/TranslationLanguageUiModel;->Companion:Lcom/iMe/model/translation/TranslationLanguageUiModel$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "displayLanguage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/iMe/model/translation/TranslationLanguageUiModel;->languageCode:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/iMe/model/translation/TranslationLanguageUiModel;->displayLanguage:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/translation/TranslationLanguageUiModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/model/translation/TranslationLanguageUiModel;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/model/translation/TranslationLanguageUiModel;->languageCode:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/iMe/model/translation/TranslationLanguageUiModel;->displayLanguage:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/model/translation/TranslationLanguageUiModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/translation/TranslationLanguageUiModel;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/translation/TranslationLanguageUiModel;->displayLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/model/translation/TranslationLanguageUiModel;
    .locals 1

    const-string v0, "displayLanguage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-direct {v0, p1, p2}, Lcom/iMe/model/translation/TranslationLanguageUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/translation/TranslationLanguageUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/translation/TranslationLanguageUiModel;

    iget-object v1, p0, Lcom/iMe/model/translation/TranslationLanguageUiModel;->languageCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/translation/TranslationLanguageUiModel;->languageCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/translation/TranslationLanguageUiModel;->displayLanguage:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/model/translation/TranslationLanguageUiModel;->displayLanguage:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDisplayLanguage()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/model/translation/TranslationLanguageUiModel;->displayLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguageCode()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/model/translation/TranslationLanguageUiModel;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/translation/TranslationLanguageUiModel;->languageCode:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/translation/TranslationLanguageUiModel;->displayLanguage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isAutoDetection()Z
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/model/translation/TranslationLanguageUiModel;->languageCode:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslationLanguageUiModel(languageCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/translation/TranslationLanguageUiModel;->languageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayLanguage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/translation/TranslationLanguageUiModel;->displayLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
