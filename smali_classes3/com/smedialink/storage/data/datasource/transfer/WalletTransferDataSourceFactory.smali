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
        "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
        "Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;",
        ">;"
    }
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final evmWalletTransferDataSource:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;

.field private final tonWalletTransferDataSource:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;)V
    .locals 1

    const-string v0, "evmWalletTransferDataSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tonWalletTransferDataSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->evmWalletTransferDataSource:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;

    .line 10
    iput-object p2, p0, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->tonWalletTransferDataSource:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;

    .line 11
    iput-object p3, p0, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    return-void
.end method


# virtual methods
.method public getDataSource(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;
    .locals 1

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->isCryptoTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object p1

    sget-object v0, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 21
    iget-object p1, p0, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->tonWalletTransferDataSource:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->evmWalletTransferDataSource:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;

    :goto_0
    return-object p1

    .line 23
    :cond_2
    sget-object v0, Lcom/smedialink/storage/data/datasource/base/DataSourceFactory;->Companion:Lcom/smedialink/storage/data/datasource/base/DataSourceFactory$Companion;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/data/datasource/base/DataSourceFactory$Companion;->unsupportedDataSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
