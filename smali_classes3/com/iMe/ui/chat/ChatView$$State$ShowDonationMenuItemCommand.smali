.class public Lcom/iMe/ui/chat/ChatView$$State$ShowDonationMenuItemCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ChatView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/chat/ChatView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowDonationMenuItemCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/chat/ChatView;",
        ">;"
    }
.end annotation


# instance fields
.field public final show:Z


# direct methods
.method constructor <init>(Lcom/iMe/ui/chat/ChatView$$State;Z)V
    .locals 1

    .line 322
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showDonationMenuItem"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 324
    iput-boolean p2, p0, Lcom/iMe/ui/chat/ChatView$$State$ShowDonationMenuItemCommand;->show:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/chat/ChatView;)V
    .locals 1

    .line 329
    iget-boolean v0, p0, Lcom/iMe/ui/chat/ChatView$$State$ShowDonationMenuItemCommand;->show:Z

    invoke-interface {p1, v0}, Lcom/iMe/ui/chat/ChatView;->showDonationMenuItem(Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 318
    check-cast p1, Lcom/iMe/ui/chat/ChatView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/chat/ChatView$$State$ShowDonationMenuItemCommand;->apply(Lcom/iMe/ui/chat/ChatView;)V

    return-void
.end method
