.class public Lcom/smedialink/ui/chat/ChatView$$State$OnMultiReplyMessageBuiltCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ChatView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/chat/ChatView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnMultiReplyMessageBuiltCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/chat/ChatView;",
        ">;"
    }
.end annotation


# instance fields
.field public final multiReplyMessage:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/chat/ChatView$$State;Ljava/lang/CharSequence;)V
    .locals 1

    .line 248
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onMultiReplyMessageBuilt"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 250
    iput-object p2, p0, Lcom/smedialink/ui/chat/ChatView$$State$OnMultiReplyMessageBuiltCommand;->multiReplyMessage:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/chat/ChatView;)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/smedialink/ui/chat/ChatView$$State$OnMultiReplyMessageBuiltCommand;->multiReplyMessage:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/chat/ChatView;->onMultiReplyMessageBuilt(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 244
    check-cast p1, Lcom/smedialink/ui/chat/ChatView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/chat/ChatView$$State$OnMultiReplyMessageBuiltCommand;->apply(Lcom/smedialink/ui/chat/ChatView;)V

    return-void
.end method
