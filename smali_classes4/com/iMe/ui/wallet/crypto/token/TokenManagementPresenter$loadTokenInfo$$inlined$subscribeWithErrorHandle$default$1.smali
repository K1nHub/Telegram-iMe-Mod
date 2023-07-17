.class public final Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

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
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 TokenManagementPresenter.kt\ncom/iMe/ui/wallet/crypto/token/TokenManagementPresenter\n*L\n1#1,111:1\n212#2,24:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
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
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    .line 115
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->access$setCustomToken$p(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;Z)V

    .line 116
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    invoke-static {v0, v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->access$setupActionButtonState(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;Z)V

    .line 117
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->access$setupTokenData(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto :goto_0

    .line 121
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    .line 122
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 123
    sget-object v2, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->ERR_TOKEN_NOT_FOUND:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v2, :cond_1

    .line 124
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    invoke-static {p1, v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->access$setSearchErrorObtained$p(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;Z)V

    .line 125
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->access$setupActionButtonState(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;Z)V

    .line 126
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->access$isSearchErrorObtained$p(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->updateErrorTextVisibility(Z)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_2
    :goto_0
    return-void
.end method
