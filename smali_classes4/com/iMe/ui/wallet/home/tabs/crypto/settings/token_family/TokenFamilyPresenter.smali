.class public final Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "TokenFamilyPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokenFamilyPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenFamilyPresenter.kt\ncom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,94:1\n63#2,12:95\n*S KotlinDebug\n*F\n+ 1 TokenFamilyPresenter.kt\ncom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter\n*L\n76#1:95,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final foundTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/FoundTokenItem;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final tokenVisibilitySubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/iMe/model/wallet/home/FoundTokenItem;",
            ">;"
        }
    .end annotation
.end field

.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/FoundTokenItem;",
            ">;"
        }
    .end annotation
.end field

.field private final walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public static synthetic $r8$lambda$-o4_SnGlwExwP1U9tIUHAOs6QhI(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/model/wallet/home/FoundTokenItem;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->subscribeToTokenVisibilitySwitch$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/model/wallet/home/FoundTokenItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ohycJONt6J5tivk0DxDkzPG5Z3Q(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->subscribeToTokenVisibilitySwitch$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/List;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/FoundTokenItem;",
            ">;",
            "Lcom/iMe/storage/domain/utils/system/ResourceManager;",
            "Lcom/iMe/storage/domain/utils/rx/RxEventBus;",
            "Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;",
            "Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;",
            ")V"
        }
    .end annotation

    const-string v0, "foundTokens"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletInteractor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->foundTokens:Ljava/util/List;

    .line 24
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 25
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 26
    iput-object p4, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 27
    iput-object p5, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 30
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p2

    const-string p3, "create()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->tokenVisibilitySubject:Lio/reactivex/subjects/PublishSubject;

    .line 31
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->tokens:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getTokens$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->tokens:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getWalletInteractor$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;)Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    return-object p0
.end method

.method public static final synthetic access$setTokens$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;Ljava/util/List;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->tokens:Ljava/util/List;

    return-void
.end method

.method private final subscribeToTokenVisibilitySwitch()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->tokenVisibilitySubject:Lio/reactivex/subjects/PublishSubject;

    .line 55
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 64
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$2;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "private fun subscribeToT\u2026     .autoDispose()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {v0}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 91
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final subscribeToTokenVisibilitySwitch$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/model/wallet/home/FoundTokenItem;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/model/wallet/home/FoundTokenItem;

    return-object p0
.end method

.method private static final subscribeToTokenVisibilitySwitch$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method


# virtual methods
.method public final onDismiss()V
    .locals 5

    .line 38
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->tokens:Ljava/util/List;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->foundTokens:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    new-instance v1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$TokensSettingsChanged;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3, v4}, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$TokensSettingsChanged;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    :cond_0
    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 7

    .line 44
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->subscribeToTokenVisibilitySwitch()V

    .line 45
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView;

    .line 46
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->tokens:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/model/wallet/home/FoundTokenItem;

    if-eqz v1, :cond_0

    .line 47
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_token_family_title:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/iMe/model/wallet/home/FoundTokenItem;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/iMe/model/wallet/home/FoundTokenItem;->getTicker()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    .line 49
    :cond_1
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->tokens:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 45
    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView;->setupScreenWithData(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final onTokenClicked(Lcom/iMe/model/wallet/home/FoundTokenItem;)V
    .locals 1

    const-string v0, "foundTokenItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->tokenVisibilitySubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
