.class public Lcom/iMe/ui/catalog/CatalogRootView$$State$OnSelectedLanguageChangedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CatalogRootView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/catalog/CatalogRootView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSelectedLanguageChangedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/catalog/CatalogRootView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/catalog/CatalogRootView$$State;)V
    .locals 1

    .line 165
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onSelectedLanguageChanged"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/catalog/CatalogRootView;)V
    .locals 0

    .line 170
    invoke-interface {p1}, Lcom/iMe/ui/catalog/CatalogRootView;->onSelectedLanguageChanged()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 163
    check-cast p1, Lcom/iMe/ui/catalog/CatalogRootView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/CatalogRootView$$State$OnSelectedLanguageChangedCommand;->apply(Lcom/iMe/ui/catalog/CatalogRootView;)V

    return-void
.end method
