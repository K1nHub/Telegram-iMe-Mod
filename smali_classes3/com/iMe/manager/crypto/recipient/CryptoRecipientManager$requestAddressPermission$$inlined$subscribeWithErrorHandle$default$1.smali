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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CryptoRecipientManager.kt\ncom/iMe/manager/crypto/recipient/CryptoRecipientManager\n*L\n1#1,132:1\n85#2,28:133\n*E\n"
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

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lorg/telegram/tgnet/TLRPC$messages_BotResults;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "it"

    .line 69
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v2, v1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v2, :cond_0

    .line 135
    check-cast v1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    const-string v3, "result.data.results"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "result.data.results.first()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    check-cast v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    const/4 v4, 0x0

    .line 139
    iget-object v2, v0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getTelegramGateway$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v5

    .line 141
    iget-object v2, v0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    const-string v7, "inlineBot.id"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    iget-wide v7, v1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->query_id:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$formatBotRequestParams(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    .line 142
    iget-object v1, v0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->$chatId$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v8, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 137
    invoke-static/range {v4 .. v16}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingBotContextResult(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ZILjava/lang/String;)V

    .line 146
    iget-object v1, v0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getViewState(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    move-result-object v1

    .line 147
    iget-object v2, v0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_recipient_request_permission_success_dialog_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    iget-object v3, v0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v3}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    .line 149
    sget v4, Lorg/telegram/messenger/R$string;->wallet_recipient_request_permission_success_dialog_description:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 150
    iget-object v7, v0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->$recipient$inlined:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 148
    invoke-interface {v3, v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 146
    new-instance v4, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$2$1;

    iget-object v5, v0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    iget-object v6, v0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->$chatId$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v4, v5, v6}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$2$1;-><init>(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;Lkotlin/jvm/internal/Ref$LongRef;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->showRequestPermissionSuccessDialog(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 157
    :cond_0
    instance-of v2, v1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getViewState(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    move-result-object v2

    check-cast v1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v3, v0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v3}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_1
    :goto_0
    return-void
.end method
