.class public Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OnUnexpectedErrorStateCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CatalogAllView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnUnexpectedErrorStateCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State;)V
    .locals 1

    .line 508
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onUnexpectedErrorState"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;)V
    .locals 0

    .line 513
    invoke-interface {p1}, Lcom/smedialink/ui/custom/state/GlobalStateView;->onUnexpectedErrorState()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 506
    check-cast p1, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView$$State$OnUnexpectedErrorStateCommand;->apply(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;)V

    return-void
.end method
