.class public interface abstract Lcom/iMe/storage/domain/repository/crypto/simplex/SimplexRepository;
.super Ljava/lang/Object;
.source "SimplexRepository.kt"


# virtual methods
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
