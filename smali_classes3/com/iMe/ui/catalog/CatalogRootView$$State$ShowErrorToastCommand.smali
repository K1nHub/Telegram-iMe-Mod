.class public Lcom/iMe/ui/catalog/CatalogRootView$$State$ShowErrorToastCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CatalogRootView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/catalog/CatalogRootView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowErrorToastCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/catalog/CatalogRootView;",
        ">;"
    }
.end annotation


# instance fields
.field public final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field public final result:Lcom/iMe/storage/domain/model/Result$Error;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/storage/domain/model/Result$Error<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/catalog/CatalogRootView$$State;Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result$Error<",
            "+TT;>;",
            "Lcom/iMe/storage/domain/utils/system/ResourceManager;",
            ")V"
        }
    .end annotation

    .line 251
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showErrorToast"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 253
    iput-object p2, p0, Lcom/iMe/ui/catalog/CatalogRootView$$State$ShowErrorToastCommand;->result:Lcom/iMe/storage/domain/model/Result$Error;

    .line 254
    iput-object p3, p0, Lcom/iMe/ui/catalog/CatalogRootView$$State$ShowErrorToastCommand;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/catalog/CatalogRootView;)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootView$$State$ShowErrorToastCommand;->result:Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/catalog/CatalogRootView$$State$ShowErrorToastCommand;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 245
    check-cast p1, Lcom/iMe/ui/catalog/CatalogRootView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/CatalogRootView$$State$ShowErrorToastCommand;->apply(Lcom/iMe/ui/catalog/CatalogRootView;)V

    return-void
.end method
