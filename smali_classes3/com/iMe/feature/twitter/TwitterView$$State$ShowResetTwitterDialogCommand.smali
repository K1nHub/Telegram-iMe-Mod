.class public Lcom/iMe/feature/twitter/TwitterView$$State$ShowResetTwitterDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TwitterView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/twitter/TwitterView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowResetTwitterDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/feature/twitter/TwitterView;",
        ">;"
    }
.end annotation


# instance fields
.field public final dialogModel:Lcom/iMe/model/dialog/DialogModel;


# direct methods
.method constructor <init>(Lcom/iMe/feature/twitter/TwitterView$$State;Lcom/iMe/model/dialog/DialogModel;)V
    .locals 1

    .line 355
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showResetTwitterDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 357
    iput-object p2, p0, Lcom/iMe/feature/twitter/TwitterView$$State$ShowResetTwitterDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/feature/twitter/TwitterView;)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterView$$State$ShowResetTwitterDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    invoke-interface {p1, v0}, Lcom/iMe/feature/twitter/TwitterView;->showResetTwitterDialog(Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 351
    check-cast p1, Lcom/iMe/feature/twitter/TwitterView;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/twitter/TwitterView$$State$ShowResetTwitterDialogCommand;->apply(Lcom/iMe/feature/twitter/TwitterView;)V

    return-void
.end method
