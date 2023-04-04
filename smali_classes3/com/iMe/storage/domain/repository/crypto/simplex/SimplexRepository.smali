.class public interface abstract Lcom/iMe/storage/domain/repository/crypto/simplex/SimplexRepository;
.super Ljava/lang/Object;
.source "SimplexRepository.kt"


# virtual methods
.method public abstract createBuyingCryptoPayment(Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;FILjava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/simplex/Currency;",
            "Lcom/iMe/storage/domain/model/crypto/simplex/Currency;",
            "FI",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoPayment;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getBuyingCryptoQuote(Ljava/util/List;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;",
            ">;>;>;"
        }
    .end annotation
.end method
