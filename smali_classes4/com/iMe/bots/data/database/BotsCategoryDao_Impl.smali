.class public final Lcom/iMe/bots/data/database/BotsCategoryDao_Impl;
.super Lcom/iMe/bots/data/database/BotsCategoryDao;
.source "BotsCategoryDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfBotsCategoryDbModel:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/iMe/bots/data/model/database/BotsCategoryDbModel;",
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

    .line 32
    invoke-direct {p0}, Lcom/iMe/bots/data/database/BotsCategoryDao;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/iMe/bots/data/database/BotsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 34
    new-instance v0, Lcom/iMe/bots/data/database/BotsCategoryDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/bots/data/database/BotsCategoryDao_Impl$1;-><init>(Lcom/iMe/bots/data/database/BotsCategoryDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/bots/data/database/BotsCategoryDao_Impl;->__insertionAdapterOfBotsCategoryDbModel:Landroidx/room/EntityInsertionAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/iMe/bots/data/database/BotsCategoryDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/iMe/bots/data/database/BotsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

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

    .line 220
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAll()Lio/reactivex/Flowable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/iMe/bots/data/model/database/BotsCategoryDbModel;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM BotsCategoryDbModel"

    const/4 v1, 0x0

    .line 159
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 160
    iget-object v2, p0, Lcom/iMe/bots/data/database/BotsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v3, "BotsCategoryDbModel"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/iMe/bots/data/database/BotsCategoryDao_Impl$2;

    invoke-direct {v4, p0, v0}, Lcom/iMe/bots/data/database/BotsCategoryDao_Impl$2;-><init>(Lcom/iMe/bots/data/database/BotsCategoryDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v2, v1, v3, v4}, Landroidx/room/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public insertOrReplace(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "entities"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/bots/data/model/database/BotsCategoryDbModel;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 85
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsCategoryDao_Impl;->__insertionAdapterOfBotsCategoryDbModel:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnIdsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 92
    throw p1
.end method
