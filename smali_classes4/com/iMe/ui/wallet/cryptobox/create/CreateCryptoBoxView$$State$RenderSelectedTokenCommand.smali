.class public Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderSelectedTokenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateCryptoBoxView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderSelectedTokenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;",
        ">;"
    }
.end annotation


# instance fields
.field public final decimals:I

.field public final tokenBalanceText:Ljava/lang/String;

.field public final tokenLogoUrl:Ljava/lang/String;

.field public final tokenText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 562
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "renderSelectedToken"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 564
    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderSelectedTokenCommand;->tokenText:Ljava/lang/String;

    .line 565
    iput-object p3, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderSelectedTokenCommand;->tokenLogoUrl:Ljava/lang/String;

    .line 566
    iput p4, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderSelectedTokenCommand;->decimals:I

    .line 567
    iput-object p5, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderSelectedTokenCommand;->tokenBalanceText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;)V
    .locals 4

    .line 572
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderSelectedTokenCommand;->tokenText:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderSelectedTokenCommand;->tokenLogoUrl:Ljava/lang/String;

    iget v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderSelectedTokenCommand;->decimals:I

    iget-object v3, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderSelectedTokenCommand;->tokenBalanceText:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->renderSelectedToken(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 551
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderSelectedTokenCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;)V

    return-void
.end method
