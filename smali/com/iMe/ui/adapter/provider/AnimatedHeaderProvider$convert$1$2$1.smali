.class final Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$convert$1$2$1;
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
        "Landroid/widget/FrameLayout;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;


# direct methods
.method constructor <init>(Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$convert$1$2$1;->this$0:Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$convert$1$2$1;->invoke(Landroid/widget/FrameLayout;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/widget/FrameLayout;)V
    .locals 3

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-static {p1, v0, v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRippleForeground$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$convert$1$2$1;->this$0:Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;

    invoke-static {v0}, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;->access$getButtonCornerRadius(Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;)I

    move-result v0

    .line 46
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 47
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 44
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
