.class public Lorg/telegram/ui/Cells/DialogsHintCell;
.super Landroid/widget/FrameLayout;
.source "DialogsHintCell.java"


# instance fields
.field private final chevronView:Landroid/widget/ImageView;

.field private final closeView:Landroid/widget/ImageView;

.field private final contentView:Landroid/widget/LinearLayout;

.field private height:I

.field private final messageView:Landroid/widget/TextView;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 34
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/16 v3, 0x10

    .line 37
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/16 v5, 0x8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 39
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogsHintCell;->contentView:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    .line 40
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 41
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v8, 0x18

    if-eqz v7, :cond_0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    goto :goto_0

    :cond_0
    move v7, v2

    :goto_0
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    :goto_1
    invoke-virtual {v4, v7, v2, v8, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v7, -0x1

    .line 42
    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Cells/DialogsHintCell;->titleView:Landroid/widget/TextView;

    const/high16 v9, 0x41700000    # 15.0f

    .line 45
    invoke-virtual {v8, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v9, "fonts/rmedium.ttf"

    .line 46
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 47
    invoke-virtual {v8}, Landroid/widget/TextView;->setSingleLine()V

    .line 48
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v10, 0x5

    const/4 v11, 0x3

    if-eqz v9, :cond_2

    move v9, v10

    goto :goto_2

    :cond_2
    move v9, v11

    :goto_2
    const/16 v12, 0x30

    or-int/2addr v9, v12

    const/4 v13, -0x2

    const/4 v14, 0x0

    invoke-static {v13, v13, v14, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Cells/DialogsHintCell;->messageView:Landroid/widget/TextView;

    const/high16 v9, 0x41600000    # 14.0f

    .line 51
    invoke-virtual {v8, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v6, 0x2

    .line 52
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 53
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 54
    invoke-static {v7, v13, v14, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogsHintCell;->chevronView:Landroid/widget/ImageView;

    .line 57
    sget v6, Lorg/telegram/messenger/R$drawable;->arrow_newchat:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_3

    move v6, v11

    goto :goto_3

    :cond_3
    move v6, v10

    :goto_3
    or-int/2addr v6, v3

    invoke-static {v3, v3, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogsHintCell;->closeView:Landroid/widget/ImageView;

    .line 61
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_close:I

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x6

    .line 62
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v4, v6, v7, v8, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 v12, -0x2

    const/4 v13, -0x2

    .line 63
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_4

    move v10, v11

    :cond_4
    or-int/lit8 v14, v10, 0x10

    const/16 v3, -0xf

    if-eqz v1, :cond_5

    move v15, v3

    goto :goto_4

    :cond_5
    move v15, v2

    :goto_4
    const/16 v16, 0x0

    if-eqz v1, :cond_6

    move/from16 v17, v2

    goto :goto_5

    :cond_6
    move/from16 v17, v3

    :goto_5
    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogsHintCell;->updateColors()V

    return-void
.end method


# virtual methods
.method public height()I
    .locals 1

    .line 120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 123
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->height:I

    if-gtz v0, :cond_1

    const/16 v0, 0x48

    .line 124
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->height:I

    .line 126
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->height:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 99
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 107
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-gtz p2, :cond_0

    .line 109
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->contentView:Landroid/widget/LinearLayout;

    .line 112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr p2, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/high16 v3, -0x80000000

    .line 113
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 111
    invoke-virtual {v0, p2, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 115
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->height:I

    .line 116
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setChristmasStyle(Landroid/view/View$OnClickListener;)V
    .locals 5

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->chevronView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->closeView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->closeView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "\ud83c\udf84"

    .line 90
    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 92
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    sget v3, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v4, v0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->titleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->titleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->messageView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->chevronView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->closeView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->messageView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->chevronView:Landroid/widget/ImageView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->closeView:Landroid/widget/ImageView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsHintCell;->closeView:Landroid/widget/ImageView;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledCircle()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
