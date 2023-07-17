.class public Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowChooseNetworkDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TokenManagementView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowChooseNetworkDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final availableNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;"
        }
    .end annotation
.end field

.field public final network:Lcom/iMe/storage/domain/model/crypto/Network;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 606
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showChooseNetworkDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 608
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowChooseNetworkDialogCommand;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    .line 609
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowChooseNetworkDialogCommand;->availableNetworks:Ljava/util/List;

    .line 610
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowChooseNetworkDialogCommand;->action:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;)V
    .locals 3

    .line 615
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowChooseNetworkDialogCommand;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowChooseNetworkDialogCommand;->availableNetworks:Ljava/util/List;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowChooseNetworkDialogCommand;->action:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 597
    check-cast p1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowChooseNetworkDialogCommand;->apply(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;)V

    return-void
.end method
