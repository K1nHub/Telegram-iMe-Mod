.class public Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OnRecipientSelectedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendRecipientView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnRecipientSelectedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/lang/String;

.field public final contactSelected:Z

.field public final id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 186
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "onRecipientSelected"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 188
    iput-object p2, p0, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OnRecipientSelectedCommand;->id:Ljava/lang/String;

    .line 189
    iput-object p3, p0, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OnRecipientSelectedCommand;->address:Ljava/lang/String;

    .line 190
    iput-boolean p4, p0, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OnRecipientSelectedCommand;->contactSelected:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView;)V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OnRecipientSelectedCommand;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OnRecipientSelectedCommand;->address:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OnRecipientSelectedCommand;->contactSelected:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;->onRecipientSelected(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 178
    check-cast p1, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OnRecipientSelectedCommand;->apply(Lcom/smedialink/ui/wallet/actions/send/recipient/WalletSendRecipientView;)V

    return-void
.end method
