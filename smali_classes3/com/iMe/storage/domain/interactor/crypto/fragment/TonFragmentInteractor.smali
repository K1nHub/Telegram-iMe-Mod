.class public final Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;
.super Ljava/lang/Object;
.source "TonFragmentInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTonFragmentInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonFragmentInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n*L\n1#1,199:1\n16#2,7:200\n16#2,7:207\n16#2,7:214\n16#2,7:221\n*S KotlinDebug\n*F\n+ 1 TonFragmentInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor\n*L\n71#1:200,7\n74#1:207,7\n104#1:214,7\n122#1:221,7\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final tonController:Lcom/iMe/storage/domain/manager/ton/TonController;

.field private final tonFragmentRepository:Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;


# direct methods
.method public static synthetic $r8$lambda$HTmFRymadxazVFqqTstzV5EjliM(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->checkAndPrepareSession$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gx569wEkJfBWfQ7lfAkP2xFXJvY(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->preparePremiumBuyTransaction$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iRyVI4swztrbg7UVez_tJpMvbN4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->prepareProductBuyTransaction$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zEDNHUZc5Xvz6ZoEQvhLhvdnzsY(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)[B
    .locals 0

    invoke-static {p0}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->getTonPublicKeyBytes$lambda$12(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)[B

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/manager/ton/TonController;Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tonController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tonFragmentRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 29
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 30
    iput-object p3, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->tonController:Lcom/iMe/storage/domain/manager/ton/TonController;

    .line 31
    iput-object p4, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->tonFragmentRepository:Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;

    return-void
.end method

.method public static final synthetic access$getCryptoAccessManager$p(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method public static final synthetic access$getSessionMessage(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->getSessionMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTonController$p(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)Lcom/iMe/storage/domain/manager/ton/TonController;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->tonController:Lcom/iMe/storage/domain/manager/ton/TonController;

    return-object p0
.end method

.method public static final synthetic access$getTonFragmentRepository$p(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->tonFragmentRepository:Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;

    return-object p0
.end method

.method public static final synthetic access$initSession(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)Lio/reactivex/Observable;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->initSession()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$preparePremiumBuyTransaction(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->preparePremiumBuyTransaction(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static final checkAndPrepareSession$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final getRecipientByUsername(Ljava/lang/String;I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->tonFragmentRepository:Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;

    .line 155
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;->getRecipientByUsername(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p1

    .line 159
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "tonFragmentRepository\n  \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getSessionMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tonlogin/ownership/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getTonPublicKeyBytes()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "[B>;"
        }
    .end annotation

    .line 188
    new-instance v0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "fromCallable {\n         \u2026ray().orEmpty()\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final getTonPublicKeyBytes$lambda$12(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)[B
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->TON:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-interface {p0, v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/Wallet;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getPublicKey()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->hexToByteArray$default(Ljava/lang/String;ZILjava/lang/Object;)[B

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->orEmpty([B)[B

    move-result-object p0

    return-object p0
.end method

.method private final initSession()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->tonFragmentRepository:Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;

    .line 121
    invoke-interface {v0}, Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;->getSessionData()Lio/reactivex/Observable;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p0}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)V

    new-instance v2, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v1}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "tonFragmentRepository\n  \u2026(schedulersProvider.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final preparePremiumBuyTransaction(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;",
            ">;>;"
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->getTonPublicKeyBytes()Lio/reactivex/Observable;

    move-result-object v0

    .line 165
    new-instance v1, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$preparePremiumBuyTransaction$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$preparePremiumBuyTransaction$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$$ExternalSyntheticLambda1;

    invoke-direct {p1, v1}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 171
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "private fun preparePremi\u2026(schedulersProvider.io())"

    .line 165
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final preparePremiumBuyTransaction$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final prepareProductBuyTransaction(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/ton/ProductBuyTransactionParams;",
            ">;>;"
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->getTonPublicKeyBytes()Lio/reactivex/Observable;

    move-result-object v0

    .line 178
    new-instance v1, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$prepareProductBuyTransaction$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$prepareProductBuyTransaction$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$$ExternalSyntheticLambda2;

    invoke-direct {p1, v1}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 185
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "private fun prepareProdu\u2026(schedulersProvider.io())"

    .line 178
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final prepareProductBuyTransaction$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method


# virtual methods
.method public final buyProduct(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "price"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->prepareProductBuyTransaction(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 16
    new-instance p2, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$buyProduct$$inlined$flatMapSuccess$1;

    invoke-direct {p2, p0}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$buyProduct$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)V

    new-instance v0, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, p2}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "prepareProductBuyTransac\u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final checkAndPrepareSession()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->tonFragmentRepository:Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;

    .line 36
    invoke-interface {v0}, Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;->getSessionAuthState()Lio/reactivex/Observable;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$checkAndPrepareSession$1;

    invoke-direct {v1, p0}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$checkAndPrepareSession$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)V

    new-instance v2, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 58
    sget-object v1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "fun checkAndPrepareSessi\u2026(schedulersProvider.io())"

    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPremiumPlans()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;",
            ">;>;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->tonFragmentRepository:Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;

    .line 63
    invoke-interface {v0}, Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;->getPremiumPrices()Lio/reactivex/Observable;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "tonFragmentRepository\n  \u2026(schedulersProvider.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUsernames(Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "sortingType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchQuery"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->tonFragmentRepository:Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;

    .line 95
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;->getUsernames(Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 96
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 97
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "tonFragmentRepository\n  \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendPremiumGift(Ljava/lang/String;I)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->getRecipientByUsername(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p1

    .line 16
    new-instance p2, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$sendPremiumGift$$inlined$flatMapSuccess$1;

    invoke-direct {p2, p0}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$sendPremiumGift$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)V

    new-instance v0, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, p2}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$sendPremiumGift$$inlined$flatMapSuccess$2;

    invoke-direct {v0, p0}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$sendPremiumGift$$inlined$flatMapSuccess$2;-><init>(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)V

    new-instance v1, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "getRecipientByUsername(u\u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
