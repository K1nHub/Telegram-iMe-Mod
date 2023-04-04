.class public final Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->linkWalletAddressWithCheck(Lcom/iMe/storage/domain/model/crypto/Wallet;)Lio/reactivex/Observable;
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
        "Ljava/lang/String;",
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 CryptoWalletInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 4 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n+ 5 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,80:1\n274#2,7:81\n289#2,2:89\n14#3:88\n11#4:91\n18#5:92\n*S KotlinDebug\n*F\n+ 1 CryptoWalletInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor\n*L\n280#1:88\n290#1:91\n290#1:92\n*E\n"
.end annotation


# instance fields
.field final synthetic $newWallet$inlined:Lcom/iMe/storage/domain/model/crypto/Wallet;

.field final synthetic this$0:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/model/crypto/Wallet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;->$newWallet$inlined:Lcom/iMe/storage/domain/model/crypto/Wallet;

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
            "Ljava/lang/String;",
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

    .line 81
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;->$newWallet$inlined:Lcom/iMe/storage/domain/model/crypto/Wallet;

    invoke-static {v0, p1, v1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->access$isAddressChanged(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->Companion:Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;

    .line 84
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;->$newWallet$inlined:Lcom/iMe/storage/domain/model/crypto/Wallet;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;->getNetworksByBlockchain(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 86
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    invoke-static {v1, p1, v0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->access$unlinkWalletIfNeed(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 14
    new-instance v1, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$lambda$22$$inlined$flatMapSuccess$1;

    iget-object v2, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    iget-object v3, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;->$newWallet$inlined:Lcom/iMe/storage/domain/model/crypto/Wallet;

    invoke-direct {v1, v2, v3, v0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$lambda$22$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/model/crypto/Wallet;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    new-instance v0, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    invoke-static {v0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->access$getSchedulersProvider$p(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "{\n                      \u2026                        }"

    .line 82
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

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

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
