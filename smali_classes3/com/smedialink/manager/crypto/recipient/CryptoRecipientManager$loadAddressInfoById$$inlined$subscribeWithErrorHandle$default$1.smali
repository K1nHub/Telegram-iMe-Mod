.class public final Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->loadAddressInfoById(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Lcom/smedialink/storage/domain/model/crypto/AccountInfo;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CryptoRecipientManager.kt\ncom/smedialink/manager/crypto/recipient/CryptoRecipientManager\n*L\n1#1,111:1\n115#2,38:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $blockchainType$inlined:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

.field final synthetic $recipient$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;


# direct methods
.method public constructor <init>(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    iput-object p2, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->$recipient$inlined:Ljava/lang/String;

    iput-object p3, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->$blockchainType$inlined:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Lcom/smedialink/storage/domain/model/crypto/AccountInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_5

    .line 114
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/AccountInfo;

    .line 115
    iget-object v0, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->$blockchainType$inlined:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    sget-object v1, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 118
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/AccountInfo;->getTonAddress()Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 117
    :cond_1
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/AccountInfo;->getTronAddress()Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;

    move-result-object p1

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/AccountInfo;->getEthAddress()Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;

    move-result-object p1

    .line 121
    :goto_0
    invoke-static {p1}, Lcom/smedialink/mapper/crypto/AddressUiMappingKt;->mapToUI(Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;)Lcom/smedialink/model/wallet/crypto/send/AddressAccessState;

    move-result-object p1

    .line 122
    instance-of v0, p1, Lcom/smedialink/model/wallet/crypto/send/AddressAccessState$Granted;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v0}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->access$getViewState(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;

    move-result-object v0

    iget-object v2, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->$recipient$inlined:Ljava/lang/String;

    check-cast p1, Lcom/smedialink/model/wallet/crypto/send/AddressAccessState$Granted;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/send/AddressAccessState$Granted;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1, v1}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;->onRecipientSelected(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 123
    :cond_3
    instance-of v0, p1, Lcom/smedialink/model/wallet/crypto/send/AddressAccessState$Denied;

    if-eqz v0, :cond_4

    .line 124
    iget-object p1, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {p1}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->access$getViewState(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->$recipient$inlined:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v1}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->access$getRequestPermissionDialogModel(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)Lcom/smedialink/model/dialog/DialogModel;

    move-result-object v1

    .line 124
    new-instance v2, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$1$1;

    iget-object v3, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    iget-object v4, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->$recipient$inlined:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$1$1;-><init>(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;Ljava/lang/String;)V

    invoke-interface {p1, v0, v1, v2}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;->showRequestPermissionDialog(Ljava/lang/String;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V

    goto/16 :goto_1

    .line 128
    :cond_4
    instance-of p1, p1, Lcom/smedialink/model/wallet/crypto/send/AddressAccessState$NotAvailable;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {p1}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->access$getViewState(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v0}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_error_invalid_user_title:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v1}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_recipient_error_dialog_no_eth_address_description:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v2}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_amount_error_invalid_user_btn_txt:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-interface {p1, v0, v1, v2}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 135
    :cond_5
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_7

    .line 136
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 137
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->USER_NOT_FOUND:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_6

    .line 138
    iget-object p1, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {p1}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->access$getViewState(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v0}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_error_invalid_user_title:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v1}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_error_user_wallet_not_activated_description:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v2}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_amount_error_invalid_user_btn_txt:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-interface {p1, v0, v1, v2}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :cond_6
    iget-object v0, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v0}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->access$getViewState(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v1}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method
