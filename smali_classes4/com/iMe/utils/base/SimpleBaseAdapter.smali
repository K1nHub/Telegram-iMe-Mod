.class public final Lcom/iMe/utils/base/SimpleBaseAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SimpleBaseAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/utils/base/SimpleBaseAdapter$BaseViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/iMe/utils/base/SimpleBaseAdapter$BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final bindItem:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/View;",
            "TItem;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TItem;>;"
        }
    .end annotation
.end field

.field private final layout:I


# direct methods
.method public constructor <init>(Ljava/util/List;ILkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/iMe/utils/base/SimpleBaseAdapter;->items:Ljava/util/List;

    .line 11
    iput p2, p0, Lcom/iMe/utils/base/SimpleBaseAdapter;->layout:I

    .line 12
    iput-object p3, p0, Lcom/iMe/utils/base/SimpleBaseAdapter;->bindItem:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iMe/utils/base/SimpleBaseAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 9
    check-cast p1, Lcom/iMe/utils/base/SimpleBaseAdapter$BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/utils/base/SimpleBaseAdapter;->onBindViewHolder(Lcom/iMe/utils/base/SimpleBaseAdapter$BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/iMe/utils/base/SimpleBaseAdapter$BaseViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/iMe/utils/base/SimpleBaseAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/iMe/utils/base/SimpleBaseAdapter;->bindItem:Lkotlin/jvm/functions/Function3;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, v0, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/iMe/utils/base/SimpleBaseAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/iMe/utils/base/SimpleBaseAdapter$BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/iMe/utils/base/SimpleBaseAdapter$BaseViewHolder;
    .locals 4

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance p2, Lcom/iMe/utils/base/SimpleBaseAdapter$BaseViewHolder;

    iget v0, p0, Lcom/iMe/utils/base/SimpleBaseAdapter;->layout:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->inflate$default(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/iMe/utils/base/SimpleBaseAdapter$BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
