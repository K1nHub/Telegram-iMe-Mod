.class public Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State$OpenCryptoBoxCreationScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CryptoBoxesView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenCryptoBoxCreationScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final presetNetwork:Lcom/iMe/storage/domain/model/crypto/Network;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 1

    .line 310
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openCryptoBoxCreationScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 312
    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State$OpenCryptoBoxCreationScreenCommand;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 313
    iput-object p3, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State$OpenCryptoBoxCreationScreenCommand;->presetNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;)V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State$OpenCryptoBoxCreationScreenCommand;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State$OpenCryptoBoxCreationScreenCommand;->presetNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;->openCryptoBoxCreationScreen(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/crypto/Network;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 304
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State$OpenCryptoBoxCreationScreenCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;)V

    return-void
.end method
