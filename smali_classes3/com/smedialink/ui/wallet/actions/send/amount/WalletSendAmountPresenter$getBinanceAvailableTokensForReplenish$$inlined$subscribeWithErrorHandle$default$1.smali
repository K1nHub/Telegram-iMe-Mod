.class public final Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getBinanceAvailableTokensForReplenish(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lorg/fork/utils/Callbacks$Callback;)V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSendAmountPresenter.kt\ncom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n269#2,3:112\n272#2,10:119\n1547#3:115\n1618#3,3:116\n*S KotlinDebug\n*F\n+ 1 WalletSendAmountPresenter.kt\ncom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter\n*L\n271#1:115\n271#1:116,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $action$inlined:Lorg/fork/utils/Callbacks$Callback;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$1;->$action$inlined:Lorg/fork/utils/Callbacks$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3
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

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1547
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    check-cast v2, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;

    .line 114
    invoke-static {v2}, Lcom/smedialink/mapper/wallet/select/SelectableMappingKt;->mapToSelectable(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;)Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$setAvailableTokensForBinanceReplenish$p(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Ljava/util/List;)V

    .line 119
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$1;->$action$inlined:Lorg/fork/utils/Callbacks$Callback;

    invoke-interface {p1}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    goto :goto_1

    .line 121
    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

    .line 122
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->NO_ENOUGH_MONEY:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$runNoEnoughMoneyFlow(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V

    goto :goto_1

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
