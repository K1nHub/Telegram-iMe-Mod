.class public Lcom/smedialink/ui/chat/ChatView$$State$OnVoiceToTextCompletedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ChatView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/chat/ChatView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnVoiceToTextCompletedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/chat/ChatView;",
        ">;"
    }
.end annotation


# instance fields
.field public final messageObject:Lorg/telegram/messenger/MessageObject;

.field public final result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/chat/ChatView$$State;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    .locals 1

    .line 280
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "onVoiceToTextCompleted"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 282
    iput-object p2, p0, Lcom/smedialink/ui/chat/ChatView$$State$OnVoiceToTextCompletedCommand;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 283
    iput-object p3, p0, Lcom/smedialink/ui/chat/ChatView$$State$OnVoiceToTextCompletedCommand;->result:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/chat/ChatView;)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatView$$State$OnVoiceToTextCompletedCommand;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lcom/smedialink/ui/chat/ChatView$$State$OnVoiceToTextCompletedCommand;->result:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/chat/ChatView;->onVoiceToTextCompleted(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 274
    check-cast p1, Lcom/smedialink/ui/chat/ChatView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/chat/ChatView$$State$OnVoiceToTextCompletedCommand;->apply(Lcom/smedialink/ui/chat/ChatView;)V

    return-void
.end method
