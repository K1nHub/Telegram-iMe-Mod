.class public final Lcom/smedialink/ui/recognition/PhotoViewerPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "PhotoViewerPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/recognition/PhotoView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPhotoViewerPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhotoViewerPresenter.kt\ncom/smedialink/ui/recognition/PhotoViewerPresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n*L\n1#1,66:1\n39#2,6:67\n39#2,6:73\n*S KotlinDebug\n*F\n+ 1 PhotoViewerPresenter.kt\ncom/smedialink/ui/recognition/PhotoViewerPresenter\n*L\n29#1:67,6\n51#1:73,6\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final googleServicesInteractor:Lcom/smedialink/storage/domain/interactor/google/GoogleServicesInteractor;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/interactor/google/GoogleServicesInteractor;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "googleServicesInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/smedialink/ui/recognition/PhotoViewerPresenter;->googleServicesInteractor:Lcom/smedialink/storage/domain/interactor/google/GoogleServicesInteractor;

    .line 18
    iput-object p2, p0, Lcom/smedialink/ui/recognition/PhotoViewerPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 19
    iput-object p3, p0, Lcom/smedialink/ui/recognition/PhotoViewerPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/recognition/PhotoViewerPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/smedialink/ui/recognition/PhotoViewerPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method


# virtual methods
.method public final getPhotoObjects(Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "photo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/smedialink/ui/recognition/PhotoViewerPresenter;->googleServicesInteractor:Lcom/smedialink/storage/domain/interactor/google/GoogleServicesInteractor;

    .line 48
    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/interactor/google/GoogleServicesInteractor;->getPhotoObjects(Landroid/graphics/Bitmap;)Lio/reactivex/Observable;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/smedialink/ui/recognition/PhotoViewerPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "googleServicesInteractor\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 51
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/smedialink/ui/recognition/PhotoViewerPresenter$getPhotoObjects$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/recognition/PhotoViewerPresenter$getPhotoObjects$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/recognition/PhotoViewerPresenter;)V

    new-instance v2, Lcom/smedialink/ui/recognition/PhotoViewerPresenter$getPhotoObjects$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v0}, Lcom/smedialink/ui/recognition/PhotoViewerPresenter$getPhotoObjects$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {p1, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 62
    invoke-static {p0, p1, v3, v0, v3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final getPhotoText(Landroid/graphics/Bitmap;Z)V
    .locals 4

    const-string v0, "imageBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/smedialink/ui/recognition/PhotoViewerPresenter;->googleServicesInteractor:Lcom/smedialink/storage/domain/interactor/google/GoogleServicesInteractor;

    .line 26
    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/interactor/google/GoogleServicesInteractor;->getPhotoText(Landroid/graphics/Bitmap;)Lio/reactivex/Observable;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/smedialink/ui/recognition/PhotoViewerPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "googleServicesInteractor\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/smedialink/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p2, p0}, Lcom/smedialink/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;-><init>(ZLcom/smedialink/ui/recognition/PhotoViewerPresenter;)V

    new-instance p2, Lcom/smedialink/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v0}, Lcom/smedialink/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {p1, v1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 43
    invoke-static {p0, p1, v3, p2, v3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method
