.class public Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView$$State$ShowChooseNetworkDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingOperationsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowChooseNetworkDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final availableNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            ">;"
        }
    .end annotation
.end field

.field public final network:Lcom/iMe/model/wallet/crypto/NetworkItem;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView$$State;Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            ">;)V"
        }
    .end annotation

    .line 329
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showChooseNetworkDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 331
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView$$State$ShowChooseNetworkDialogCommand;->network:Lcom/iMe/model/wallet/crypto/NetworkItem;

    .line 332
    iput-object p3, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView$$State$ShowChooseNetworkDialogCommand;->availableNetworks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;)V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView$$State$ShowChooseNetworkDialogCommand;->network:Lcom/iMe/model/wallet/crypto/NetworkItem;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView$$State$ShowChooseNetworkDialogCommand;->availableNetworks:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 322
    check-cast p1, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView$$State$ShowChooseNetworkDialogCommand;->apply(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;)V

    return-void
.end method
