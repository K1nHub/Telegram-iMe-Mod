.class Lcom/smedialink/bots/data/database/BotsCategoryDao_Impl$2;
.super Ljava/lang/Object;
.source "BotsCategoryDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/data/database/BotsCategoryDao_Impl;->getAll()Lio/reactivex/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/bots/data/database/BotsCategoryDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/smedialink/bots/data/database/BotsCategoryDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_statement"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/smedialink/bots/data/database/BotsCategoryDao_Impl$2;->this$0:Lcom/smedialink/bots/data/database/BotsCategoryDao_Impl;

    iput-object p2, p0, Lcom/smedialink/bots/data/database/BotsCategoryDao_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lcom/smedialink/bots/data/database/BotsCategoryDao_Impl$2;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/smedialink/bots/data/database/BotsCategoryDao_Impl$2;->this$0:Lcom/smedialink/bots/data/database/BotsCategoryDao_Impl;

    invoke-static {v0}, Lcom/smedialink/bots/data/database/BotsCategoryDao_Impl;->access$000(Lcom/smedialink/bots/data/database/BotsCategoryDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/bots/data/database/BotsCategoryDao_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "id"

    .line 165
    invoke-static {v0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "title"

    .line 166
    invoke-static {v0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "priority"

    .line 167
    invoke-static {v0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "tags"

    .line 168
    invoke-static {v0, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "locales"

    .line 169
    invoke-static {v0, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 170
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 174
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v10, v3

    goto :goto_1

    .line 177
    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v10, v8

    .line 180
    :goto_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v11, v3

    goto :goto_2

    .line 183
    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v11, v8

    .line 186
    :goto_2
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 189
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v3

    goto :goto_3

    .line 192
    :cond_2
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 194
    :goto_3
    invoke-static {v8}, Lcom/smedialink/bots/data/database/converter/Converter;->fromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 197
    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v3

    goto :goto_4

    .line 200
    :cond_3
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 202
    :goto_4
    invoke-static {v8}, Lcom/smedialink/bots/data/database/converter/Converter;->toMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    .line 203
    new-instance v8, Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;

    move-object v9, v8

    invoke-direct/range {v9 .. v14}, Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/Map;)V

    .line 204
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 208
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v7

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 209
    throw v1
.end method

.method protected finalize()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/smedialink/bots/data/database/BotsCategoryDao_Impl$2;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
