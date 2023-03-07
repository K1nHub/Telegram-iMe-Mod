.class public final Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;
.super Ljava/lang/Object;
.source "ObservableExt.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->linkWalletAddressWithCheck(Lcom/smedialink/storage/domain/model/crypto/Wallet;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 CryptoWalletInteractor.kt\ncom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor\n+ 3 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n+ 4 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n+ 5 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,81:1\n204#2,4:82\n216#2,2:87\n15#3:86\n8#4:89\n18#5:90\n*S KotlinDebug\n*F\n+ 1 CryptoWalletInteractor.kt\ncom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor\n*L\n207#1:86\n217#1:89\n217#1:90\n*E\n"
.end annotation


# instance fields
.field final synthetic $newWallet$inlined:Lcom/smedialink/storage/domain/model/crypto/Wallet;

.field final synthetic this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/smedialink/storage/domain/model/crypto/Wallet;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    iput-object p2, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;->$newWallet$inlined:Lcom/smedialink/storage/domain/model/crypto/Wallet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    iget-object v1, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;->$newWallet$inlined:Lcom/smedialink/storage/domain/model/crypto/Wallet;

    invoke-static {v0, p1, v1}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->access$isAddressChanged(Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/Wallet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    invoke-static {v0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->access$unlinkWalletIfNeed(Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 15
    new-instance v0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$lambda-18$$inlined$flatMapSuccess$1;

    iget-object v1, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    iget-object v2, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;->$newWallet$inlined:Lcom/smedialink/storage/domain/model/crypto/Wallet;

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$lambda-18$$inlined$flatMapSuccess$1;-><init>(Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/smedialink/storage/domain/model/crypto/Wallet;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    invoke-static {v0}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->access$getSchedulersProvider$p(Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "{\n                      \u2026                        }"

    .line 83
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

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

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;->apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
