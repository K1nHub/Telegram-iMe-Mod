.class final Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->setupClientListeners(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

.field final synthetic this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;


# direct methods
.method public static synthetic $r8$lambda$LV_G8VGfgqRrnkWsONZBBYqZI_E(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;->invoke$lambda-1(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SvoP9aZh3vgx0QeH8QOOPILLu0Q(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;->invoke$lambda-0(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    return-void
.end method

.method constructor <init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    iput-object p2, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;->$sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sessionStoreItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-static {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getSessionStoreItems$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final invoke$lambda-1(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-static {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getErrorsSubject$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 240
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;->invoke(ILjava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;)V
    .locals 2

    const-string p1, "$noName_1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iget-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-static {p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getWcClients$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;->$sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    invoke-virtual {p2}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getSession()Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-static {p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getWcClients$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;->$sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    invoke-virtual {p2}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getSession()Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-static {p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getWalletConnectInteractor$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

    move-result-object p1

    .line 244
    iget-object p2, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;->$sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    invoke-virtual {p2}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getSession()Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->deleteWalletConnectSession(Ljava/lang/String;)Lio/reactivex/Completable;

    move-result-object p1

    .line 245
    iget-object p2, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-static {p2}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getSchedulersProvider$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object p2

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    .line 246
    iget-object p2, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;->$sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    new-instance v1, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, v0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    iget-object p2, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    new-instance v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    invoke-virtual {p1, v1, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "walletConnectInteractor\n\u2026                        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iget-object p2, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-static {p2}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getSubscriptions$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lio/reactivex/disposables/CompositeDisposable;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    :cond_0
    return-void
.end method
