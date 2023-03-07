.class Lcom/smedialink/storage/data/locale/db/dao/main/HistoryDialogDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "HistoryDialogDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/smedialink/storage/data/locale/db/model/recent_chats/HistoryDialogDb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 63
    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/smedialink/storage/data/locale/db/model/recent_chats/HistoryDialogDb;)V
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

    .line 71
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->getUserId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 72
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->getDialogId()J

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

    .line 63
    check-cast p2, Lcom/smedialink/storage/data/locale/db/model/recent_chats/HistoryDialogDb;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/data/locale/db/dao/main/HistoryDialogDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/smedialink/storage/data/locale/db/model/recent_chats/HistoryDialogDb;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `HistoryDialogDb` WHERE `userId` = ? AND `dialogId` = ?"

    return-object v0
.end method
