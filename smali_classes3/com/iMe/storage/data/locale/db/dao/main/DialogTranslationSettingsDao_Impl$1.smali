.class Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
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
        "Landroidx/room/EntityInsertionAdapter<",
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

    .line 40
    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

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

    .line 48
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->isInTextTranslateEnabled()Z

    move-result v0

    const/4 v1, 0x1

    int-to-long v2, v0

    .line 49
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 50
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->getInTextTranslateTargetLangCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 51
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->getInTextTranslateTargetLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 55
    :goto_0
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->isOutTextTranslateEnabled()Z

    move-result v0

    const/4 v1, 0x3

    int-to-long v2, v0

    .line 56
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 57
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->getOutTextTranslateTargetLangCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 58
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->getOutTextTranslateTargetLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x5

    .line 62
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->getDialogId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v0, 0x6

    .line 63
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

    .line 40
    check-cast p2, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `DialogTranslationSettingsDb` (`isInTextTranslateEnabled`,`inTextTranslateTargetLangCode`,`isOutTextTranslateEnabled`,`outTextTranslateTargetLangCode`,`dialogId`,`userId`) VALUES (?,?,?,?,?,?)"

    return-object v0
.end method
