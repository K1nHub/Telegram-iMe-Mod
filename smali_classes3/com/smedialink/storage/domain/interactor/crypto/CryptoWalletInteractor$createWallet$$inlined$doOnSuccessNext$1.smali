.class public final Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$createWallet$$inlined$doOnSuccessNext$1;
.super Ljava/lang/Object;
.source "ObservableExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->createWallet(Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$doOnSuccessNext$1\n+ 2 CryptoWalletInteractor.kt\ncom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor\n*L\n1#1,81:1\n164#2:82\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$createWallet$$inlined$doOnSuccessNext$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/smedialink/storage/domain/model/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    instance-of p1, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$createWallet$$inlined$doOnSuccessNext$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    invoke-static {p1}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->access$getRxEventBus$p(Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    move-result-object p1

    sget-object v0, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessCreateWallet;->INSTANCE:Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessCreateWallet;

    invoke-virtual {p1, v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$createWallet$$inlined$doOnSuccessNext$1;->accept(Lcom/smedialink/storage/domain/model/Result;)V

    return-void
.end method
