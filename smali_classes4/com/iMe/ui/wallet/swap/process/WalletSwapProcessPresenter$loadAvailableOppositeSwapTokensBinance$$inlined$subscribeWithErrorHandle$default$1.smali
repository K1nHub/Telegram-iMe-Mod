.class public final Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance(Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;)V
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
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSwapProcessPresenter.kt\ncom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter\n*L\n1#1,132:1\n747#2,10:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $callback$inlined:Lcom/iMe/fork/utils/Callbacks$Callback;

.field final synthetic $tokenTicker$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;->$tokenTicker$inlined:Ljava/lang/String;

    iput-object p3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;->$callback$inlined:Lcom/iMe/fork/utils/Callbacks$Callback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

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
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;->$tokenTicker$inlined:Ljava/lang/String;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$setBinanceAvailableOppositeSwapTokens$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lkotlin/Pair;)V

    .line 136
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;->$callback$inlined:Lcom/iMe/fork/utils/Callbacks$Callback;

    invoke-interface {p1}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    goto :goto_0

    .line 139
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_1
    :goto_0
    return-void
.end method
