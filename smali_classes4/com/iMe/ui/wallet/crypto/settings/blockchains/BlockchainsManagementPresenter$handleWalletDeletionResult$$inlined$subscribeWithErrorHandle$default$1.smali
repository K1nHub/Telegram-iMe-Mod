.class public final Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter$handleWalletDeletionResult$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;->handleWalletDeletionResult(Lio/reactivex/Observable;)V
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
        "+TT;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 BlockchainsManagementPresenter.kt\ncom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter\n*L\n1#1,111:1\n105#2,12:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter$handleWalletDeletionResult$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter$handleWalletDeletionResult$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter$handleWalletDeletionResult$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter$handleWalletDeletionResult$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_0

    .line 114
    :cond_0
    instance-of p1, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter$handleWalletDeletionResult$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;->access$getCryptoAccessManager$p(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;)Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getAllWallets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter$handleWalletDeletionResult$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->finishScreen()V

    .line 116
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter$handleWalletDeletionResult$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;->access$getRxEventBus$p(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    move-result-object p1

    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$AllWalletsReset;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$AllWalletsReset;

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter$handleWalletDeletionResult$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;->access$showWallets(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;)V

    :cond_2
    :goto_0
    return-void
.end method