.class public final Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteAllWallets$$inlined$doOnSuccessNext$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->deleteAllWallets(Z)Lio/reactivex/Observable;
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
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt$doOnSuccessNext$1\n+ 2 CryptoWalletInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor\n*L\n1#1,80:1\n193#2,2:81\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteAllWallets$$inlined$doOnSuccessNext$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteAllWallets$$inlined$doOnSuccessNext$1;->invoke(Lcom/iMe/storage/domain/model/Result;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/storage/domain/model/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 40
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    const-string v0, "null cannot be cast to non-null type com.iMe.storage.domain.model.Result<kotlin.Boolean>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    iget-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteAllWallets$$inlined$doOnSuccessNext$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    invoke-static {p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->access$getRxEventBus$p(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    move-result-object p1

    new-instance v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;-><init>(Z)V

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    :cond_0
    return-void
.end method
