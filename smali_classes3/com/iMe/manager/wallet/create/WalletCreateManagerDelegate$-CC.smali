.class public final synthetic Lcom/iMe/manager/wallet/create/WalletCreateManagerDelegate$-CC;
.super Ljava/lang/Object;
.source "WalletCreateManagerDelegate.kt"


# direct methods
.method public static synthetic startWalletCreationFlow$default(Lcom/iMe/manager/wallet/create/WalletCreateManagerDelegate;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;Lcom/iMe/storage/domain/model/crypto/BlockchainType;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 15
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/iMe/manager/wallet/create/WalletCreateManagerDelegate;->startWalletCreationFlow(Lcom/iMe/model/wallet/crypto/create/WalletCreationType;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startWalletCreationFlow"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
