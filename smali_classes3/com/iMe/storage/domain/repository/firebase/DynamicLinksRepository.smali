.class public interface abstract Lcom/iMe/storage/domain/repository/firebase/DynamicLinksRepository;
.super Ljava/lang/Object;
.source "DynamicLinksRepository.kt"


# virtual methods
.method public abstract getLink(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/google/DynamicLinkData;",
            ">;>;"
        }
    .end annotation
.end method
