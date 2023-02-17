.class public final Lcom/smedialink/bots/data/database/HolidaysDao_Impl;
.super Lcom/smedialink/bots/data/database/HolidaysDao;
.source "HolidaysDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfHolidaysDbModel:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/smedialink/bots/data/model/database/HolidaysDbModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "__db"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lcom/smedialink/bots/data/database/HolidaysDao;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/smedialink/bots/data/database/HolidaysDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 27
    new-instance v0, Lcom/smedialink/bots/data/database/HolidaysDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/bots/data/database/HolidaysDao_Impl$1;-><init>(Lcom/smedialink/bots/data/database/HolidaysDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/smedialink/bots/data/database/HolidaysDao_Impl;->__insertionAdapterOfHolidaysDbModel:Landroidx/room/EntityInsertionAdapter;

    return-void
.end method

.method static synthetic access$001(Lcom/smedialink/bots/data/database/HolidaysDao_Impl;JLjava/lang/String;)V
    .locals 0

    .line 20
    invoke-super {p0, p1, p2, p3}, Lcom/smedialink/bots/data/database/HolidaysDao;->saveForUser(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$101(Lcom/smedialink/bots/data/database/HolidaysDao_Impl;J)Ljava/util/Set;
    .locals 0

    .line 20
    invoke-super {p0, p1, p2}, Lcom/smedialink/bots/data/database/HolidaysDao;->getTagsForUser(J)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 121
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getByUserId(J)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "userId"
        }
    .end annotation

    const-string v0, "SELECT tags FROM HolidaysDbModel WHERE userId LIKE ?"

    const/4 v1, 0x1

    .line 97
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 100
    iget-object p1, p0, Lcom/smedialink/bots/data/database/HolidaysDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 101
    iget-object p1, p0, Lcom/smedialink/bots/data/database/HolidaysDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 104
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 116
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception p2

    .line 115
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 116
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 117
    throw p2
.end method

.method public getTagsForUser(J)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/smedialink/bots/data/database/HolidaysDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 86
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/smedialink/bots/data/database/HolidaysDao_Impl;->access$101(Lcom/smedialink/bots/data/database/HolidaysDao_Impl;J)Ljava/util/Set;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/smedialink/bots/data/database/HolidaysDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object p2, p0, Lcom/smedialink/bots/data/database/HolidaysDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/smedialink/bots/data/database/HolidaysDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 91
    throw p1
.end method

.method public insertOrReplace(Lcom/smedialink/bots/data/model/database/HolidaysDbModel;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "entity"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/smedialink/bots/data/database/HolidaysDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 48
    iget-object v0, p0, Lcom/smedialink/bots/data/database/HolidaysDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/smedialink/bots/data/database/HolidaysDao_Impl;->__insertionAdapterOfHolidaysDbModel:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 51
    iget-object p1, p0, Lcom/smedialink/bots/data/database/HolidaysDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object p1, p0, Lcom/smedialink/bots/data/database/HolidaysDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/smedialink/bots/data/database/HolidaysDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 55
    throw p1
.end method

.method public saveForUser(JLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "userId",
            "fullTag"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/smedialink/bots/data/database/HolidaysDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 75
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/bots/data/database/HolidaysDao_Impl;->access$001(Lcom/smedialink/bots/data/database/HolidaysDao_Impl;JLjava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/smedialink/bots/data/database/HolidaysDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object p1, p0, Lcom/smedialink/bots/data/database/HolidaysDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/smedialink/bots/data/database/HolidaysDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 79
    throw p1
.end method
