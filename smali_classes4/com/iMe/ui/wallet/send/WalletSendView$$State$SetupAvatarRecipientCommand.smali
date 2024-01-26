.class public Lcom/iMe/ui/wallet/send/WalletSendView$$State$SetupAvatarRecipientCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/send/WalletSendView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupAvatarRecipientCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/send/WalletSendView;",
        ">;"
    }
.end annotation


# instance fields
.field public final user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendView$$State;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    .line 776
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "setupAvatarRecipient"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 778
    iput-object p2, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$SetupAvatarRecipientCommand;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$SetupAvatarRecipientCommand;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/send/WalletSendView;->setupAvatarRecipient(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 772
    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendView$$State$SetupAvatarRecipientCommand;->apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V

    return-void
.end method
