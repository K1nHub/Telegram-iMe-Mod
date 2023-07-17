.class public Lcom/iMe/ui/chat/ChatView$$State$ShowReactionActivationAlertCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ChatView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/chat/ChatView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowReactionActivationAlertCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/chat/ChatView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/chat/ChatView$$State;)V
    .locals 1

    .line 311
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showReactionActivationAlert"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/chat/ChatView;)V
    .locals 0

    .line 316
    invoke-interface {p1}, Lcom/iMe/ui/chat/ChatView;->showReactionActivationAlert()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 309
    check-cast p1, Lcom/iMe/ui/chat/ChatView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/chat/ChatView$$State$ShowReactionActivationAlertCommand;->apply(Lcom/iMe/ui/chat/ChatView;)V

    return-void
.end method
