.class public final Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->loadAddressInfoById(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
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
        "Lcom/iMe/storage/domain/model/crypto/AccountInfo;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CryptoRecipientManager.kt\ncom/iMe/manager/crypto/recipient/CryptoRecipientManager\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,111:1\n116#2,4:112\n120#2,39:117\n1#3:116\n*E\n"
.end annotation


# instance fields
.field final synthetic $blockchainType$inlined:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

.field final synthetic $recipient$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;


# direct methods
.method public constructor <init>(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    iput-object p2, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->$recipient$inlined:Ljava/lang/String;

    iput-object p3, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->$blockchainType$inlined:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/AccountInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_6

    .line 114
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->getWallets()Ljava/util/List;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v3

    iget-object v4, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->$blockchainType$inlined:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    if-ne v3, v4, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    if-eqz v1, :cond_3

    .line 117
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/crypto/AccountInfo;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->getHasAccess()Z

    move-result p1

    invoke-static {v1, p1}, Lcom/iMe/mapper/crypto/AddressUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Z)Lcom/iMe/model/wallet/crypto/send/AddressAccessState;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 118
    :cond_3
    sget-object p1, Lcom/iMe/model/wallet/crypto/send/AddressAccessState$NotAvailable;->INSTANCE:Lcom/iMe/model/wallet/crypto/send/AddressAccessState$NotAvailable;

    .line 120
    :goto_2
    instance-of v0, p1, Lcom/iMe/model/wallet/crypto/send/AddressAccessState$Granted;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getViewState(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->$recipient$inlined:Ljava/lang/String;

    .line 122
    check-cast p1, Lcom/iMe/model/wallet/crypto/send/AddressAccessState$Granted;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/send/AddressAccessState$Granted;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-interface {v0, v1, p1, v2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->onRecipientSelected(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 126
    :cond_4
    instance-of v0, p1, Lcom/iMe/model/wallet/crypto/send/AddressAccessState$Denied;

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {p1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getViewState(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->$recipient$inlined:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getRequestPermissionDialogModel(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    .line 126
    new-instance v2, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$1$1;

    iget-object v3, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    iget-object v4, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->$recipient$inlined:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$1$1;-><init>(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;Ljava/lang/String;)V

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->showRequestPermissionDialog(Ljava/lang/String;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto/16 :goto_3

    .line 131
    :cond_5
    instance-of p1, p1, Lcom/iMe/model/wallet/crypto/send/AddressAccessState$NotAvailable;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {p1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getViewState(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_error_invalid_user_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_recipient_error_dialog_no_eth_address_description:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_amount_error_invalid_user_btn_txt:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 139
    :cond_6
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_8

    .line 140
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->USER_NOT_FOUND:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_7

    .line 142
    iget-object p1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {p1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getViewState(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    move-result-object p1

    .line 143
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_error_invalid_user_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_error_user_wallet_not_activated_description:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_amount_error_invalid_user_btn_txt:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 149
    :cond_7
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getViewState(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_8
    :goto_3
    return-void
.end method
