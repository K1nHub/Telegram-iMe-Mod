.class public final Lcom/iMe/storage/data/mapper/dialogs/DialogSettingsMappingKt;
.super Ljava/lang/Object;
.source "DialogSettingsMapping.kt"


# direct methods
.method public static final mapToDb(Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;J)Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;

    .line 18
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->isInTextTranslateEnabled()Z

    move-result v2

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->getInTextTranslateLangCode()Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->isOutTextTranslateEnabled()Z

    move-result v4

    .line 21
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->getOutTextTranslateLangCode()Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->getDialogId()J

    move-result-wide v6

    move-object v1, v0

    move-wide v8, p1

    .line 17
    invoke-direct/range {v1 .. v9}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;-><init>(ZLjava/lang/String;ZLjava/lang/String;JJ)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;)Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;
    .locals 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    .line 8
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->isInTextTranslateEnabled()Z

    move-result v2

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->getInTextTranslateTargetLangCode()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->isOutTextTranslateEnabled()Z

    move-result v4

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->getOutTextTranslateTargetLangCode()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->getDialogId()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xe0

    const/4 v12, 0x0

    move-object v1, v0

    .line 7
    invoke-direct/range {v1 .. v12}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;-><init>(ZLjava/lang/String;ZLjava/lang/String;JZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
