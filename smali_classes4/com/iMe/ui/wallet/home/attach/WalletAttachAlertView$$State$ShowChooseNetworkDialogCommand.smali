.class public Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowChooseNetworkDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletAttachAlertView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowChooseNetworkDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;",
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
.method constructor <init>(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
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

    .line 353
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "showChooseNetworkDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 355
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowChooseNetworkDialogCommand;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    .line 356
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowChooseNetworkDialogCommand;->availableNetworks:Ljava/util/List;

    .line 357
    iput-object p4, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowChooseNetworkDialogCommand;->action:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;)V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowChooseNetworkDialogCommand;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowChooseNetworkDialogCommand;->availableNetworks:Ljava/util/List;

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowChooseNetworkDialogCommand;->action:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;->showChooseNetworkDialog(Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 344
    check-cast p1, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowChooseNetworkDialogCommand;->apply(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;)V

    return-void
.end method
