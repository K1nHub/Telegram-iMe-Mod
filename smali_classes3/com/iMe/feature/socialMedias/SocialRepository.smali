.class public interface abstract Lcom/iMe/feature/socialMedias/SocialRepository;
.super Ljava/lang/Object;
.source "SocialRepository.kt"


# virtual methods
.method public abstract getAllSocial(Lcom/iMe/feature/profile/ProfileData;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/profile/ProfileData;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/feature/socialMedias/SocialDomain;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAuthResult(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/model/twitter/SocialAuthResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract listenSocialChanges()Lcom/jakewharton/rxrelay2/PublishRelay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jakewharton/rxrelay2/PublishRelay<",
            "Lcom/iMe/model/twitter/SocialAuthResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract logoutSocial(Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/feature/socialMedias/SocialNetwork;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/profile/ProfileData;",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end method
