.class final Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$convert$1$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AnimatedHeaderProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/cryptobox/AnimatedHeaderItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/widget/TextView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_with:Lcom/iMe/model/cryptobox/AnimatedHeaderItem;


# direct methods
.method constructor <init>(Lcom/iMe/model/cryptobox/AnimatedHeaderItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$convert$1$2$2;->$this_with:Lcom/iMe/model/cryptobox/AnimatedHeaderItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$convert$1$2$2;->invoke(Landroid/widget/TextView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/widget/TextView;)V
    .locals 2

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$convert$1$2$2;->$this_with:Lcom/iMe/model/cryptobox/AnimatedHeaderItem;

    invoke-virtual {v0}, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->getButton()Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;->getIconResId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$convert$1$2$2;->$this_with:Lcom/iMe/model/cryptobox/AnimatedHeaderItem;

    invoke-virtual {v0}, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->getButton()Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;->getIconResId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 63
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 62
    invoke-static {p1, v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCompoundDrawablesColor(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method
