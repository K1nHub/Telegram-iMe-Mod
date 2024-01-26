.class public final Lcom/iMe/ui/wallet/send/WalletSendPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/send/WalletSendPresenter;->calculateFeeForDonationsTransaction(JLjava/lang/String;)V
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
        "Lcom/iMe/storage/domain/model/crypto/donations/DonationTransferMetadata;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSendPresenter.kt\ncom/iMe/ui/wallet/send/WalletSendPresenter\n*L\n1#1,132:1\n522#2,18:133\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

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
            "Lcom/iMe/storage/domain/model/crypto/donations/DonationTransferMetadata;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/model/crypto/donations/DonationTransferMetadata;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/donations/DonationTransferMetadata;->getRecipientAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$setSelectedAddress$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/crypto/donations/DonationTransferMetadata;

    invoke-static {p1}, Lcom/iMe/storage/data/mapper/crypto/DonationMappingKt;->mapToCryptoMetadata(Lcom/iMe/storage/domain/model/crypto/donations/DonationTransferMetadata;)Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$configureFees(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;)V

    goto :goto_0

    .line 139
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/send/WalletSendView;->hideFeeView()V

    .line 142
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 143
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->NO_ENOUGH_MONEY:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$runNoEnoughMoneyFlow(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_2
    :goto_0
    return-void
.end method
