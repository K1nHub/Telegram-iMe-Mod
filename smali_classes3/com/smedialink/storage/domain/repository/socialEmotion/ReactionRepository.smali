.class public interface abstract Lcom/smedialink/storage/domain/repository/socialEmotion/ReactionRepository;
.super Ljava/lang/Object;
.source "ReactionRepository.kt"


# virtual methods
.method public abstract prepareLikeMessage(Lcom/smedialink/storage/data/network/model/request/reaction/ReactionRequestData;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/reaction/ReactionRequestData;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/data/network/model/request/reaction/ReactionMessageResult;",
            ">;>;"
        }
    .end annotation
.end method
