.class public final Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo(ZZ)V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSwapProcessPresenter.kt\ncom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter\n*L\n1#1,111:1\n665#2,13:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $isWithForceLoadingDialog$inlined:Z

.field final synthetic $isWithTimer$inlined:Z

.field final synthetic $selectedNetwork$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1;->$selectedNetwork$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iput-boolean p3, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1;->$isWithTimer$inlined:Z

    iput-boolean p4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1;->$isWithForceLoadingDialog$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7
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

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getApproveTokensMetadata$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)Ljava/util/HashMap;

    move-result-object v0

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1;->$selectedNetwork$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$checkSelectedTokenApprove(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    .line 116
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-boolean v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1;->$isWithTimer$inlined:Z

    invoke-static {v0, p1, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$startUpdatingApproveMetadataIfNeed(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/util/List;Z)V

    goto :goto_0

    .line 118
    :cond_0
    instance-of p1, p1, Lcom/smedialink/storage/domain/model/Result$Loading;

    if-eqz p1, :cond_1

    .line 119
    iget-boolean p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1;->$isWithForceLoadingDialog$inlined:Z

    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    const-string v0, "viewState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/smedialink/ui/base/mvp/base/BaseView$DefaultImpls;->showLoadingDialog$default(Lcom/smedialink/ui/base/mvp/base/BaseView;ZZLio/reactivex/disposables/Disposable;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
