.class public final Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->requestAddressPermission(Ljava/lang/String;)V
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
        "Lorg/telegram/tgnet/TLRPC$messages_BotResults;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CryptoRecipientManager.kt\ncom/iMe/manager/crypto/recipient/CryptoRecipientManager\n*L\n1#1,111:1\n82#2,24:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $chatId$inlined:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $recipient$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;


# direct methods
.method public constructor <init>(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;Lkotlin/jvm/internal/Ref$LongRef;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    iput-object p2, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->$chatId$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p3, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->$recipient$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lorg/telegram/tgnet/TLRPC$messages_BotResults;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    const-string v1, "result.data.results"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "result.data.results.first()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getTelegramGateway$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    .line 120
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    const-string v5, "inlineBot.id"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->query_id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$formatBotRequestParams(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 121
    iget-object p1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->$chatId$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v6, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 116
    invoke-static/range {v2 .. v12}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingBotContextResult(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZILjava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {p1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getViewState(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_recipient_request_permission_success_dialog_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_recipient_request_permission_success_dialog_description:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->$recipient$inlined:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 125
    new-instance v2, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$2$1;

    iget-object v3, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    iget-object v4, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->$chatId$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2, v3, v4}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$2$1;-><init>(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;Lkotlin/jvm/internal/Ref$LongRef;)V

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->showRequestPermissionSuccessDialog(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 132
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getViewState(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    move-result-object v0

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
