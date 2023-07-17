.class public final Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->validateSeed(Ljava/lang/String;)V
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
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 CreateWalletPresenter.kt\ncom/iMe/ui/wallet/crypto/create/CreateWalletPresenter\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,92:1\n128#2,9:93\n137#2:103\n26#3:102\n*S KotlinDebug\n*F\n+ 1 CreateWalletPresenter.kt\ncom/iMe/ui/wallet/crypto/create/CreateWalletPresenter\n*L\n136#1:102\n*E\n"
.end annotation


# instance fields
.field final synthetic $isPasscodeCreated$inlined:Z

.field final synthetic $seed$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;


# direct methods
.method public constructor <init>(ZLcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;Ljava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$flatMapSuccess$1;->$isPasscodeCreated$inlined:Z

    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$flatMapSuccess$1;->$seed$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 93
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$flatMapSuccess$1;->$isPasscodeCreated$inlined:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->access$getCryptoWalletInteractor$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$flatMapSuccess$1;->$seed$inlined:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->access$getScreenType$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    move-result-object v1

    check-cast v1, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-static {v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->access$getCryptoPreferenceHelper$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    const-string v3, ""

    .line 95
    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->importWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 26
    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$lambda$3$$inlined$mapSuccess$1;

    invoke-direct {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$lambda$3$$inlined$mapSuccess$1;-><init>()V

    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(validationResult)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
