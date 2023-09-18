.class public final Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

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
        "Ljava/lang/String;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lorg/telegram/tgnet/TLRPC$messages_BotResults;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 CryptoRecipientManager.kt\ncom/iMe/manager/crypto/recipient/CryptoRecipientManager\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 4 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n+ 5 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,100:1\n63#2,11:101\n75#2,5:114\n80#2:120\n98#3,2:112\n7#4:119\n18#5:121\n*S KotlinDebug\n*F\n+ 1 CryptoRecipientManager.kt\ncom/iMe/manager/crypto/recipient/CryptoRecipientManager\n*L\n73#1:112,2\n79#1:119\n80#1:121\n*E\n"
.end annotation


# instance fields
.field final synthetic $chatId$inlined:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $recipient$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$LongRef;Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$flatMapSuccess$1;->$recipient$inlined:Ljava/lang/String;

    iput-object p2, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$flatMapSuccess$1;->$chatId$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p3, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lorg/telegram/tgnet/TLRPC$messages_BotResults;",
            ">;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$flatMapSuccess$1;->$recipient$inlined:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 102
    iget-object v3, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$flatMapSuccess$1;->$chatId$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    const-wide/16 v4, -0x1

    if-eqz v0, :cond_0

    .line 103
    iget-object v6, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v6}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getTelegramControllersGateway$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/gateway/TelegramControllersGateway;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v7, v8, v2}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    .line 104
    invoke-virtual {v6, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_0

    :cond_0
    move-wide v6, v4

    .line 102
    :goto_0
    iput-wide v6, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 108
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$flatMapSuccess$1;->$chatId$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v6, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getTelegramApi$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/manager/TelegramApi;

    move-result-object v1

    .line 110
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iget-object p1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$flatMapSuccess$1;->$chatId$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v3, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Wallet;->getWalletBotId()J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Lcom/iMe/manager/TelegramApi;->getInlineBot(Ljava/lang/String;JJ)Lio/reactivex/Observable;

    move-result-object p1

    .line 98
    sget-object v0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$1;->INSTANCE:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$1;

    new-instance v1, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 99
    sget-object v0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$2;->INSTANCE:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$2;

    new-instance v1, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "map { it.toSuccess() }\n \u2026RESPONSE, it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_1
    new-instance p1, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    .line 115
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->wallet_recipient_validation_chat_with_user_first_error:I

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 116
    sget-object v5, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->BAD_RESPONSE:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p1

    .line 114
    invoke-direct/range {v3 .. v8}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Ljava/lang/String;Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-static {v0, p1, v2, v1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_2
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-static {v0, p1, v2, v1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_1

    .line 18
    :cond_3
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
