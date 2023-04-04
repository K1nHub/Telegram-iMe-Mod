.class public final Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;
.super Landroid/widget/LinearLayout;
.source "ChatAttachAlertButtonCell.kt"


# instance fields
.field private final checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

.field private final lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private needDivider:Z

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;->initLottieImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;->initTitleView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;->titleView:Landroid/widget/TextView;

    .line 32
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;->initCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/16 v2, 0x24

    const/16 v3, 0x24

    const/16 v4, 0x10

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    .line 36
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 37
    invoke-static {p1, v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x12

    const/16 v4, 0x12

    const/16 v5, 0x10

    const/4 v7, 0x0

    const/16 v8, 0x15

    const/4 v9, 0x0

    .line 38
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    return-void
.end method

.method private final initCheckBox()Lorg/telegram/ui/Components/CheckBoxSquare;
    .locals 3

    .line 90
    new-instance v0, Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method private final initLottieImageView()Lorg/telegram/ui/Components/RLottieImageView;
    .locals 2

    .line 78
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    .line 79
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private final initTitleView()Landroid/widget/TextView;
    .locals 3

    .line 82
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    const v1, 0x800013

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 85
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const-string v1, "windowBackgroundWhiteBlackText"

    .line 86
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method


# virtual methods
.method public final getLottieImageView()Lorg/telegram/ui/Components/RLottieImageView;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object v0
.end method

.method public final isChecked()Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-boolean v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;->needDivider:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v6, v0, v1

    const/4 v3, 0x0

    .line 70
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 59
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x30

    .line 61
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;->needDivider:Z

    add-int/2addr v0, v1

    .line 60
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 58
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final setButton(Lcom/iMe/fork/enums/ChatAttachAlertButton;ZZ)V
    .locals 3

    const-string v0, "button"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/iMe/fork/enums/ChatAttachAlertButton;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lcom/iMe/fork/enums/ChatAttachAlertButton;->getIconResId()I

    move-result v1

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 47
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x2e

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/iMe/fork/enums/ChatAttachAlertButton;->getColorKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {v1, p1}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 48
    iget-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    .line 49
    iput-boolean p3, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public final setChecked(Z)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    return-void
.end method
