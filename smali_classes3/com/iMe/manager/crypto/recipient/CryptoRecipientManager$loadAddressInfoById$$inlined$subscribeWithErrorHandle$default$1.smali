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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CryptoRecipientManager.kt\ncom/iMe/manager/crypto/recipient/CryptoRecipientManager\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,132:1\n122#2,4:133\n126#2,60:138\n1#3:137\n*E\n"
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

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 11
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

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 135
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->getWallets()Ljava/util/List;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v4

    iget-object v5, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->$blockchainType$inlined:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    if-ne v4, v5, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-eqz v4, :cond_0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    check-cast v3, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    if-eqz v3, :cond_3

    .line 138
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/crypto/AccountInfo;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/AccountInfo;->getHasAccess()Z

    move-result p1

    invoke-static {v3, p1}, Lcom/iMe/mapper/crypto/AddressUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Z)Lcom/iMe/model/wallet/crypto/send/AddressAccessState;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 139
    :cond_3
    sget-object p1, Lcom/iMe/model/wallet/crypto/send/AddressAccessState$NotAvailable;->INSTANCE:Lcom/iMe/model/wallet/crypto/send/AddressAccessState$NotAvailable;

    .line 141
    :goto_2
    instance-of v0, p1, Lcom/iMe/model/wallet/crypto/send/AddressAccessState$Granted;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getViewState(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->$recipient$inlined:Ljava/lang/String;

    .line 143
    check-cast p1, Lcom/iMe/model/wallet/crypto/send/AddressAccessState$Granted;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/send/AddressAccessState$Granted;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-interface {v0, v1, p1, v2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->onRecipientSelected(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 147
    :cond_4
    instance-of v0, p1, Lcom/iMe/model/wallet/crypto/send/AddressAccessState$Denied;

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {p1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getViewState(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    move-result-object p1

    .line 148
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->$recipient$inlined:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getRequestPermissionDialogModel(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    .line 147
    new-instance v2, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$1$1;

    iget-object v3, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    iget-object v4, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->$recipient$inlined:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$1$1;-><init>(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;Ljava/lang/String;)V

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->showRequestPermissionDialog(Ljava/lang/String;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto/16 :goto_4

    .line 152
    :cond_5
    instance-of p1, p1, Lcom/iMe/model/wallet/crypto/send/AddressAccessState$NotAvailable;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {p1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getViewState(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    move-result-object v0

    .line 153
    sget v1, Lorg/telegram/messenger/R$raw;->fork_common_info:I

    .line 154
    iget-object p1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {p1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    .line 155
    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_error_invalid_user_title:I

    .line 154
    invoke-interface {p1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    iget-object p1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {p1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    .line 158
    sget v3, Lorg/telegram/messenger/R$string;->wallet_recipient_error_dialog_no_eth_address_description:I

    .line 157
    invoke-interface {p1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 160
    iget-object p1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {p1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    .line 161
    sget v4, Lorg/telegram/messenger/R$string;->wallet_amount_error_invalid_user_btn_txt:I

    .line 160
    invoke-interface {p1, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 152
    invoke-interface/range {v0 .. v5}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->showErrorDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_4

    .line 168
    :cond_6
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_a

    .line 169
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 170
    sget-object v3, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->USER_NOT_FOUND:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    if-ne v0, v3, :cond_9

    .line 172
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 171
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    .line 173
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->$recipient$inlined:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 174
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getViewState(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    move-result-object v3

    .line 175
    sget v4, Lorg/telegram/messenger/R$raw;->fork_invite_user:I

    .line 176
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    .line 177
    sget v5, Lorg/telegram/messenger/R$string;->wallet_recipient_error_invalid_user_title:I

    .line 176
    invoke-interface {v0, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 179
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    .line 180
    sget v6, Lorg/telegram/messenger/R$string;->wallet_recipient_error_invalid_user_description:I

    .line 179
    invoke-interface {v0, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 182
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    .line 183
    sget v7, Lorg/telegram/messenger/R$string;->wallet_recipient_error_invalid_user_btn_txt:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 184
    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    const-string v10, ""

    if-nez v9, :cond_7

    move-object v9, v10

    :cond_7
    aput-object v9, v8, v1

    .line 185
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    move-object v10, p1

    :goto_3
    aput-object v10, v8, v2

    .line 182
    invoke-interface {v0, v7, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 187
    iget-object p1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->$recipient$inlined:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 174
    invoke-interface/range {v3 .. v8}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->showErrorDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_4

    .line 191
    :cond_9
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getViewState(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_a
    :goto_4
    return-void
.end method
