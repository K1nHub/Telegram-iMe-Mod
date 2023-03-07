.class public final Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;->loadDonationAddress()V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletDonationsPresenter.kt\ncom/smedialink/ui/wallet/donations/WalletDonationsPresenter\n*L\n1#1,111:1\n147#2,18:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 112
    iget-object v0, p0, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;->access$setAddressInfoResultState$p(Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;Lcom/smedialink/storage/domain/model/Result;)V

    .line 114
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;->access$setCurrentDonationsAddress$p(Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/donations/WalletDonationsView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;->access$getCurrentDonationsAddress$p(Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/donations/WalletDonationsView;->onDonationsAddressLoaded(Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;->access$loadWalletInformation(Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;)V

    goto :goto_1

    .line 119
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    .line 120
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->DONATIONS_NOT_CONFIGURED_YET:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/donations/WalletDonationsView;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 126
    :goto_0
    iget-object p1, p0, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/donations/WalletDonationsView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;->access$getCurrentDonationsAddress$p(Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/donations/WalletDonationsView;->onDonationsAddressLoaded(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
