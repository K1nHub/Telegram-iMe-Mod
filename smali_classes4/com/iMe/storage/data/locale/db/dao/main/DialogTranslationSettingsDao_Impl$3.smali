.class Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "DialogTranslationSettingsDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 86
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->isInTextTranslateEnabled()Z

    move-result v0

    const/4 v1, 0x1

    int-to-long v2, v0

    .line 87
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 88
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->getInTextTranslateTargetLangCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 89
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->getInTextTranslateTargetLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 93
    :goto_0
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->isOutTextTranslateEnabled()Z

    move-result v0

    const/4 v1, 0x3

    int-to-long v2, v0

    .line 94
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 95
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->getOutTextTranslateTargetLangCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 96
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->getOutTextTranslateTargetLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x5

    .line 100
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->getDialogId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v0, 0x6

    .line 101
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->getUserId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v0, 0x7

    .line 102
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->getDialogId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 v0, 0x8

    .line 103
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->getUserId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 78
    check-cast p2, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR REPLACE `DialogTranslationSettingsDb` SET `isInTextTranslateEnabled` = ?,`inTextTranslateTargetLangCode` = ?,`isOutTextTranslateEnabled` = ?,`outTextTranslateTargetLangCode` = ?,`dialogId` = ?,`userId` = ? WHERE `dialogId` = ? AND `userId` = ?"

    return-object v0
.end method
