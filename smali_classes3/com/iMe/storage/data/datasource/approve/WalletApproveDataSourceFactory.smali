.class public final Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSourceFactory;
.super Ljava/lang/Object;
.source "WalletApproveDataSourceFactory.kt"

# interfaces
.implements Lcom/iMe/storage/data/datasource/base/DataSourceFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSourceFactory$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iMe/storage/data/datasource/base/DataSourceFactory<",
        "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
        "Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSource;",
        ">;"
    }
.end annotation


# instance fields
.field private final ethApproveDataSource:Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSource;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSource;)V
    .locals 1

    const-string v0, "ethApproveDataSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSourceFactory;->ethApproveDataSource:Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSource;

    return-void
.end method


# virtual methods
.method public getDataSource(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSource;
    .locals 2

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSourceFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSourceFactory;->ethApproveDataSource:Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSource;

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
