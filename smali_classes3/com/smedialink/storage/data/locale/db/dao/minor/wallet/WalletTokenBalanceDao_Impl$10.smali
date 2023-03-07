.class Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$10;
.super Ljava/lang/Object;
.source "WalletTokenBalanceDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;->rxDeleteAllWalletBalances(JLjava/lang/String;)Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;

.field final synthetic val$networkType:Ljava/lang/String;

.field final synthetic val$userId:J


# direct methods
.method constructor <init>(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$userId",
            "val$networkType"
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$10;->this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;

    iput-wide p2, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$10;->val$userId:J

    iput-object p4, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$10;->val$networkType:Ljava/lang/String;

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

    .line 284
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$10;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$10;->this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;

    invoke-static {v0}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;->access$400(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 289
    iget-wide v1, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$10;->val$userId:J

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 291
    iget-object v1, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$10;->val$networkType:Ljava/lang/String;

    const/4 v2, 0x2

    if-nez v1, :cond_0

    .line 292
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-interface {v0, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 296
    :goto_0
    iget-object v1, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$10;->this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;

    invoke-static {v1}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;->access$000(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 298
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 299
    iget-object v1, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$10;->this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;

    invoke-static {v1}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;->access$000(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 302
    iget-object v2, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$10;->this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;

    invoke-static {v2}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;->access$000(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 303
    iget-object v2, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$10;->this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;

    invoke-static {v2}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;->access$400(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 302
    iget-object v2, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$10;->this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;

    invoke-static {v2}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;->access$000(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 303
    iget-object v2, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$10;->this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;

    invoke-static {v2}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;->access$400(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 304
    throw v1
.end method
