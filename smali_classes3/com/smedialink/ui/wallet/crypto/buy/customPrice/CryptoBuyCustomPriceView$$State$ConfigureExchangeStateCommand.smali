.class public Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CryptoBuyCustomPriceView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigureExchangeStateCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;",
        ">;"
    }
.end annotation


# instance fields
.field public final fromAmount:F

.field public final fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

.field public final toAmount:F

.field public final toCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State;FFLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;)V
    .locals 1

    .line 193
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "configureExchangeState"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 195
    iput p2, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;->fromAmount:F

    .line 196
    iput p3, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;->toAmount:F

    .line 197
    iput-object p4, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;->fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    .line 198
    iput-object p5, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;->toCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;)V
    .locals 4

    .line 203
    iget v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;->fromAmount:F

    iget v1, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;->toAmount:F

    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;->fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;->toCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;->configureExchangeState(FFLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 182
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;->apply(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;)V

    return-void
.end method
