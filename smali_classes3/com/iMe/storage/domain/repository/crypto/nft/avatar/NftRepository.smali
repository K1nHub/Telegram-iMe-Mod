.class public interface abstract Lcom/iMe/storage/domain/repository/crypto/nft/avatar/NftRepository;
.super Ljava/lang/Object;
.source "NftRepository.kt"


# virtual methods
.method public abstract getOwnNftItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/nft/NftToken;",
            ">;>;>;"
        }
    .end annotation
.end method
