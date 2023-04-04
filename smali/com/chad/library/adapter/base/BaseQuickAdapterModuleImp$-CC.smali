.class public final synthetic Lcom/chad/library/adapter/base/BaseQuickAdapterModuleImp$-CC;
.super Ljava/lang/Object;
.source "BaseQuickAdapter.kt"


# direct methods
.method public static $default$addLoadMoreModule(Lcom/chad/library/adapter/base/BaseQuickAdapterModuleImp;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;
    .locals 1
    .param p0, "_this"    # Lcom/chad/library/adapter/base/BaseQuickAdapterModuleImp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;)",
            "Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;"
        }
    .end annotation

    const-string v0, "baseQuickAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    invoke-direct {v0, p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    return-object v0
.end method
