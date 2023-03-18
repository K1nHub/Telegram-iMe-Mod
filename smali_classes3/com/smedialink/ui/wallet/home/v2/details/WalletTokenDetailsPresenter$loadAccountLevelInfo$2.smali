.class final Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletTokenDetailsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->loadAccountLevelInfo(ZLorg/fork/utils/Callbacks$Callback1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/reactivex/Observable<",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;",
        ">;>;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $isWithLoading:Z

.field final synthetic this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;


# direct methods
.method constructor <init>(ZLcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V
    .locals 0

    iput-boolean p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$2;->$isWithLoading:Z

    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$2;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;",
            ">;>;)",
            "Lio/reactivex/ObservableSource<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "observable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$2;->$isWithLoading:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$2;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 214
    check-cast p1, Lio/reactivex/Observable;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$2;->invoke(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
