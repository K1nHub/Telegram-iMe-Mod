.class public interface abstract Lcom/smedialink/storage/domain/repository/crypto/nft/avatar/NftAvatarRepository;
.super Ljava/lang/Object;
.source "NftAvatarRepository.kt"


# virtual methods
.method public abstract getNftAvatars(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;",
            ">;>;>;"
        }
    .end annotation
.end method
