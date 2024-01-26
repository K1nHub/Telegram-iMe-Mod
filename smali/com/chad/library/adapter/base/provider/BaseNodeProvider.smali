.class public abstract Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "BaseNodeProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">",
        "Lcom/chad/library/adapter/base/provider/BaseItemProvider<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/chad/library/adapter/base/BaseNodeAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/chad/library/adapter/base/BaseNodeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 9
    invoke-super {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->getAdapter()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/chad/library/adapter/base/BaseNodeAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/chad/library/adapter/base/BaseNodeAdapter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
