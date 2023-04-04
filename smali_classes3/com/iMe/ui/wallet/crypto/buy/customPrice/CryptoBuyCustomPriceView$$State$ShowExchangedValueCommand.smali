.class public Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowExchangedValueCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CryptoBuyCustomPriceView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowExchangedValueCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;",
        ">;"
    }
.end annotation


# instance fields
.field public final value:F


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State;F)V
    .locals 1

    .line 211
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showExchangedValue"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 213
    iput p2, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowExchangedValueCommand;->value:F

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;)V
    .locals 1

    .line 218
    iget v0, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowExchangedValueCommand;->value:F

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;->showExchangedValue(F)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 207
    check-cast p1, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowExchangedValueCommand;->apply(Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;)V

    return-void
.end method
