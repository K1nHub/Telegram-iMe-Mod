.class public Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendAmountView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowSelectTokenDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Lorg/fork/utils/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;"
        }
    .end annotation
.end field

.field public final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field public final onlyPositiveBalance:Z

.field public final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;"
        }
    .end annotation
.end field

.field public final type:Lcom/smedialink/model/wallet/select/SelectableType;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Lcom/smedialink/model/wallet/select/SelectableType;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ZLorg/fork/utils/Callbacks$Callback1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/wallet/select/SelectableType;",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Z",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;)V"
        }
    .end annotation

    .line 393
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showSelectTokenDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 395
    iput-object p2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;->type:Lcom/smedialink/model/wallet/select/SelectableType;

    .line 396
    iput-object p3, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;->tokens:Ljava/util/List;

    .line 397
    iput-object p4, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 398
    iput-boolean p5, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;->onlyPositiveBalance:Z

    .line 399
    iput-object p6, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;->action:Lorg/fork/utils/Callbacks$Callback1;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;)V
    .locals 6

    .line 404
    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;->type:Lcom/smedialink/model/wallet/select/SelectableType;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;->tokens:Ljava/util/List;

    iget-object v3, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iget-boolean v4, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;->onlyPositiveBalance:Z

    iget-object v5, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;->action:Lorg/fork/utils/Callbacks$Callback1;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;->showSelectTokenDialog(Lcom/smedialink/model/wallet/select/SelectableType;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ZLorg/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 379
    check-cast p1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;->apply(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;)V

    return-void
.end method
