.class public final Lcom/iMe/model/translation/TranslationArgs;
.super Ljava/lang/Object;
.source "TranslationArgs.kt"


# instance fields
.field private textToTranslate:Ljava/lang/String;

.field private final translationSettings:Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

.field private final type:Lcom/iMe/fork/enums/TranslationDialogType;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/enums/TranslationDialogType;Ljava/lang/String;Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textToTranslate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/model/translation/TranslationArgs;->type:Lcom/iMe/fork/enums/TranslationDialogType;

    .line 8
    iput-object p2, p0, Lcom/iMe/model/translation/TranslationArgs;->textToTranslate:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/iMe/model/translation/TranslationArgs;->translationSettings:Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/translation/TranslationArgs;Lcom/iMe/fork/enums/TranslationDialogType;Ljava/lang/String;Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;ILjava/lang/Object;)Lcom/iMe/model/translation/TranslationArgs;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/model/translation/TranslationArgs;->type:Lcom/iMe/fork/enums/TranslationDialogType;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/iMe/model/translation/TranslationArgs;->textToTranslate:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/iMe/model/translation/TranslationArgs;->translationSettings:Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/model/translation/TranslationArgs;->copy(Lcom/iMe/fork/enums/TranslationDialogType;Ljava/lang/String;Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;)Lcom/iMe/model/translation/TranslationArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/fork/enums/TranslationDialogType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/translation/TranslationArgs;->type:Lcom/iMe/fork/enums/TranslationDialogType;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/translation/TranslationArgs;->textToTranslate:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/translation/TranslationArgs;->translationSettings:Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    return-object v0
.end method

.method public final copy(Lcom/iMe/fork/enums/TranslationDialogType;Ljava/lang/String;Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;)Lcom/iMe/model/translation/TranslationArgs;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textToTranslate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/translation/TranslationArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/model/translation/TranslationArgs;-><init>(Lcom/iMe/fork/enums/TranslationDialogType;Ljava/lang/String;Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/translation/TranslationArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/translation/TranslationArgs;

    iget-object v1, p0, Lcom/iMe/model/translation/TranslationArgs;->type:Lcom/iMe/fork/enums/TranslationDialogType;

    iget-object v3, p1, Lcom/iMe/model/translation/TranslationArgs;->type:Lcom/iMe/fork/enums/TranslationDialogType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/translation/TranslationArgs;->textToTranslate:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/translation/TranslationArgs;->textToTranslate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/model/translation/TranslationArgs;->translationSettings:Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    iget-object p1, p1, Lcom/iMe/model/translation/TranslationArgs;->translationSettings:Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getLangCodeByType()Ljava/lang/String;
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/iMe/model/translation/TranslationArgs;->type:Lcom/iMe/fork/enums/TranslationDialogType;

    sget-object v1, Lcom/iMe/fork/enums/TranslationDialogType;->INCOMING:Lcom/iMe/fork/enums/TranslationDialogType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 15
    iget-object v0, p0, Lcom/iMe/model/translation/TranslationArgs;->translationSettings:Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->getInTextTranslateLangCode()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/iMe/model/translation/TranslationArgs;->translationSettings:Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->getOutTextTranslateLangCode()Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2
.end method

.method public final getTextToTranslate()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/model/translation/TranslationArgs;->textToTranslate:Ljava/lang/String;

    return-object v0
.end method

.method public final getTranslationSettings()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/model/translation/TranslationArgs;->translationSettings:Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    return-object v0
.end method

.method public final getType()Lcom/iMe/fork/enums/TranslationDialogType;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/model/translation/TranslationArgs;->type:Lcom/iMe/fork/enums/TranslationDialogType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/translation/TranslationArgs;->type:Lcom/iMe/fork/enums/TranslationDialogType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/translation/TranslationArgs;->textToTranslate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/translation/TranslationArgs;->translationSettings:Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setTextToTranslate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/iMe/model/translation/TranslationArgs;->textToTranslate:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslationArgs(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/translation/TranslationArgs;->type:Lcom/iMe/fork/enums/TranslationDialogType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textToTranslate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/translation/TranslationArgs;->textToTranslate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", translationSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/translation/TranslationArgs;->translationSettings:Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
