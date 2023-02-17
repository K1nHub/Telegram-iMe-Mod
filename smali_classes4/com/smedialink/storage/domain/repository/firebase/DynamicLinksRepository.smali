.class public interface abstract Lcom/smedialink/storage/domain/repository/firebase/DynamicLinksRepository;
.super Ljava/lang/Object;
.source "DynamicLinksRepository.kt"


# virtual methods
.method public abstract getLink(Lcom/smedialink/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/utils/system/AndroidActivityHolder;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/google/DynamicLinkData;",
            ">;>;"
        }
    .end annotation
.end method
