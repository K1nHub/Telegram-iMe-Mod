.class Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl$2;
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

    .line 66
    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;)V
    .locals 3
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

    .line 74
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->getDialogId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 75
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->getUserId()J

    move-result-wide v0

    const/4 p2, 0x2

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

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

    .line 66
    check-cast p2, Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `DialogTranslationSettingsDb` WHERE `dialogId` = ? AND `userId` = ?"

    return-object v0
.end method
