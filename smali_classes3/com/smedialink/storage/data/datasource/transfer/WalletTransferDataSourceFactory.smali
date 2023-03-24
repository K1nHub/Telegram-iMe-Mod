.class public final Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;
.super Ljava/lang/Object;
.source "WalletTransferDataSourceFactory.kt"

# interfaces
.implements Lcom/smedialink/storage/data/datasource/base/DataSourceFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/smedialink/storage/data/datasource/base/DataSourceFactory<",
        "Lkotlin/Pair<",
        "+",
        "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
        "+",
        "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
        ">;",
        "Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;",
        ">;"
    }
.end annotation


# instance fields
.field private final evmWalletTransferDataSource:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;

.field private final tonWalletTransferDataSource:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;

.field private final tronWalletTransferDataSource:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;)V
    .locals 1

    const-string v0, "evmWalletTransferDataSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tonWalletTransferDataSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tronWalletTransferDataSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->evmWalletTransferDataSource:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;

    .line 9
    iput-object p2, p0, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->tonWalletTransferDataSource:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;

    .line 10
    iput-object p3, p0, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->tronWalletTransferDataSource:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;

    return-void
.end method


# virtual methods
.method public getDataSource(Lkotlin/Pair;)Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "+",
            "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
            ">;)",
            "Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;"
        }
    .end annotation

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 18
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->isCryptoTokens()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    sget-object v0, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 21
    iget-object p1, p0, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->tronWalletTransferDataSource:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->tonWalletTransferDataSource:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;

    goto :goto_0

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->evmWalletTransferDataSource:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;

    :goto_0
    return-object p1

    .line 21
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    sget-object v1, Lcom/smedialink/storage/data/datasource/base/DataSourceFactory;->Companion:Lcom/smedialink/storage/data/datasource/base/DataSourceFactory$Companion;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smedialink/storage/data/datasource/base/DataSourceFactory$Companion;->unsupportedDataSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
