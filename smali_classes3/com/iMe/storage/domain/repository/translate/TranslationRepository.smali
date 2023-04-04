.class public interface abstract Lcom/iMe/storage/domain/repository/translate/TranslationRepository;
.super Ljava/lang/Object;
.source "TranslationRepository.kt"


# virtual methods
.method public abstract languages()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/translation/TranslationLanguage;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/translation/Translation;",
            ">;>;"
        }
    .end annotation
.end method
