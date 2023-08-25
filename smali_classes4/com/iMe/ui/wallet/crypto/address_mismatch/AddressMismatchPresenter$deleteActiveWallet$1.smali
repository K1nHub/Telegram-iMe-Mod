.class final Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$deleteActiveWallet$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AddressMismatchPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->deleteActiveWallet(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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


# instance fields
.field final synthetic $delayToCloseScreen:J

.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;J)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$deleteActiveWallet$1;->this$0:Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;

    iput-wide p2, p0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$deleteActiveWallet$1;->$delayToCloseScreen:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$deleteActiveWallet$1;->invoke(Lcom/iMe/storage/domain/model/Result;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/storage/domain/model/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 45
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$deleteActiveWallet$1;->this$0:Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView;

    iget-wide v0, p0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$deleteActiveWallet$1;->$delayToCloseScreen:J

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView;->closeScreen(J)V

    goto :goto_0

    .line 46
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$deleteActiveWallet$1;->this$0:Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchView;

    const-string/jumbo v1, "result"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$deleteActiveWallet$1;->this$0:Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_1
    :goto_0
    return-void
.end method
