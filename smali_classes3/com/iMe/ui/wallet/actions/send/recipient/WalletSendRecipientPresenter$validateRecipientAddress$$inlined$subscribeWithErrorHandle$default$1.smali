.class public final Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->validateRecipientAddress(Ljava/lang/String;Z)V
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
        "Lcom/iMe/storage/domain/model/wallet/SendCryptoQRData;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSendRecipientPresenter.kt\ncom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter\n*L\n1#1,132:1\n107#2,18:133\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/wallet/SendCryptoQRData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/wallet/SendCryptoQRData;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/SendCryptoQRData;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;

    .line 137
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/wallet/SendCryptoQRData;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/SendCryptoQRData;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    .line 135
    invoke-interface {v0, v2, p1, v1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->onRecipientSelected(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;

    .line 142
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    .line 143
    sget v1, Lorg/telegram/messenger/R$string;->wallet_recipient_validation_address_error:I

    .line 142
    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
