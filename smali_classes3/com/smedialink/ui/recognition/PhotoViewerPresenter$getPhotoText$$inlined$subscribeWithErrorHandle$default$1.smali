.class public final Lcom/smedialink/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/recognition/PhotoViewerPresenter;->getPhotoText(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 PhotoViewerPresenter.kt\ncom/smedialink/ui/recognition/PhotoViewerPresenter\n*L\n1#1,111:1\n30#2,13:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $withTranslateAdditionalAction$inlined:Z

.field final synthetic this$0:Lcom/smedialink/ui/recognition/PhotoViewerPresenter;


# direct methods
.method public constructor <init>(ZLcom/smedialink/ui/recognition/PhotoViewerPresenter;)V
    .locals 0

    iput-boolean p1, p0, Lcom/smedialink/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;->$withTranslateAdditionalAction$inlined:Z

    iput-object p2, p0, Lcom/smedialink/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/recognition/PhotoViewerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 114
    iget-boolean v0, p0, Lcom/smedialink/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;->$withTranslateAdditionalAction$inlined:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/recognition/PhotoViewerPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/recognition/PhotoView;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/recognition/PhotoView;->showTranslateDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/recognition/PhotoViewerPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/recognition/PhotoView;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/recognition/PhotoView;->showPhotoTextDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

    .line 118
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 119
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->PERMISSION_DENIED:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/smedialink/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/recognition/PhotoViewerPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/recognition/PhotoView;

    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/AppUpdateRequiredView;->showAppUpdateDialog()V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/smedialink/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/recognition/PhotoViewerPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/recognition/PhotoView;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/recognition/PhotoViewerPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/recognition/PhotoViewerPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/recognition/PhotoViewerPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
