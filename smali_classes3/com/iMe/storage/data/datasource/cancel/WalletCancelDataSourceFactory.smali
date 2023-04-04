.class public final Lcom/iMe/storage/data/datasource/cancel/WalletCancelDataSourceFactory;
.super Ljava/lang/Object;
.source "WalletCancelDataSourceFactory.kt"

# interfaces
.implements Lcom/iMe/storage/data/datasource/base/DataSourceFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iMe/storage/data/datasource/base/DataSourceFactory<",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
        "Lcom/iMe/storage/data/datasource/cancel/WalletCancelDataSource;",
        ">;"
    }
.end annotation


# instance fields
.field private final ethCancelDataSource:Lcom/iMe/storage/data/datasource/cancel/WalletCancelDataSource;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/datasource/cancel/WalletCancelDataSource;)V
    .locals 1

    const-string v0, "ethCancelDataSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/storage/data/datasource/cancel/WalletCancelDataSourceFactory;->ethCancelDataSource:Lcom/iMe/storage/data/datasource/cancel/WalletCancelDataSource;

    return-void
.end method


# virtual methods
.method public getDataSource(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)Lcom/iMe/storage/data/datasource/cancel/WalletCancelDataSource;
    .locals 2

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->isCryptoTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/datasource/cancel/WalletCancelDataSourceFactory;->ethCancelDataSource:Lcom/iMe/storage/data/datasource/cancel/WalletCancelDataSource;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    sget-object v1, Lcom/iMe/storage/data/datasource/base/DataSourceFactory;->Companion:Lcom/iMe/storage/data/datasource/base/DataSourceFactory$Companion;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/iMe/storage/data/datasource/base/DataSourceFactory$Companion;->unsupportedDataSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
