.class public final Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$$inlined$doOnSuccessNext$1;
.super Ljava/lang/Object;
.source "ObservableExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->deleteWallet(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;Z)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$doOnSuccessNext$1\n+ 2 CryptoWalletInteractor.kt\ncom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor\n*L\n1#1,81:1\n94#2,4:82\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$$inlined$doOnSuccessNext$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/smedialink/storage/domain/model/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    instance-of p1, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$$inlined$doOnSuccessNext$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    invoke-static {p1}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->access$getRxEventBus$p(Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    move-result-object p1

    new-instance v0, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;

    .line 83
    iget-object v1, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$$inlined$doOnSuccessNext$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    invoke-static {v1}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->access$getCryptoAccessManager$p(Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->isAnyWalletCreated()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 82
    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;-><init>(Z)V

    invoke-virtual {p1, v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$$inlined$doOnSuccessNext$1;->accept(Lcom/smedialink/storage/domain/model/Result;)V

    return-void
.end method
