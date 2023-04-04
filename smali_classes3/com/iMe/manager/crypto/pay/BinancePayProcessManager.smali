.class public final Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;
.super Ljava/lang/Object;
.source "BinancePayProcessManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBinancePayProcessManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BinancePayProcessManager.kt\ncom/iMe/manager/crypto/pay/BinancePayProcessManager\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,134:1\n14#2:135\n39#3,8:136\n*S KotlinDebug\n*F\n+ 1 BinancePayProcessManager.kt\ncom/iMe/manager/crypto/pay/BinancePayProcessManager\n*L\n54#1:135\n64#1:136,8\n*E\n"
.end annotation


# instance fields
.field private final binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

.field private final dynamicLinksInteractor:Lcom/iMe/storage/domain/interactor/firebase/DynamicLinksInteractor;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final subscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field private viewState:Lcom/iMe/manager/crypto/pay/BinancePayProcessView;


# direct methods
.method public static synthetic $r8$lambda$SoeJz8fNazsNK51A_BxTIeZMlX8(Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->pay$lambda$2(Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;Lcom/iMe/storage/domain/interactor/firebase/DynamicLinksInteractor;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "binanceInternalInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicLinksInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 31
    iput-object p2, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->dynamicLinksInteractor:Lcom/iMe/storage/domain/interactor/firebase/DynamicLinksInteractor;

    .line 32
    iput-object p3, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 33
    iput-object p4, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 37
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static final synthetic access$getBinanceInternalInteractor$p(Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;)Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getViewState(Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;)Lcom/iMe/manager/crypto/pay/BinancePayProcessView;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->getViewState()Lcom/iMe/manager/crypto/pay/BinancePayProcessView;

    move-result-object p0

    return-object p0
.end method

.method private final autoDispose(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final getConfirmPayDialogModel(Ljava/lang/String;)Lcom/iMe/model/dialog/DialogModel;
    .locals 5

    .line 116
    iget-object v0, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_binance_pay_transaction_direction_in_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_binance_pay_confirm_pay_dialog_description:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 118
    iget-object v1, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_binance_pay_action_pay:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    new-instance v3, Lcom/iMe/model/dialog/DialogModel;

    invoke-direct {v3, v0, p1, v2, v1}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private final getViewState()Lcom/iMe/manager/crypto/pay/BinancePayProcessView;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->viewState:Lcom/iMe/manager/crypto/pay/BinancePayProcessView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please call attachViewState(view: BinancePayProcessView) first!"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final pay$lambda$2(Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$transaction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->payViaBinancePay(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;)V

    return-void
.end method

.method private final payViaBinancePay(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;)V
    .locals 2

    .line 85
    sget-object v0, Lcom/binance/android/binancepay/api/BinancePayFactory;->Companion:Lcom/binance/android/binancepay/api/BinancePayFactory$Companion;

    .line 86
    invoke-virtual {p1}, Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;->getValue()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/binance/android/binancepay/api/BinancePayFactory$Companion;->getBinancePay(Landroid/content/Context;)Lcom/binance/android/binancepay/api/BinancePay;

    move-result-object p1

    .line 87
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;->getOrderId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$payViaBinancePay$1;

    invoke-direct {v1, p0, p2}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$payViaBinancePay$1;-><init>(Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;)V

    const-string p2, "COLLECTION"

    invoke-interface {p1, v0, p2, v1}, Lcom/binance/android/binancepay/api/BinancePay;->pay(Ljava/lang/String;Ljava/lang/String;Lcom/binance/android/binancepay/api/BinancePayListener;)V

    return-void
.end method


# virtual methods
.method public attachViewState(Lcom/iMe/manager/crypto/pay/BinancePayProcessView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->viewState:Lcom/iMe/manager/crypto/pay/BinancePayProcessView;

    return-void
.end method

.method public loadAndPay(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "link"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->dynamicLinksInteractor:Lcom/iMe/storage/domain/interactor/firebase/DynamicLinksInteractor;

    .line 53
    invoke-virtual {v0, p1, p2}, Lcom/iMe/storage/domain/interactor/firebase/DynamicLinksInteractor;->getLink(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p2

    .line 14
    new-instance v0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;)V

    new-instance v1, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    const-string v0, "dynamicLinksInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->getViewState()Lcom/iMe/manager/crypto/pay/BinancePayProcessView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p2

    .line 64
    iget-object v0, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->viewState:Lcom/iMe/manager/crypto/pay/BinancePayProcessView;

    .line 44
    new-instance v1, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p2, p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->autoDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onDetachViewState()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->viewState:Lcom/iMe/manager/crypto/pay/BinancePayProcessView;

    .line 48
    iget-object v0, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public pay(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transaction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->getViewState()Lcom/iMe/manager/crypto/pay/BinancePayProcessView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;->getInitiatorUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->getConfirmPayDialogModel(Ljava/lang/String;)Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    new-instance v2, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;)V

    invoke-interface {v0, v1, v2}, Lcom/iMe/manager/crypto/pay/BinancePayProcessView;->showConfirmPaymentDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method
