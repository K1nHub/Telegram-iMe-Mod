.class public final Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$lambda$7$$inlined$flatMapSuccess$1;
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
        "Lkotlin/Pair<",
        "+",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;",
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt$flatMapSuccess$1\n+ 2 TokenManagementPresenter.kt\ncom/iMe/ui/wallet/crypto/token/TokenManagementPresenter\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n*L\n1#1,101:1\n201#2,3:102\n29#3,7:105\n*S KotlinDebug\n*F\n+ 1 TokenManagementPresenter.kt\ncom/iMe/ui/wallet/crypto/token/TokenManagementPresenter\n*L\n203#1:105,7\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$lambda$7$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

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
            "Lkotlin/Pair<",
            "+",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "+",
            "Ljava/lang/Boolean;",
            ">;>;)",
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

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$lambda$7$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->access$getWalletInteractor$p(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$lambda$7$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->access$getToken(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getTokenListsData(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lio/reactivex/Observable;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$lambda$7$lambda$6$$inlined$mapSuccess$1;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$lambda$7$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    invoke-direct {v1, v2, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$lambda$7$lambda$6$$inlined$mapSuccess$1;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;Lcom/iMe/storage/domain/model/Result;)V

    new-instance p1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

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
    :cond_1
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$lambda$7$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
