.class public interface abstract Lcom/smedialink/ui/reaction/ReactionView;
.super Ljava/lang/Object;
.source "ReactionView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract messageCreated()V
.end method

.method public abstract onUrlValid(ILjava/lang/String;)V
.end method

.method public abstract showButtonPositionDialog(Lcom/smedialink/model/reaction/ReactionButtonsRowsType;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method
