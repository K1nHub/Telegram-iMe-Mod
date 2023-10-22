.class public final Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;
.super Ljava/lang/Object;
.source "WalletTransferDataSourceFactory.kt"

# interfaces
.implements Lcom/iMe/storage/data/datasource/base/DataSourceFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iMe/storage/data/datasource/base/DataSourceFactory<",
        "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
        "Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;",
        ">;"
    }
.end annotation


# instance fields
.field private final btcWalletTransferDataSource:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

.field private final evmWalletTransferDataSource:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

.field private final tonWalletTransferDataSource:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

.field private final tronWalletTransferDataSource:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;)V
    .locals 1

    const-string v0, "evmWalletTransferDataSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tonWalletTransferDataSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tronWalletTransferDataSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "btcWalletTransferDataSource"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->evmWalletTransferDataSource:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    .line 8
    iput-object p2, p0, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->tonWalletTransferDataSource:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    .line 9
    iput-object p3, p0, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->tronWalletTransferDataSource:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    .line 10
    iput-object p4, p0, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->btcWalletTransferDataSource:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    return-void
.end method


# virtual methods
.method public getDataSource(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;
    .locals 1

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 20
    iget-object p1, p0, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->btcWalletTransferDataSource:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->tronWalletTransferDataSource:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    goto :goto_0

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->tonWalletTransferDataSource:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    goto :goto_0

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->evmWalletTransferDataSource:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    :goto_0
    return-object p1
.end method
