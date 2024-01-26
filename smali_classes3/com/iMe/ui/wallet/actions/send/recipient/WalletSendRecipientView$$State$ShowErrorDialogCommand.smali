.class public Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowErrorDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendRecipientView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowErrorDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;",
        ">;"
    }
.end annotation


# instance fields
.field public final animatedIcon:I

.field public final buttonText:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final recipientId:Ljava/lang/Long;

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .line 252
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showErrorDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 254
    iput p2, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowErrorDialogCommand;->animatedIcon:I

    .line 255
    iput-object p3, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowErrorDialogCommand;->title:Ljava/lang/String;

    .line 256
    iput-object p4, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowErrorDialogCommand;->description:Ljava/lang/String;

    .line 257
    iput-object p5, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowErrorDialogCommand;->buttonText:Ljava/lang/String;

    .line 258
    iput-object p6, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowErrorDialogCommand;->recipientId:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;)V
    .locals 6

    .line 263
    iget v1, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowErrorDialogCommand;->animatedIcon:I

    iget-object v2, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowErrorDialogCommand;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowErrorDialogCommand;->description:Ljava/lang/String;

    iget-object v4, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowErrorDialogCommand;->buttonText:Ljava/lang/String;

    iget-object v5, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowErrorDialogCommand;->recipientId:Ljava/lang/Long;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->showErrorDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 239
    check-cast p1, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowErrorDialogCommand;->apply(Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;)V

    return-void
.end method
