.class public Lcom/smedialink/ui/reaction/ReactionView$$State$ShowButtonPositionDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ReactionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/reaction/ReactionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowButtonPositionDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/reaction/ReactionView;",
        ">;"
    }
.end annotation


# instance fields
.field public final buttonPosition:Lcom/smedialink/model/reaction/ReactionButtonsRowsType;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/reaction/ReactionView$$State;Lcom/smedialink/model/reaction/ReactionButtonsRowsType;)V
    .locals 1

    .line 161
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showButtonPositionDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 163
    iput-object p2, p0, Lcom/smedialink/ui/reaction/ReactionView$$State$ShowButtonPositionDialogCommand;->buttonPosition:Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/reaction/ReactionView;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/smedialink/ui/reaction/ReactionView$$State$ShowButtonPositionDialogCommand;->buttonPosition:Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/reaction/ReactionView;->showButtonPositionDialog(Lcom/smedialink/model/reaction/ReactionButtonsRowsType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 157
    check-cast p1, Lcom/smedialink/ui/reaction/ReactionView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/reaction/ReactionView$$State$ShowButtonPositionDialogCommand;->apply(Lcom/smedialink/ui/reaction/ReactionView;)V

    return-void
.end method
