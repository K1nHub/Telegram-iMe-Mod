.class public Lcom/iMe/ui/chat/ChatView$$State$ShowCryptoBoxInfoCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ChatView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/chat/ChatView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowCryptoBoxInfoCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/chat/ChatView;",
        ">;"
    }
.end annotation


# instance fields
.field public final chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final cryptoBoxInfo:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;


# direct methods
.method constructor <init>(Lcom/iMe/ui/chat/ChatView$$State;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    .line 298
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showCryptoBoxInfo"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 300
    iput-object p2, p0, Lcom/iMe/ui/chat/ChatView$$State$ShowCryptoBoxInfoCommand;->cryptoBoxInfo:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    .line 301
    iput-object p3, p0, Lcom/iMe/ui/chat/ChatView$$State$ShowCryptoBoxInfoCommand;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/chat/ChatView;)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/iMe/ui/chat/ChatView$$State$ShowCryptoBoxInfoCommand;->cryptoBoxInfo:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    iget-object v1, p0, Lcom/iMe/ui/chat/ChatView$$State$ShowCryptoBoxInfoCommand;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/chat/ChatView;->showCryptoBoxInfo(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 292
    check-cast p1, Lcom/iMe/ui/chat/ChatView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/chat/ChatView$$State$ShowCryptoBoxInfoCommand;->apply(Lcom/iMe/ui/chat/ChatView;)V

    return-void
.end method
