.class public Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView$$State$SetupNetworkTypeCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingOperationsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupNetworkTypeCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView$$State;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    .line 286
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "setupNetworkType"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 288
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView$$State$SetupNetworkTypeCommand;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView$$State$SetupNetworkTypeCommand;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->setupNetworkType(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 282
    check-cast p1, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView$$State$SetupNetworkTypeCommand;->apply(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;)V

    return-void
.end method
