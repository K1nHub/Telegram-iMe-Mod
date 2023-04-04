.class public Lcom/iMe/ui/reaction/ReactionView$$State$MessageCreatedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ReactionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/reaction/ReactionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageCreatedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/reaction/ReactionView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/reaction/ReactionView$$State;)V
    .locals 1

    .line 130
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "messageCreated"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/reaction/ReactionView;)V
    .locals 0

    .line 135
    invoke-interface {p1}, Lcom/iMe/ui/reaction/ReactionView;->messageCreated()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 128
    check-cast p1, Lcom/iMe/ui/reaction/ReactionView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/reaction/ReactionView$$State$MessageCreatedCommand;->apply(Lcom/iMe/ui/reaction/ReactionView;)V

    return-void
.end method
