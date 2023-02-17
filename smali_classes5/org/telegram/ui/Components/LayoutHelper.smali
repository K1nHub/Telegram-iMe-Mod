.class public Lorg/telegram/ui/Components/LayoutHelper;
.super Ljava/lang/Object;
.source "LayoutHelper.java"


# direct methods
.method public static addFrameParams(Landroid/view/View;IIFFFF)V
    .locals 2

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 61
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 62
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 63
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 64
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 65
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 66
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static createAppBar(II)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .locals 1

    .line 37
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p0

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static createCoordinator(II)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .locals 1

    .line 41
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p0

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p1

    invoke-direct {v0, p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static createFrame(FFI)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 144
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p0

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public static createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 140
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p0

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p1

    invoke-direct {v0, p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 130
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p0

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 131
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method public static createFrame(II)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    int-to-float p1, p1

    .line 70
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static createFrame(III)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 136
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p0

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public static createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;
    .locals 7

    int-to-float v1, p1

    int-to-float v3, p3

    int-to-float v4, p4

    int-to-float v5, p5

    int-to-float v6, p6

    move v0, p0

    move v2, p2

    .line 74
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 157
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p0

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p1

    invoke-static {p2}, Lorg/telegram/ui/Components/LayoutHelper;->getAbsoluteGravity(I)I

    move-result p2

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public static createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 148
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p0

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p1

    invoke-static {p2}, Lorg/telegram/ui/Components/LayoutHelper;->getAbsoluteGravity(I)I

    move-result p2

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 149
    sget-boolean p0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p0, :cond_0

    move p0, p5

    goto :goto_0

    :cond_0
    move p0, p3

    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 150
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 151
    sget-boolean p0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move p3, p5

    :goto_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 152
    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    return-object v0
.end method

.method public static createLinear(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 254
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p0

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p1

    invoke-direct {v0, p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 250
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p0

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object v0
.end method

.method public static createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 232
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p0

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p1

    invoke-direct {v0, p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 233
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method public static createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 238
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p0

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 239
    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public static createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 219
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p0

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 220
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p0

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method public static createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 212
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p0

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 213
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p0

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    invoke-virtual {v0, p0, p1, p2, p4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 214
    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public static createLinear(III)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 244
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p0

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p1

    invoke-direct {v0, p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 245
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public static createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 6

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    int-to-float v5, p5

    move v0, p0

    move v1, p1

    .line 78
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 225
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p0

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p1

    invoke-direct {v0, p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 226
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p0

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    invoke-virtual {v0, p0, p1, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 227
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public static createLinearRelatively(FFIFFFF)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 258
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p0

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p1

    invoke-static {p2}, Lorg/telegram/ui/Components/LayoutHelper;->getAbsoluteGravity(I)I

    move-result p2

    int-to-float p2, p2

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 259
    sget-boolean p0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p0, :cond_0

    move p0, p5

    goto :goto_0

    :cond_0
    move p0, p3

    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 260
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 261
    sget-boolean p0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move p3, p5

    :goto_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 262
    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-object v0
.end method

.method public static createRecycler(II)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    .line 45
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createRecycler(IIIIII)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static createRecycler(IIFFFF)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 53
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p0

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p1

    invoke-direct {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 54
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method public static createRecycler(IIIIII)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 6

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    int-to-float v5, p5

    move v0, p0

    move v1, p1

    .line 49
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createRecycler(IIFFFF)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .line 165
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p0

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p1

    invoke-direct {v0, p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-ltz p6, :cond_0

    .line 167
    invoke-virtual {v0, p6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_0
    if-ltz p7, :cond_1

    if-ltz p8, :cond_1

    .line 170
    invoke-virtual {v0, p7, p8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 172
    :cond_1
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 173
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 174
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 175
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-object v0
.end method

.method public static createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9

    int-to-float v0, p0

    int-to-float v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    .line 196
    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static createRelative(III)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9

    int-to-float v0, p0

    int-to-float v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    move v6, p2

    .line 200
    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static createRelative(IIIIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9

    int-to-float v0, p0

    int-to-float v1, p1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 184
    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static createScroll(III)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 113
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p0

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method private static getAbsoluteGravity(I)I
    .locals 1

    .line 95
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    invoke-static {p0, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    return p0
.end method

.method public static getAbsoluteGravityStart()I
    .locals 1

    .line 100
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method private static getSize(F)I
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    int-to-float p0, p0

    :goto_0
    float-to-int p0, p0

    return p0
.end method
