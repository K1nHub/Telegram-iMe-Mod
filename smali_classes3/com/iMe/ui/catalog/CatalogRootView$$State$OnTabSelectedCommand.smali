.class public Lcom/iMe/ui/catalog/CatalogRootView$$State$OnTabSelectedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CatalogRootView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/catalog/CatalogRootView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnTabSelectedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/catalog/CatalogRootView;",
        ">;"
    }
.end annotation


# instance fields
.field public final id:I


# direct methods
.method constructor <init>(Lcom/iMe/ui/catalog/CatalogRootView$$State;I)V
    .locals 1

    .line 168
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onTabSelected"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 170
    iput p2, p0, Lcom/iMe/ui/catalog/CatalogRootView$$State$OnTabSelectedCommand;->id:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/catalog/CatalogRootView;)V
    .locals 1

    .line 175
    iget v0, p0, Lcom/iMe/ui/catalog/CatalogRootView$$State$OnTabSelectedCommand;->id:I

    invoke-interface {p1, v0}, Lcom/iMe/ui/catalog/CatalogRootView;->onTabSelected(I)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 164
    check-cast p1, Lcom/iMe/ui/catalog/CatalogRootView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/CatalogRootView$$State$OnTabSelectedCommand;->apply(Lcom/iMe/ui/catalog/CatalogRootView;)V

    return-void
.end method
