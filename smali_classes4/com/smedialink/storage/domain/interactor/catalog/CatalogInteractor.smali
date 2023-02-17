.class public final Lcom/smedialink/storage/domain/interactor/catalog/CatalogInteractor;
.super Ljava/lang/Object;
.source "CatalogInteractor.kt"


# instance fields
.field private final catalogRepository:Lcom/smedialink/storage/domain/repository/catalog/CatalogRepository;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/repository/catalog/CatalogRepository;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "catalogRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/catalog/CatalogInteractor;->catalogRepository:Lcom/smedialink/storage/domain/repository/catalog/CatalogRepository;

    .line 11
    iput-object p2, p0, Lcom/smedialink/storage/domain/interactor/catalog/CatalogInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method


# virtual methods
.method public final getAllCampaigns(Lcom/smedialink/storage/domain/model/catalog/ChatType;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
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

    const-string v0, "chatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/catalog/CatalogInteractor;->catalogRepository:Lcom/smedialink/storage/domain/repository/catalog/CatalogRepository;

    .line 39
    invoke-interface {v0, p1, p2}, Lcom/smedialink/storage/domain/repository/catalog/CatalogRepository;->getAllCampaigns(Lcom/smedialink/storage/domain/model/catalog/ChatType;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 43
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/smedialink/storage/domain/interactor/catalog/CatalogInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "catalogRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getCampaignsByCategoryId(JLcom/smedialink/storage/domain/model/catalog/ChatType;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
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

    const-string v0, "chatType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/catalog/CatalogInteractor;->catalogRepository:Lcom/smedialink/storage/domain/repository/catalog/CatalogRepository;

    .line 53
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/smedialink/storage/domain/repository/catalog/CatalogRepository;->getCampaignsByCategoryId(JLcom/smedialink/storage/domain/model/catalog/ChatType;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 58
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {p2, p3, p4, p3}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 59
    iget-object p2, p0, Lcom/smedialink/storage/domain/interactor/catalog/CatalogInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "catalogRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getCatalogPreview(Lcom/smedialink/storage/domain/model/catalog/ChatType;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
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

    const-string v0, "chatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/catalog/CatalogInteractor;->catalogRepository:Lcom/smedialink/storage/domain/repository/catalog/CatalogRepository;

    .line 25
    invoke-interface {v0, p1, p2}, Lcom/smedialink/storage/domain/repository/catalog/CatalogRepository;->getCatalogPreview(Lcom/smedialink/storage/domain/model/catalog/ChatType;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 26
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/smedialink/storage/domain/interactor/catalog/CatalogInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "catalogRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getCategories(Lcom/smedialink/storage/domain/model/catalog/ChatType;Z)Lio/reactivex/Observable;
    .locals 1
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

    const-string v0, "chatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/catalog/CatalogInteractor;->catalogRepository:Lcom/smedialink/storage/domain/repository/catalog/CatalogRepository;

    .line 31
    invoke-interface {v0, p1, p2}, Lcom/smedialink/storage/domain/repository/catalog/CatalogRepository;->getCategories(Lcom/smedialink/storage/domain/model/catalog/ChatType;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/smedialink/storage/domain/interactor/catalog/CatalogInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "catalogRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getLanguages()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;",
            ">;>;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/catalog/CatalogInteractor;->catalogRepository:Lcom/smedialink/storage/domain/repository/catalog/CatalogRepository;

    const/4 v1, 0x0

    .line 16
    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/repository/catalog/CatalogRepository;->getLanguages(Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 17
    sget-object v1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/smedialink/storage/domain/interactor/catalog/CatalogInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "catalogRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
