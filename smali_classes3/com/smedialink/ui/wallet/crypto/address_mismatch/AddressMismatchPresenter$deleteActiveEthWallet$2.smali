.class final Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$deleteActiveEthWallet$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AddressMismatchPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->deleteActiveEthWallet(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$deleteActiveEthWallet$2;->this$0:Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$deleteActiveEthWallet$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    .line 50
    invoke-static {p1}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;)V

    .line 51
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$deleteActiveEthWallet$2;->this$0:Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void
.end method
