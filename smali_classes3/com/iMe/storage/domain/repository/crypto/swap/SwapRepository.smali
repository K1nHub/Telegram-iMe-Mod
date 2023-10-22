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

.method public abstract getApproveTokensInfo(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;Ljava/util/List;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/Token;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract getAvailableTokensToSwap(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;",
            "Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/common/CursoredData<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract getQuoteToSwap(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/wallet/token/Token;Lcom/iMe/storage/domain/model/wallet/token/Token;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/TradeType;Ljava/lang/Float;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;",
            "Lcom/iMe/storage/domain/model/wallet/token/Token;",
            "Lcom/iMe/storage/domain/model/wallet/token/Token;",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/wallet/swap/TradeType;",
            "Ljava/lang/Float;",
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
