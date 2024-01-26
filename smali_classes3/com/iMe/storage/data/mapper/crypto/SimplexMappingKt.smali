.class public final Lcom/iMe/storage/data/mapper/crypto/SimplexMappingKt;
.super Ljava/lang/Object;
.source "SimplexMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;)Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->getQuoteId()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->getFiatMoneyAmount()F

    move-result v1

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse$CryptoQuote;->getDigitalMoneyAmount()F

    move-result p0

    .line 9
    new-instance v2, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    invoke-direct {v2, v0, p0, v1}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;-><init>(Ljava/lang/String;FF)V

    return-object v2
.end method

.method public static final mapToRequest(Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;)Lcom/iMe/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/iMe/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->getDigitalCurrency()Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/model/crypto/simplex/Currency;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->getFiatCurrency()Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/model/crypto/simplex/Currency;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->getRequestedCurrency()Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/model/crypto/simplex/Currency;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->getAmount()F

    move-result v5

    .line 21
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->getNetworkId()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    return-object v0
.end method
