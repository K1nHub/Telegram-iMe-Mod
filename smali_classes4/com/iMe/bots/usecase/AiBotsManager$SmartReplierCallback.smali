.class public interface abstract Lcom/iMe/bots/usecase/AiBotsManager$SmartReplierCallback;
.super Ljava/lang/Object;
.source "AiBotsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/bots/usecase/AiBotsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SmartReplierCallback"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/SmartBotResponse;",
            ">;)V"
        }
    .end annotation
.end method
