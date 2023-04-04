.class public interface abstract Lcom/iMe/storage/domain/repository/crypto/swap/SwapRepository;
.super Ljava/lang/Object;
.source "SwapRepository.kt"


# virtual methods
.method public abstract approveToken(Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getApproveTokensInfo(Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            "Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract getAvailableTokensToSwap(Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            "Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract getQuoteToSwap(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/TradeType;FLcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/wallet/swap/TradeType;",
            "F",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            "Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract swap(Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method
