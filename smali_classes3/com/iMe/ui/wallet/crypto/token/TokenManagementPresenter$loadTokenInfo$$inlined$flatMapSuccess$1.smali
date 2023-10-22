.class public final Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->loadTokenInfo()V
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
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lkotlin/Pair<",
        "+",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt$flatMapSuccess$1\n+ 2 TokenManagementPresenter.kt\ncom/iMe/ui/wallet/crypto/token/TokenManagementPresenter\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n*L\n1#1,101:1\n194#2,7:102\n16#3,7:109\n*S KotlinDebug\n*F\n+ 1 TokenManagementPresenter.kt\ncom/iMe/ui/wallet/crypto/token/TokenManagementPresenter\n*L\n200#1:109,7\n*E\n"
.end annotation


# instance fields
.field final synthetic $isLoadingDialogVisible$inlined:Z

.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    iput-boolean p2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$flatMapSuccess$1;->$isLoadingDialogVisible$inlined:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "+",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 102
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->access$getWalletInteractor$p(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->access$getToken(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getTokenInfo(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lio/reactivex/Observable;

    move-result-object p1

    .line 105
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$flatMapSuccess$1;->$isLoadingDialogVisible$inlined:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 16
    :cond_0
    new-instance v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$lambda$7$$inlined$flatMapSuccess$1;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$lambda$7$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)V

    new-instance v1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 20
    :cond_2
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
