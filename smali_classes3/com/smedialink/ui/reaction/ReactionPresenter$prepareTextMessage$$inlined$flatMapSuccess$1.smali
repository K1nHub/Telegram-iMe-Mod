.class public final Lcom/smedialink/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/reaction/ReactionPresenter;->prepareTextMessage(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Lorg/telegram/messenger/MessageObject;)V
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
        "Lcom/smedialink/storage/data/network/model/request/reaction/ReactionMessageResult;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Lorg/telegram/tgnet/TLRPC$messages_BotResults;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 ReactionPresenter.kt\ncom/smedialink/ui/reaction/ReactionPresenter\n+ 3 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,81:1\n56#2,4:82\n79#3,2:86\n*S KotlinDebug\n*F\n+ 1 ReactionPresenter.kt\ncom/smedialink/ui/reaction/ReactionPresenter\n*L\n59#1:86,2\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/reaction/ReactionPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/reaction/ReactionPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/ui/reaction/ReactionPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Lcom/smedialink/storage/data/network/model/request/reaction/ReactionMessageResult;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Lorg/telegram/tgnet/TLRPC$messages_BotResults;",
            ">;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/smedialink/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/ui/reaction/ReactionPresenter;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/smedialink/storage/data/network/model/request/reaction/ReactionMessageResult;

    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/request/reaction/ReactionMessageResult;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smedialink/ui/reaction/ReactionPresenter;->access$setMessageId$p(Lcom/smedialink/ui/reaction/ReactionPresenter;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/smedialink/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/ui/reaction/ReactionPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/reaction/ReactionPresenter;->access$getTelegramApi$p(Lcom/smedialink/ui/reaction/ReactionPresenter;)Lcom/smedialink/manager/TelegramApi;

    move-result-object v1

    .line 84
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/smedialink/storage/data/network/model/request/reaction/ReactionMessageResult;

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/request/reaction/ReactionMessageResult;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/smedialink/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/ui/reaction/ReactionPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/reaction/ReactionPresenter;->access$getDialogId$p(Lcom/smedialink/ui/reaction/ReactionPresenter;)J

    move-result-wide v3

    invoke-static {}, Lcom/smedialink/storage/common/AppConfiguration$Reaction;->getBotId()J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Lcom/smedialink/manager/TelegramApi;->getInlineBot(Ljava/lang/String;JJ)Lio/reactivex/Observable;

    move-result-object p1

    .line 79
    sget-object v0, Lcom/smedialink/ui/reaction/ReactionPresenter$prepareTextMessage$lambda$0$$inlined$wrapAsResult$1;->INSTANCE:Lcom/smedialink/ui/reaction/ReactionPresenter$prepareTextMessage$lambda$0$$inlined$wrapAsResult$1;

    new-instance v1, Lcom/smedialink/ui/reaction/ReactionPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/smedialink/ui/reaction/ReactionPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 80
    sget-object v0, Lcom/smedialink/ui/reaction/ReactionPresenter$prepareTextMessage$lambda$0$$inlined$wrapAsResult$2;->INSTANCE:Lcom/smedialink/ui/reaction/ReactionPresenter$prepareTextMessage$lambda$0$$inlined$wrapAsResult$2;

    new-instance v1, Lcom/smedialink/ui/reaction/ReactionPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/smedialink/ui/reaction/ReactionPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "map { it.toSuccess() }\n \u2026RESPONSE, it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 19
    :cond_1
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1;->invoke(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
