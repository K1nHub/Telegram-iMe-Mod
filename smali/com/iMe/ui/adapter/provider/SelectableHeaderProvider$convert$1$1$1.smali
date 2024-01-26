.class final Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectableHeaderProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1;->invoke(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $helper:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field final synthetic $item:Lcom/iMe/model/wallet/home/SelectableHeaderItem;

.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;


# direct methods
.method constructor <init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/SelectableHeaderItem;Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1$1;->$helper:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p2, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1$1;->$item:Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    iput-object p3, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1$1;->this$0:Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1$1;->invoke(ILjava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1$1;->$helper:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v1, Lorg/telegram/messenger/R$id;->text_wallet_header:I

    invoke-virtual {v0, v1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 52
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1$1;->$item:Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/SelectableHeaderItem;->getOnSelected()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p1, p0, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider$convert$1$1$1;->this$0:Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;->access$setPopupWindow$p(Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;Landroidx/appcompat/widget/ListPopupWindow;)V

    return-void
.end method
