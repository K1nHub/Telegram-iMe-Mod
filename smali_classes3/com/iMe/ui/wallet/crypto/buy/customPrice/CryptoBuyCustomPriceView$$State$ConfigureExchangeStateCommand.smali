.class public Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CryptoBuyCustomPriceView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigureExchangeStateCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;",
        ">;"
    }
.end annotation


# instance fields
.field public final fromAmount:F

.field public final fromCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

.field public final toAmount:F

.field public final toCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State;FFLcom/iMe/storage/domain/model/crypto/simplex/Currency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;)V
    .locals 1

    .line 211
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "configureExchangeState"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 213
    iput p2, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;->fromAmount:F

    .line 214
    iput p3, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;->toAmount:F

    .line 215
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;->fromCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    .line 216
    iput-object p5, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;->toCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;)V
    .locals 4

    .line 221
    iget v0, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;->fromAmount:F

    iget v1, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;->toAmount:F

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;->fromCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;->toCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;->configureExchangeState(FFLcom/iMe/storage/domain/model/crypto/simplex/Currency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 200
    check-cast p1, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;->apply(Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;)V

    return-void
.end method
