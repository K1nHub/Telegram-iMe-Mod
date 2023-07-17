.class public interface abstract Lcom/iMe/storage/domain/repository/crypto/nft/avatar/NftAvatarRepository;
.super Ljava/lang/Object;
.source "NftAvatarRepository.kt"


# virtual methods
.method public abstract getNftAvatars(Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;",
            ">;>;>;"
        }
    .end annotation
.end method
