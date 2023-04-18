.class public Lcom/iMe/ui/reaction/ReactionView$$State$ShowButtonPositionDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ReactionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/reaction/ReactionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowButtonPositionDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/reaction/ReactionView;",
        ">;"
    }
.end annotation


# instance fields
.field public final buttonPosition:Lcom/iMe/model/reaction/ReactionButtonsRowsType;


# direct methods
.method constructor <init>(Lcom/iMe/ui/reaction/ReactionView$$State;Lcom/iMe/model/reaction/ReactionButtonsRowsType;)V
    .locals 1

    .line 179
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showButtonPositionDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 181
    iput-object p2, p0, Lcom/iMe/ui/reaction/ReactionView$$State$ShowButtonPositionDialogCommand;->buttonPosition:Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/reaction/ReactionView;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/iMe/ui/reaction/ReactionView$$State$ShowButtonPositionDialogCommand;->buttonPosition:Lcom/iMe/model/reaction/ReactionButtonsRowsType;

    invoke-interface {p1, v0}, Lcom/iMe/ui/reaction/ReactionView;->showButtonPositionDialog(Lcom/iMe/model/reaction/ReactionButtonsRowsType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 175
    check-cast p1, Lcom/iMe/ui/reaction/ReactionView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/reaction/ReactionView$$State$ShowButtonPositionDialogCommand;->apply(Lcom/iMe/ui/reaction/ReactionView;)V

    return-void
.end method
