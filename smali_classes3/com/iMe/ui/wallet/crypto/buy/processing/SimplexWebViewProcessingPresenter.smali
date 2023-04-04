.class public final Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "SimplexWebViewProcessingPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final isNeedHandleManually(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "https://imem.app/success"

    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingView;

    sget-object v0, Lcom/iMe/model/wallet/crypto/simplex/PaymentResult$Success;->INSTANCE:Lcom/iMe/model/wallet/crypto/simplex/PaymentResult$Success;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingView;->redirectAndShowResult(Lcom/iMe/model/wallet/crypto/simplex/PaymentResult;)V

    goto :goto_0

    :cond_0
    const-string v0, "https://imem.app/fail"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingView;

    sget-object v0, Lcom/iMe/model/wallet/crypto/simplex/PaymentResult$Success;->INSTANCE:Lcom/iMe/model/wallet/crypto/simplex/PaymentResult$Success;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingView;->redirectAndShowResult(Lcom/iMe/model/wallet/crypto/simplex/PaymentResult;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
