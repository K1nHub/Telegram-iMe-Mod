.class public final Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter$handleWalletDeletionResult$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;->handleWalletDeletionResult(Lio/reactivex/Observable;)V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 BlockchainsManagementPresenter.kt\ncom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter\n*L\n1#1,111:1\n103#2,8:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter$handleWalletDeletionResult$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1
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
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter$handleWalletDeletionResult$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;->access$getCryptoAccessManager$p(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;)Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getAllWallets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter$handleWalletDeletionResult$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;

    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->finishScreen()V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter$handleWalletDeletionResult$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;->access$showWallets(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;)V

    :goto_0
    return-void
.end method
