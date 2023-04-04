.class public final Lcom/iMe/storage/domain/interactor/google/GoogleServicesInteractor;
.super Ljava/lang/Object;
.source "GoogleServicesInteractor.kt"


# instance fields
.field private final googleServicesRepository:Lcom/iMe/storage/domain/repository/google/GoogleServicesRepository;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/repository/google/GoogleServicesRepository;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "googleServicesRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/google/GoogleServicesInteractor;->googleServicesRepository:Lcom/iMe/storage/domain/repository/google/GoogleServicesRepository;

    .line 13
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/google/GoogleServicesInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method


# virtual methods
.method public final getPhotoObjects(Landroid/graphics/Bitmap;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/google/RecognizedImageModel;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "photo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/google/GoogleServicesInteractor;->googleServicesRepository:Lcom/iMe/storage/domain/repository/google/GoogleServicesRepository;

    .line 27
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/google/GoogleServicesRepository;->getPhotoObjects(Landroid/graphics/Bitmap;)Lio/reactivex/Observable;

    move-result-object p1

    .line 28
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/google/GoogleServicesInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "googleServicesRepository\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getPhotoText(Landroid/graphics/Bitmap;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "photo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/google/GoogleServicesInteractor;->googleServicesRepository:Lcom/iMe/storage/domain/repository/google/GoogleServicesRepository;

    .line 23
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/google/GoogleServicesRepository;->getPhotoText(Landroid/graphics/Bitmap;)Lio/reactivex/Observable;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/google/GoogleServicesInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "googleServicesRepository\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getVoiceText(Ljava/io/File;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "langCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/google/GoogleServicesInteractor;->googleServicesRepository:Lcom/iMe/storage/domain/repository/google/GoogleServicesRepository;

    .line 19
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/google/GoogleServicesRepository;->getVoiceText(Ljava/io/File;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/google/GoogleServicesInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "googleServicesRepository\u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
