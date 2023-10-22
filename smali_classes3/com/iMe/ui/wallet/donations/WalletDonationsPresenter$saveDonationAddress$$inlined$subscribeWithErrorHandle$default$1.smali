.class public final Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->saveDonationAddress(Ljava/lang/String;)V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletDonationsPresenter.kt\ncom/iMe/ui/wallet/donations/WalletDonationsPresenter\n*L\n1#1,132:1\n252#2,18:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $address$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->$address$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
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

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 135
    iget-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->$address$inlined:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->access$setCurrentDonationsAddress$p(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/donations/WalletDonationsView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->access$getCurrentDonationsAddress$p(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/donations/WalletDonationsView;->onDonationsAddressLoaded(Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->access$loadWalletInformation(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)V

    .line 138
    iget-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->access$updateChatDonateAvailable(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)V

    goto :goto_0

    .line 141
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    .line 142
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 143
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->DONATIONS_ADDRESS_ALREADY_LINKED:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->access$loadDonationAddress(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)V

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/donations/WalletDonationsView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$saveDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_2
    :goto_0
    return-void
.end method
