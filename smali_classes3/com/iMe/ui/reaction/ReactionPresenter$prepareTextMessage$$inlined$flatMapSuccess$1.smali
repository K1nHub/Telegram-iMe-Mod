.class public final Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/reaction/ReactionPresenter;->prepareTextMessage(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Lorg/telegram/messenger/MessageObject;)V
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
        "Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageResult;",
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt$flatMapSuccess$1\n+ 2 ReactionPresenter.kt\ncom/iMe/ui/reaction/ReactionPresenter\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n*L\n1#1,101:1\n81#2,4:102\n100#3,2:106\n*S KotlinDebug\n*F\n+ 1 ReactionPresenter.kt\ncom/iMe/ui/reaction/ReactionPresenter\n*L\n84#1:106,2\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/reaction/ReactionPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/reaction/ReactionPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/reaction/ReactionPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageResult;",
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

    .line 18
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/reaction/ReactionPresenter;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageResult;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageResult;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/ui/reaction/ReactionPresenter;->access$setMessageId$p(Lcom/iMe/ui/reaction/ReactionPresenter;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/reaction/ReactionPresenter;

    invoke-static {v0}, Lcom/iMe/ui/reaction/ReactionPresenter;->access$getTelegramApi$p(Lcom/iMe/ui/reaction/ReactionPresenter;)Lcom/iMe/manager/TelegramApi;

    move-result-object v1

    .line 104
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageResult;

    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageResult;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/reaction/ReactionPresenter;

    invoke-static {p1}, Lcom/iMe/ui/reaction/ReactionPresenter;->access$getDialogId$p(Lcom/iMe/ui/reaction/ReactionPresenter;)J

    move-result-wide v3

    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Reaction;->getBotId()J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Lcom/iMe/manager/TelegramApi;->getInlineBot(Ljava/lang/String;JJ)Lio/reactivex/Observable;

    move-result-object p1

    .line 100
    sget-object v0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$lambda$0$$inlined$wrapAsResult$1;->INSTANCE:Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$lambda$0$$inlined$wrapAsResult$1;

    new-instance v1, Lcom/iMe/ui/reaction/ReactionPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/ui/reaction/ReactionPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 101
    sget-object v0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$lambda$0$$inlined$wrapAsResult$2;->INSTANCE:Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$lambda$0$$inlined$wrapAsResult$2;

    new-instance v1, Lcom/iMe/ui/reaction/ReactionPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/ui/reaction/ReactionPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "wrapAsResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 20
    :cond_1
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
