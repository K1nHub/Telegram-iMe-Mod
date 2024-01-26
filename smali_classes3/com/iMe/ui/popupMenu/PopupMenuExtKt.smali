.class public final Lcom/iMe/ui/popupMenu/PopupMenuExtKt;
.super Ljava/lang/Object;
.source "PopupMenuExt.kt"


# direct methods
.method public static synthetic $r8$lambda$FqSgRg13wrHBMQAkJJUdvlCi0xk(Ljava/util/List;Landroid/widget/ListPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/iMe/ui/popupMenu/PopupMenuExtKt;->showPopupMenu$lambda$1$lambda$0(Ljava/util/List;Landroid/widget/ListPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private static final createRoundedBackground(IF)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 33
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 34
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 35
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public static final showPopupMenu(Landroid/view/View;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/iMe/ui/popupMenu/MenuItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/iMe/ui/popupMenu/MenuAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/iMe/ui/popupMenu/MenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 12
    new-instance v1, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {v0}, Lcom/iMe/ui/popupMenu/MenuAdapter;->getMaxWidth()I

    move-result v2

    const/16 v3, 0x7c

    invoke-static {v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->getDpToPx(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    const/4 v2, 0x1

    .line 14
    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 15
    invoke-virtual {v1, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 17
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getWidth()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v2, p0

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 18
    sget p0, Lorg/telegram/messenger/R$style;->DropDownFromTopAnimation:I

    invoke-virtual {v1, p0}, Landroid/widget/ListPopupWindow;->setAnimationStyle(I)V

    .line 20
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 21
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p0

    const/high16 v0, 0x41800000    # 16.0f

    .line 22
    invoke-static {p0, v0}, Lcom/iMe/ui/popupMenu/PopupMenuExtKt;->createRoundedBackground(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    new-instance p0, Lcom/iMe/ui/popupMenu/PopupMenuExtKt$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1, v1}, Lcom/iMe/ui/popupMenu/PopupMenuExtKt$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v1, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 29
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method

.method private static final showPopupMenu$lambda$1$lambda$0(Ljava/util/List;Landroid/widget/ListPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const-string p2, "$items"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/popupMenu/MenuItem;

    invoke-virtual {p0}, Lcom/iMe/ui/popupMenu/MenuItem;->getOnMenuClick()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 26
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void
.end method
