.class public final Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->validateSeedInternal(Lio/reactivex/Observable;Ljava/lang/String;Ljava/lang/String;Z)V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CreateWalletPresenter.kt\ncom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter\n*L\n1#1,111:1\n177#2,16:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorToastText$inlined:Ljava/lang/String;

.field final synthetic $isPasscodeCreated$inlined:Z

.field final synthetic $seed$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;

    iput-boolean p2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1;->$isPasscodeCreated$inlined:Z

    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1;->$seed$inlined:Ljava/lang/String;

    iput-object p4, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1;->$errorToastText$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8
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

    const-string v1, "viewState"

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/smedialink/ui/base/mvp/base/BaseView$DefaultImpls;->showLoadingDialog$default(Lcom/smedialink/ui/base/mvp/base/BaseView;ZZLio/reactivex/disposables/Disposable;ILjava/lang/Object;)V

    .line 115
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 116
    iget-boolean p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1;->$isPasscodeCreated$inlined:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;->onSuccessConfirmBackUp()V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1;->$seed$inlined:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;->onSuccessEnterSeed(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1;->$errorToastText$inlined:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_2
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/smedialink/ui/base/mvp/base/BaseView$DefaultImpls;->showLoadingDialog$default(Lcom/smedialink/ui/base/mvp/base/BaseView;ZZLio/reactivex/disposables/Disposable;ILjava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
