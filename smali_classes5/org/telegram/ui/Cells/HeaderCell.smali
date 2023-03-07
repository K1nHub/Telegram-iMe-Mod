.class public Lorg/telegram/ui/Cells/HeaderCell;
.super Landroid/widget/FrameLayout;
.source "HeaderCell.java"


# instance fields
.field private expandImageView:Landroid/widget/ImageView;

.field private height:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textView:Landroid/widget/TextView;

.field private textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v2, "windowBackgroundWhiteBlueHeader"

    const/16 v3, 0x15

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 104
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Ljava/lang/String;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    const-string v2, "windowBackgroundWhiteBlueHeader"

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    .line 112
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Ljava/lang/String;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    const-string v2, "windowBackgroundWhiteBlueHeader"

    const/16 v4, 0xf

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v6, p3

    .line 116
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Ljava/lang/String;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 13

    move-object v0, p0

    move-object v1, p2

    .line 128
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x28

    .line 100
    iput v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->height:I

    move-object/from16 v2, p7

    .line 129
    iput-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 132
    new-instance v2, Landroid/widget/ImageView;

    move-object v3, p1

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->expandImageView:Landroid/widget/ImageView;

    .line 133
    sget v3, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    iget-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->expandImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/HeaderCell;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 135
    iget-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->expandImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->expandImageView:Landroid/widget/ImageView;

    add-int/lit8 v6, p3, -0x4

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x33

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v7, p4

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    const/4 v10, 0x1

    const/high16 v3, 0x41700000    # 15.0f

    .line 139
    invoke-virtual {v2, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 140
    iget-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    iget-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 142
    iget-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v11, 0x5

    const/4 v12, 0x3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    :goto_0
    or-int/lit8 v3, v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 143
    iget-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    iget v3, v0, Lorg/telegram/ui/Cells/HeaderCell;->height:I

    sub-int v3, v3, p4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 144
    iget-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/HeaderCell;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 146
    iget-object v1, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    :goto_1
    or-int/lit8 v5, v2, 0x30

    if-eqz p6, :cond_2

    const/4 v2, 0x0

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    move/from16 v9, p5

    :goto_2
    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p3

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p6, :cond_5

    .line 149
    new-instance v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0xd

    .line 150
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 151
    iget-object v1, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    goto :goto_3

    :cond_3
    const/4 v2, 0x5

    :goto_3
    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 152
    iget-object v1, v0, Lorg/telegram/ui/Cells/HeaderCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    const/4 v11, 0x3

    :cond_4
    or-int/lit8 v5, v11, 0x30

    const/16 v7, 0x15

    move/from16 v6, p3

    move/from16 v8, p3

    move/from16 v9, p5

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    :cond_5
    invoke-static {p0, v10}, Landroidx/core/view/ViewCompat;->setAccessibilityHeading(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 120
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Ljava/lang/String;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    .line 124
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Ljava/lang/String;IIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    const-string v2, "windowBackgroundWhiteBlueHeader"

    const/16 v3, 0x15

    const/16 v4, 0xf

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 108
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Ljava/lang/String;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method


# virtual methods
.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextView2()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 219
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    .line 221
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHeading(Z)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 223
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
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

    .line 228
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 186
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

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    return-void

    .line 67
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

    .line 86
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setTopMargin(IZ)V

    return-void
.end method

.method public setBottomMargin(I)V
    .locals 2

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    .line 172
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

    .line 178
    iget-object v2, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    aput v0, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 180
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_2
    return-void
.end method

.method public setExpandableMode(ZZ)V
    .locals 4

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 73
    iget-object p1, p0, Lorg/telegram/ui/Cells/HeaderCell;->expandImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lorg/telegram/ui/Cells/HeaderCell;->expandImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, -0x3d4c0000    # -90.0f

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 75
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr p1, v3

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 76
    :goto_1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 78
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/HeaderCell;->expandImageView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 80
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 82
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setHeight(I)V
    .locals 2

    .line 159
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

    .line 198
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

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText2(Ljava/lang/CharSequence;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public setText2Color(Ljava/lang/String;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void
.end method

.method public setText2Gravity(I)V
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTopMargin(I)V
    .locals 1

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setTopMargin(IZ)V

    return-void
.end method

.method public setTopMargin(IZ)V
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/Cells/HeaderCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz p2, :cond_0

    .line 166
    iget p1, p0, Lorg/telegram/ui/Cells/HeaderCell;->height:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    :cond_0
    return-void
.end method
