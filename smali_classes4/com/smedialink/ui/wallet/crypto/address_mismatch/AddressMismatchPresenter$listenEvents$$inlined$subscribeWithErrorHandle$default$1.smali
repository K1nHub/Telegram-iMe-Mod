.class public final Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->listenEvents()V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 AddressMismatchPresenter.kt\ncom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter\n*L\n1#1,111:1\n71#2,7:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;

    const-wide/16 v1, 0xfa

    if-eqz v0, :cond_0

    .line 114
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;

    invoke-virtual {p1, v1, v2}, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->deleteActiveEthWallet(J)V

    goto :goto_0

    .line 115
    :cond_0
    instance-of p1, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;

    if-eqz p1, :cond_1

    .line 116
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView;

    invoke-interface {p1, v1, v2}, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView;->closeScreen(J)V

    :cond_1
    :goto_0
    return-void
.end method
