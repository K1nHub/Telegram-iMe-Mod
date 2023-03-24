.class public final Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$$inlined$doOnSuccessNext$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->deleteWallet(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;ZZ)Lio/reactivex/Observable;
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
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$doOnSuccessNext$1\n+ 2 CryptoWalletInteractor.kt\ncom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor\n*L\n1#1,81:1\n105#2,6:82\n*E\n"
.end annotation


# instance fields
.field final synthetic $shouldSendRxEvent$inlined:Z

.field final synthetic this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;


# direct methods
.method public constructor <init>(ZLcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;)V
    .locals 0

    iput-boolean p1, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$$inlined$doOnSuccessNext$1;->$shouldSendRxEvent$inlined:Z

    iput-object p2, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$$inlined$doOnSuccessNext$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$$inlined$doOnSuccessNext$1;->invoke(Lcom/smedialink/storage/domain/model/Result;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/storage/domain/model/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 41
    instance-of p1, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz p1, :cond_0

    .line 82
    iget-boolean p1, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$$inlined$doOnSuccessNext$1;->$shouldSendRxEvent$inlined:Z

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$$inlined$doOnSuccessNext$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    invoke-static {p1}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->access$getRxEventBus$p(Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    move-result-object p1

    new-instance v0, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;

    .line 84
    iget-object v1, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$$inlined$doOnSuccessNext$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    invoke-static {v1}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->access$getCryptoAccessManager$p(Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->isAnyWalletCreated()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 83
    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;-><init>(Z)V

    invoke-virtual {p1, v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    :cond_0
    return-void
.end method
