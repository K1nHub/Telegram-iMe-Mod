.class public Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderSelectedChatCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateCryptoBoxView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderSelectedChatCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;",
        ">;"
    }
.end annotation


# instance fields
.field public final chat:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    .line 540
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "renderSelectedChat"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 542
    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderSelectedChatCommand;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;)V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderSelectedChatCommand;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->renderSelectedChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 536
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderSelectedChatCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;)V

    return-void
.end method
