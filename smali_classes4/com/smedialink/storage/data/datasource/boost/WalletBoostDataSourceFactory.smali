.class public final Lcom/smedialink/storage/data/datasource/boost/WalletBoostDataSourceFactory;
.super Ljava/lang/Object;
.source "WalletBoostDataSourceFactory.kt"

# interfaces
.implements Lcom/smedialink/storage/data/datasource/base/DataSourceFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/smedialink/storage/data/datasource/base/DataSourceFactory<",
        "Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;",
        "Lcom/smedialink/storage/data/datasource/base/SignTransactionDatasource<",
        "Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final dexWalletSwapDataSource:Lcom/smedialink/storage/data/datasource/swap/WalletSwapDataSource;

.field private final ethWalletApproveDataSource:Lcom/smedialink/storage/data/datasource/approve/WalletApproveDataSource;

.field private final ethWalletTransferDataSource:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;Lcom/smedialink/storage/data/datasource/approve/WalletApproveDataSource;Lcom/smedialink/storage/data/datasource/swap/WalletSwapDataSource;)V
    .locals 1

    const-string v0, "ethWalletTransferDataSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ethWalletApproveDataSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dexWalletSwapDataSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/smedialink/storage/data/datasource/boost/WalletBoostDataSourceFactory;->ethWalletTransferDataSource:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;

    .line 16
    iput-object p2, p0, Lcom/smedialink/storage/data/datasource/boost/WalletBoostDataSourceFactory;->ethWalletApproveDataSource:Lcom/smedialink/storage/data/datasource/approve/WalletApproveDataSource;

    .line 17
    iput-object p3, p0, Lcom/smedialink/storage/data/datasource/boost/WalletBoostDataSourceFactory;->dexWalletSwapDataSource:Lcom/smedialink/storage/data/datasource/swap/WalletSwapDataSource;

    return-void
.end method


# virtual methods
.method public getDataSource(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lcom/smedialink/storage/data/datasource/base/SignTransactionDatasource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lcom/smedialink/storage/data/datasource/base/SignTransactionDatasource<",
            "Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;",
            ">;"
        }
    .end annotation

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/data/datasource/boost/WalletBoostDataSourceFactory;->ethWalletTransferDataSource:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;

    goto :goto_0

    .line 25
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/smedialink/storage/data/datasource/boost/WalletBoostDataSourceFactory;->dexWalletSwapDataSource:Lcom/smedialink/storage/data/datasource/swap/WalletSwapDataSource;

    goto :goto_0

    .line 26
    :cond_1
    instance-of p1, p1, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/smedialink/storage/data/datasource/boost/WalletBoostDataSourceFactory;->ethWalletApproveDataSource:Lcom/smedialink/storage/data/datasource/approve/WalletApproveDataSource;

    :goto_0
    return-object p1

    .line 27
    :cond_2
    sget-object p1, Lcom/smedialink/storage/data/datasource/base/DataSourceFactory;->Companion:Lcom/smedialink/storage/data/datasource/base/DataSourceFactory$Companion;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/smedialink/storage/data/datasource/base/DataSourceFactory$Companion;->unsupportedDataSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
