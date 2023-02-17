.class public Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowRecipientWalletNotActivatedErrorCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendRecipientView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowRecipientWalletNotActivatedErrorCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView;",
        ">;"
    }
.end annotation


# instance fields
.field public final buttonText:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 229
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showRecipientWalletNotActivatedError"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 231
    iput-object p2, p0, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowRecipientWalletNotActivatedErrorCommand;->title:Ljava/lang/String;

    .line 232
    iput-object p3, p0, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowRecipientWalletNotActivatedErrorCommand;->description:Ljava/lang/String;

    .line 233
    iput-object p4, p0, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowRecipientWalletNotActivatedErrorCommand;->buttonText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView;)V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowRecipientWalletNotActivatedErrorCommand;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowRecipientWalletNotActivatedErrorCommand;->description:Ljava/lang/String;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowRecipientWalletNotActivatedErrorCommand;->buttonText:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;->showRecipientWalletNotActivatedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 221
    check-cast p1, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowRecipientWalletNotActivatedErrorCommand;->apply(Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView;)V

    return-void
.end method
