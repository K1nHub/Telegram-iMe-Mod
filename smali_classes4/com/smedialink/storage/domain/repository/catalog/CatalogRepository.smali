.class public interface abstract Lcom/smedialink/storage/domain/repository/catalog/CatalogRepository;
.super Ljava/lang/Object;
.source "CatalogRepository.kt"


# virtual methods
.method public abstract getAllCampaigns(Lcom/smedialink/storage/domain/model/catalog/ChatType;Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/catalog/ChatType;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/catalog/CampaignsCursored;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getCampaignsByCategoryId(JLcom/smedialink/storage/domain/model/catalog/ChatType;Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/smedialink/storage/domain/model/catalog/ChatType;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/catalog/CampaignsCursored;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getCatalogPreview(Lcom/smedialink/storage/domain/model/catalog/ChatType;Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/catalog/ChatType;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/catalog/CategoriesPreviewsCursored;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getCategories(Lcom/smedialink/storage/domain/model/catalog/ChatType;Z)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/catalog/ChatType;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/CategoryWithCounter;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract getLanguages(Z)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;",
            ">;>;>;"
        }
    .end annotation
.end method
