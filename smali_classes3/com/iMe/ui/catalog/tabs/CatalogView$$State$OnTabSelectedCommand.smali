.class public Lcom/iMe/ui/catalog/tabs/CatalogView$$State$OnTabSelectedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CatalogView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/catalog/tabs/CatalogView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnTabSelectedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/catalog/tabs/CatalogView;",
        ">;"
    }
.end annotation


# instance fields
.field public final position:I


# direct methods
.method constructor <init>(Lcom/iMe/ui/catalog/tabs/CatalogView$$State;I)V
    .locals 1

    .line 115
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onTabSelected"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 117
    iput p2, p0, Lcom/iMe/ui/catalog/tabs/CatalogView$$State$OnTabSelectedCommand;->position:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/catalog/tabs/CatalogView;)V
    .locals 1

    .line 122
    iget v0, p0, Lcom/iMe/ui/catalog/tabs/CatalogView$$State$OnTabSelectedCommand;->position:I

    invoke-interface {p1, v0}, Lcom/iMe/ui/catalog/tabs/CatalogView;->onTabSelected(I)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 111
    check-cast p1, Lcom/iMe/ui/catalog/tabs/CatalogView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/tabs/CatalogView$$State$OnTabSelectedCommand;->apply(Lcom/iMe/ui/catalog/tabs/CatalogView;)V

    return-void
.end method
