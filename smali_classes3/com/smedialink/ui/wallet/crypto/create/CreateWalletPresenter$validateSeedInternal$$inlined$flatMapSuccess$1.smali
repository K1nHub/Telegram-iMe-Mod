.class public final Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->validateSeedInternal(Lio/reactivex/Observable;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 CreateWalletPresenter.kt\ncom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter\n+ 3 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,81:1\n165#2,11:82\n176#2:94\n27#3:93\n*S KotlinDebug\n*F\n+ 1 CreateWalletPresenter.kt\ncom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter\n*L\n175#1:93\n*E\n"
.end annotation


# instance fields
.field final synthetic $isPasscodeCreated$inlined:Z

.field final synthetic $seed$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;


# direct methods
.method public constructor <init>(ZLcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;Ljava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$flatMapSuccess$1;->$isPasscodeCreated$inlined:Z

    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;

    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$flatMapSuccess$1;->$seed$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 82
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$flatMapSuccess$1;->$isPasscodeCreated$inlined:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->access$getCryptoWalletInteractor$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    move-result-object v0

    .line 85
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->access$getScreenType$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;

    invoke-virtual {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 88
    iget-object v4, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$flatMapSuccess$1;->$seed$inlined:Ljava/lang/String;

    .line 89
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->access$getCryptoPreferenceHelper$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object p1

    invoke-interface {p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v5

    const-string v2, ""

    const-string v3, ""

    .line 84
    invoke-virtual/range {v0 .. v5}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->createWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->access$getSchedulersProvider$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    .line 85
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$lambda$4$$inlined$mapSuccess$1;

    invoke-direct {v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$lambda$4$$inlined$mapSuccess$1;-><init>()V

    new-instance v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(validationResult)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$flatMapSuccess$1;->invoke(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
