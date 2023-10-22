.class public abstract Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork;
.super Lcom/iMe/storage/domain/model/wallet/Hint;
.source "Hint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/Hint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChangeNetwork"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$CryptoHomeScreen;,
        Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$SwapScreen;,
        Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$TransactionsScreen;,
        Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$WalletConnectScreen;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 12
    sget-object v0, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/iMe/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {v0}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->getEnvironmentInformation()Lcom/iMe/storage/domain/model/common/EnvironmentInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->getHintDefaultShowsCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/iMe/storage/domain/model/wallet/Hint;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork;-><init>(Ljava/lang/String;)V

    return-void
.end method
