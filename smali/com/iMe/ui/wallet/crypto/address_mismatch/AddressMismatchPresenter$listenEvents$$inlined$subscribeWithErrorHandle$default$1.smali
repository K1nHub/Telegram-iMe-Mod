.class public final Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->listenEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 AddressMismatchPresenter.kt\ncom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter\n*L\n1#1,111:1\n72#2,8:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;",
            ")V"
        }
    .end annotation

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;

    .line 113
    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0xfa

    if-eqz v0, :cond_0

    .line 114
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;

    invoke-virtual {p1, v1, v2}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->deleteActiveWallet(J)V

    goto :goto_0

    .line 116
    :cond_0
    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletReset;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletReset;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView;

    invoke-interface {p1, v1, v2}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView;->closeScreen(J)V

    :cond_1
    :goto_0
    return-void
.end method
