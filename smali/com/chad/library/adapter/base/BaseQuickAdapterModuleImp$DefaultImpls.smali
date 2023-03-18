.class public final Lcom/chad/library/adapter/base/BaseQuickAdapterModuleImp$DefaultImpls;
.super Ljava/lang/Object;
.source "BaseQuickAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chad/library/adapter/base/BaseQuickAdapterModuleImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static addLoadMoreModule(Lcom/chad/library/adapter/base/BaseQuickAdapterModuleImp;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapterModuleImp;",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;)",
            "Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;"
        }
    .end annotation

    const-string p0, "baseQuickAdapter"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    return-object p0
.end method
