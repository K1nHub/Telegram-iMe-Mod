.class public final Lcom/iMe/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/recognition/PhotoViewerPresenter;->getPhotoText(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 PhotoViewerPresenter.kt\ncom/iMe/ui/recognition/PhotoViewerPresenter\n*L\n1#1,132:1\n30#2,16:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $withTranslateAdditionalAction$inlined:Z

.field final synthetic this$0:Lcom/iMe/ui/recognition/PhotoViewerPresenter;


# direct methods
.method public constructor <init>(ZLcom/iMe/ui/recognition/PhotoViewerPresenter;)V
    .locals 0

    iput-boolean p1, p0, Lcom/iMe/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;->$withTranslateAdditionalAction$inlined:Z

    iput-object p2, p0, Lcom/iMe/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/recognition/PhotoViewerPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 135
    iget-boolean v0, p0, Lcom/iMe/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;->$withTranslateAdditionalAction$inlined:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/recognition/PhotoViewerPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/recognition/PhotoView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/iMe/ui/recognition/PhotoView;->showTranslateDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/recognition/PhotoViewerPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/recognition/PhotoView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/iMe/ui/recognition/PhotoView;->showPhotoTextDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

    .line 140
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->PERMISSION_DENIED:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/iMe/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/recognition/PhotoViewerPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/recognition/PhotoView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/AppUpdateRequiredView;->showAppUpdateDialog()V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/iMe/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/recognition/PhotoViewerPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/recognition/PhotoView;

    iget-object v1, p0, Lcom/iMe/ui/recognition/PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/recognition/PhotoViewerPresenter;

    invoke-static {v1}, Lcom/iMe/ui/recognition/PhotoViewerPresenter;->access$getResourceManager$p(Lcom/iMe/ui/recognition/PhotoViewerPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_3
    :goto_0
    return-void
.end method
