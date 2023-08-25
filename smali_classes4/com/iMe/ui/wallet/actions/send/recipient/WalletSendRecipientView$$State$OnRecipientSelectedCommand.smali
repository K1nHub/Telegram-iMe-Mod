.class public Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OnRecipientSelectedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendRecipientView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnRecipientSelectedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final isContactSelected:Z


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 202
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "onRecipientSelected"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 204
    iput-object p2, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OnRecipientSelectedCommand;->id:Ljava/lang/String;

    .line 205
    iput-object p3, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OnRecipientSelectedCommand;->address:Ljava/lang/String;

    .line 206
    iput-boolean p4, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OnRecipientSelectedCommand;->isContactSelected:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;)V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OnRecipientSelectedCommand;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OnRecipientSelectedCommand;->address:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OnRecipientSelectedCommand;->isContactSelected:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->onRecipientSelected(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 194
    check-cast p1, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OnRecipientSelectedCommand;->apply(Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;)V

    return-void
.end method
