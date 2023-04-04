.class public final Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;
.super Ljava/lang/Object;
.source "PinCodeInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPinCodeInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PinCodeInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,43:1\n38#2:44\n*S KotlinDebug\n*F\n+ 1 PinCodeInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor\n*L\n25#1:44\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final pinCodeRepository:Lcom/iMe/storage/domain/repository/crypto/pin/PinCodeRepository;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/repository/crypto/pin/PinCodeRepository;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "pinCodeRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;->pinCodeRepository:Lcom/iMe/storage/domain/repository/crypto/pin/PinCodeRepository;

    .line 15
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 16
    iput-object p3, p0, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 17
    iput-object p4, p0, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static synthetic readPasswordByPinCode$default(Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 35
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {p2}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getLastLoggedInGuid()Ljava/lang/String;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 33
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;->readPasswordByPinCode(Ljava/lang/String;Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createPinCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "pinCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "guid"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/CryptoExtKt;->randomString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {p2, v0}, Lcom/iMe/storage/data/utils/extentions/CryptoExtKt;->aesEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 23
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;->pinCodeRepository:Lcom/iMe/storage/domain/repository/crypto/pin/PinCodeRepository;

    .line 24
    invoke-interface {v1, p1, v0, p3}, Lcom/iMe/storage/domain/repository/crypto/pin/PinCodeRepository;->createPinCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 38
    new-instance v0, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026ult as T)\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p2, p3, v0, p3}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 30
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "pinCodeRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final readPasswordByPinCode(Ljava/lang/String;Ljava/lang/String;Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "pinCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uuid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;->pinCodeRepository:Lcom/iMe/storage/domain/repository/crypto/pin/PinCodeRepository;

    .line 39
    invoke-interface {v0, p1, p2, p3}, Lcom/iMe/storage/domain/repository/crypto/pin/PinCodeRepository;->readPasswordByPinCode(Ljava/lang/String;Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 40
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p2, p3, v0, p3}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 41
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "pinCodeRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
