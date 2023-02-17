.class public interface abstract Lcom/smedialink/bots/domain/AigramBot;
.super Ljava/lang/Object;
.source "AigramBot.kt"


# virtual methods
.method public abstract getLanguage()Lcom/smedialink/bots/domain/model/BotLanguage;
.end method

.method public abstract getResponse(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/smedialink/bots/data/model/Response;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
