.class public final Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$lambda-18$$inlined$flatMapSuccess$1;
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 CryptoWalletInteractor.kt\ncom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor\n*L\n1#1,81:1\n208#2,7:82\n*E\n"
.end annotation


# instance fields
.field final synthetic $newWallet$inlined:Lcom/smedialink/storage/domain/model/crypto/Wallet;

.field final synthetic this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/smedialink/storage/domain/model/crypto/Wallet;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$lambda-18$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    iput-object p2, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$lambda-18$$inlined$flatMapSuccess$1;->$newWallet$inlined:Lcom/smedialink/storage/domain/model/crypto/Wallet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 5
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

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 82
    iget-object p1, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$lambda-18$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    invoke-static {p1}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->access$getCryptoWalletRepository$p(Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lcom/smedialink/storage/domain/repository/crypto/CryptoWalletRepository;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$lambda-18$$inlined$flatMapSuccess$1;->$newWallet$inlined:Lcom/smedialink/storage/domain/model/crypto/Wallet;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v2, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$lambda-18$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    invoke-static {v2}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->access$getCryptoPreferenceHelper$p(Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v2

    .line 86
    iget-object v3, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$lambda-18$$inlined$flatMapSuccess$1;->$newWallet$inlined:Lcom/smedialink/storage/domain/model/crypto/Wallet;

    instance-of v4, v3, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lcom/smedialink/storage/domain/utils/extentions/CryptoExtKt;->getUnarmoredPublicKey(Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;)Ljava/lang/String;

    move-result-object v1

    .line 83
    :goto_1
    invoke-interface {p1, v0, v2, v1}, Lcom/smedialink/storage/domain/repository/crypto/CryptoWalletRepository;->linkWallet(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$lambda-18$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    invoke-static {v0}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->access$getSchedulersProvider$p(Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoWalletRepository\n \u2026(schedulersProvider.io())"

    .line 86
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 18
    :cond_2
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_2

    .line 19
    :cond_3
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$lambda-18$$inlined$flatMapSuccess$1;->apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
