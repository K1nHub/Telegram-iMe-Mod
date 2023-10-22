.class Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl$17;
.super Ljava/lang/Object;
.source "WalletTokensBalancesDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;->rxDeleteByMultipleNetworks(JLjava/util/List;)Lio/reactivex/Completable;
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
.field final synthetic this$0:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;

.field final synthetic val$networksIds:Ljava/util/List;

.field final synthetic val$userId:J


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$networksIds",
            "val$userId"
        }
    .end annotation

    .line 986
    iput-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl$17;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;

    iput-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl$17;->val$networksIds:Ljava/util/List;

    iput-wide p3, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl$17;->val$userId:J

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

    .line 986
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl$17;->call()Ljava/lang/Void;

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

    .line 989
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DELETE FROM WalletTokenBalanceDb WHERE tgUserId = "

    .line 990
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 991
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND networkId IN ("

    .line 992
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl$17;->val$networksIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 994
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 995
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 997
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl$17;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;

    invoke-static {v1}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;->access$000(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 999
    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl$17;->val$userId:J

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 1001
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl$17;->val$networksIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1003
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 1005
    :cond_0
    invoke-interface {v0, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1009
    :cond_1
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl$17;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;

    invoke-static {v1}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;->access$000(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 1011
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 1012
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl$17;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;

    invoke-static {v0}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;->access$000(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 1015
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl$17;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;

    invoke-static {v1}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;->access$000(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl$17;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;

    invoke-static {v1}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;->access$000(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokensBalancesDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1016
    throw v0
.end method
