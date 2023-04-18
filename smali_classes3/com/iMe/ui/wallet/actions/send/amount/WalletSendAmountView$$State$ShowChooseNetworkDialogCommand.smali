.class public Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowChooseNetworkDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendAmountView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowChooseNetworkDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Lcom/iMe/fork/utils/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            ">;"
        }
    .end annotation
.end field

.field public final availableNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            ">;"
        }
    .end annotation
.end field

.field public final networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Ljava/util/List;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            ">;",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            ">;)V"
        }
    .end annotation

    .line 435
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showChooseNetworkDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 437
    iput-object p2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowChooseNetworkDialogCommand;->availableNetworks:Ljava/util/List;

    .line 438
    iput-object p3, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowChooseNetworkDialogCommand;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 439
    iput-object p4, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowChooseNetworkDialogCommand;->action:Lcom/iMe/fork/utils/Callbacks$Callback1;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;)V
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowChooseNetworkDialogCommand;->availableNetworks:Ljava/util/List;

    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowChooseNetworkDialogCommand;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    iget-object v2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowChooseNetworkDialogCommand;->action:Lcom/iMe/fork/utils/Callbacks$Callback1;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->showChooseNetworkDialog(Ljava/util/List;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 426
    check-cast p1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowChooseNetworkDialogCommand;->apply(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;)V

    return-void
.end method
