.class final Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectableHeaderProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/SelectableHeaderItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/widget/LinearLayout;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $helper:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field final synthetic $item:Lcom/iMe/model/wallet/home/SelectableHeaderItem;

.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;


# direct methods
.method constructor <init>(Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;Lcom/iMe/model/wallet/home/SelectableHeaderItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;

    iput-object p2, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1;->$item:Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    iput-object p3, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1;->$helper:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1;->invoke(Landroid/widget/LinearLayout;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/widget/LinearLayout;)V
    .locals 7

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v4, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1;

    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1;->$item:Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    iget-object v2, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1;->$helper:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-direct {v4, v0, v1, v2}, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1;-><init>(Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;Lcom/iMe/model/wallet/home/SelectableHeaderItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
