.class public Lcom/smedialink/ui/catalog/tabs/CatalogView$$State$OnSetupNavigationRouterCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CatalogView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/catalog/tabs/CatalogView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSetupNavigationRouterCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/catalog/tabs/CatalogView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/ui/catalog/tabs/CatalogView$$State;)V
    .locals 1

    .line 128
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onSetupNavigationRouter"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/catalog/tabs/CatalogView;)V
    .locals 0

    .line 133
    invoke-interface {p1}, Lcom/smedialink/ui/catalog/tabs/CatalogView;->onSetupNavigationRouter()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 126
    check-cast p1, Lcom/smedialink/ui/catalog/tabs/CatalogView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/catalog/tabs/CatalogView$$State$OnSetupNavigationRouterCommand;->apply(Lcom/smedialink/ui/catalog/tabs/CatalogView;)V

    return-void
.end method
