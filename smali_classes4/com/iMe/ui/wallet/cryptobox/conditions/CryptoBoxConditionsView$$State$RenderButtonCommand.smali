.class public Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderButtonCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CryptoBoxConditionsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderButtonCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final buttonType:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State;Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;)V
    .locals 1

    .line 363
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "renderButton"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 365
    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderButtonCommand;->buttonType:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderButtonCommand;->buttonType:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;->renderButton(Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 359
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$RenderButtonCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;)V

    return-void
.end method
