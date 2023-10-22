.class public final Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/send/WalletSendPresenter;->validateRecipientAddress(Ljava/lang/String;)V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSendPresenter.kt\ncom/iMe/ui/wallet/send/WalletSendPresenter\n*L\n1#1,132:1\n253#2,22:133\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4
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

    if-eqz v0, :cond_4

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/wallet/SendCryptoQRData;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/SendCryptoQRData;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/model/wallet/SendCryptoQRData;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/SendCryptoQRData;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$setSelectedAddress$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$setSelectedUser$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Lorg/telegram/tgnet/TLRPC$User;)V

    .line 137
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {v0, v3}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$setSelectedChat$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 138
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    .line 139
    iget-object v3, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {v3}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getSelectedAddress$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/iMe/ui/wallet/send/WalletSendView;->setupReplenishAddress(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/model/wallet/SendCryptoQRData;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/SendCryptoQRData;->getAmount()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/wallet/SendCryptoQRData;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/SendCryptoQRData;->getAmount()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/send/WalletSendView;->setupAmount(Ljava/lang/String;)V

    .line 143
    :cond_2
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$checkEnteredData(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V

    goto :goto_2

    .line 145
    :cond_3
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    .line 146
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    .line 147
    sget v1, Lorg/telegram/messenger/R$string;->wallet_recipient_validation_address_error:I

    .line 146
    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method
