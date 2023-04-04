.class Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "BookmarksDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 72
    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;)V
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

    .line 80
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;->getMessageIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter;->convertIntListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 82
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 86
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;->getDialogId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v0, 0x3

    .line 87
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;->getUserId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 88
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;->getDialogId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 89
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;->getUserId()J

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

    .line 72
    check-cast p2, Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR REPLACE `BookmarksDb` SET `messageIds` = ?,`dialogId` = ?,`userId` = ? WHERE `dialogId` = ? AND `userId` = ?"

    return-object v0
.end method
