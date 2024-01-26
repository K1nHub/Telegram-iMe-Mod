.class public Lorg/telegram/ui/Cells/HeaderCell;
.super Landroid/widget/FrameLayout;
.source "HeaderCell.java"


# instance fields
.field private final expandImageView:Landroid/widget/ImageView;

.field private height:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textView:Landroid/widget/TextView;

.field private textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 106
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v3, 0x15

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    .line 114
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 13

    move-object v0, p0

    move v1, p2

    .line 130
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x28

    .line 102
    iput v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->height:I

    move-object/from16 v2, p7

    .line 131
    iput-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 134
    new-instance v2, Landroid/widget/ImageView;

    move-object v3, p1

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->expandImageView:Landroid/widget/ImageView;

    .line 135
    sget v3, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/HeaderCell;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v3, 0x8

    .line 137
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v6, p3, -0x4

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x33

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v7, p4

    .line 138
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41700000    # 15.0f

    .line 141
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 142
    iget-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 143
    iget-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 144
    iget-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v11, 0x5

    const/4 v12, 0x3

    if-eqz v4, :cond_0

    move v4, v11

    goto :goto_0

    :cond_0
    move v4, v12

    :goto_0
    or-int/lit8 v4, v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 145
    iget-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    iget v4, v0, Lorg/telegram/ui/Cells/HeaderCell;->height:I

    sub-int v4, v4, p4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 146
    iget-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/HeaderCell;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 148
    iget-object v1, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    const/4 v4, -0x1

    const/4 v5, -0x1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    move v2, v11

    goto :goto_1

    :cond_1
    move v2, v12

    :goto_1
    or-int/lit8 v6, v2, 0x30

    if-eqz p6, :cond_2

    const/4 v2, 0x0

    move v10, v2

    goto :goto_2

    :cond_2
    move/from16 v10, p5

    :goto_2
    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p3

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p6, :cond_5

    .line 151
    new-instance v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0xd

    .line 152
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 153
    iget-object v1, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3

    move v2, v12

    goto :goto_3

    :cond_3
    move v2, v11

    :goto_3
    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 154
    iget-object v1, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v4, -0x1

    const/4 v5, -0x1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    move v11, v12

    :cond_4
    or-int/lit8 v6, v11, 0x30

    const/16 v8, 0x15

    move/from16 v7, p3

    move/from16 v9, p3

    move/from16 v10, p5

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    :cond_5
    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat;->setAccessibilityHeading(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 122
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    .line 126
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 118
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v4, 0xf

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 110
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v3, 0x15

    const/16 v4, 0xf

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextView2()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 221
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 222
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    .line 223
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHeading(Z)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 225
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowIndex()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowSpan()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnIndex()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnSpan()I

    move-result v0

    invoke-static {v2, v3, v4, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 230
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 188
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public removeText2TopMargin()V
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method public removeTopMargin()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setTopMargin(IZ)V

    return-void
.end method

.method public setBottomMargin(I)V
    .locals 2

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_0
    return-void
.end method

.method public setEnabled(ZLjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz p2, :cond_1

    .line 180
    iget-object v2, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    aput v0, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 182
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_2
    return-void
.end method

.method public setExpandableMode(ZZ)V
    .locals 4

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 75
    iget-object p1, p0, Lorg/telegram/ui/Cells/HeaderCell;->expandImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object p1, p0, Lorg/telegram/ui/Cells/HeaderCell;->expandImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, -0x3d4c0000    # -90.0f

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 77
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr p1, v3

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 78
    :goto_1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 80
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/HeaderCell;->expandImageView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 82
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 84
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setHeight(I)V
    .locals 2

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    iput p1, p0, Lorg/telegram/ui/Cells/HeaderCell;->height:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText2(Ljava/lang/CharSequence;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public setText2Color(I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void
.end method

.method public setText2Gravity(I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTopMargin(I)V
    .locals 1

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setTopMargin(IZ)V

    return-void
.end method

.method public setTopMargin(IZ)V
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz p2, :cond_0

    .line 168
    iget p1, p0, Lorg/telegram/ui/Cells/HeaderCell;->height:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    :cond_0
    return-void
.end method
