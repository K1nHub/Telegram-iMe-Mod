.class public final Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->loadDonationAddress()V
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
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletDonationsPresenter.kt\ncom/iMe/ui/wallet/donations/WalletDonationsPresenter\n*L\n1#1,111:1\n159#2,19:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 112
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->access$setAddressInfoResultState$p(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Lcom/iMe/storage/domain/model/Result;)V

    .line 114
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->access$setCurrentDonationsAddress$p(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/donations/WalletDonationsView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->access$getCurrentDonationsAddress$p(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/donations/WalletDonationsView;->onDonationsAddressLoaded(Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->access$loadWalletInformation(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)V

    goto :goto_0

    .line 119
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    .line 120
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->DONATIONS_NOT_CONFIGURED_YET:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-eq v0, v1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/donations/WalletDonationsView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/donations/WalletDonationsView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->access$getCurrentDonationsAddress$p(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/donations/WalletDonationsView;->onDonationsAddressLoaded(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
