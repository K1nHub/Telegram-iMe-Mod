.class public final Lcom/iMe/utils/extentions/common/SimpleInitExtensionsKt;
.super Ljava/lang/Object;
.source "SimpleInitExtensions.kt"


# direct methods
.method public static final quickInit(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;ILkotlin/jvm/functions/Function3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/List<",
            "+TItem;>;I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/View;",
            "-TItem;-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/iMe/utils/base/SimpleBaseAdapter;

    new-instance v1, Lcom/iMe/utils/extentions/common/SimpleInitExtensionsKt$quickInit$1;

    invoke-direct {v1, p3}, Lcom/iMe/utils/extentions/common/SimpleInitExtensionsKt$quickInit$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/iMe/utils/base/SimpleBaseAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/functions/Function3;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
