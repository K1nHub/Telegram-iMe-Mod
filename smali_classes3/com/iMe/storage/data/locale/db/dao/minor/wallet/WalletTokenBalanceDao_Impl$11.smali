.class Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$11;
.super Ljava/lang/Object;
.source "WalletTokenBalanceDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;->getAllWalletBalances(JLjava/lang/String;)Lio/reactivex/Single;
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
        "Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
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

    .line 322
    iput-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$11;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;

    iput-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$11;->val$_statement:Landroidx/room/RoomSQLiteQuery;

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

    .line 322
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$11;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 325
    iget-object v0, v1, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$11;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;

    invoke-static {v0}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;->access$000(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$11;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "tgUserId"

    .line 327
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "coinCode"

    .line 328
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v5, "total"

    .line 329
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "totalInDollars"

    .line 330
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "rateToDollars"

    .line 331
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "ratePercentageChange24h"

    .line 332
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "networkType"

    .line 333
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 334
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 335
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 338
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 340
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v15, v4

    goto :goto_1

    .line 343
    :cond_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v15, v11

    .line 346
    :goto_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    .line 348
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v18

    .line 350
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v19

    .line 352
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v21

    .line 354
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v22, v4

    goto :goto_2

    .line 357
    :cond_1
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v22, v11

    .line 359
    :goto_2
    new-instance v11, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;

    move-object v12, v11

    invoke-direct/range {v12 .. v22}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;-><init>(JLjava/lang/String;DFDFLjava/lang/String;)V

    .line 360
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 367
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v10

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 368
    throw v0
.end method

.method protected finalize()V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$11;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method