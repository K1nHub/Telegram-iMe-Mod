.class public interface abstract Lcom/iMe/storage/domain/repository/crypto/airdrop/AirdropRepository;
.super Ljava/lang/Object;
.source "AirdropRepository.kt"


# virtual methods
.method public abstract checkAirdropStart(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getTokensByAirdrop(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract registerInAirdrop(Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method
