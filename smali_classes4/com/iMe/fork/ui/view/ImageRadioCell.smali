.class public final Lcom/iMe/fork/ui/view/ImageRadioCell;
.super Landroid/widget/FrameLayout;
.source "ImageRadioCell.kt"


# instance fields
.field private final dialog:Z

.field private final imageView$delegate:Lkotlin/Lazy;

.field private needDivider:Z

.field private final radioButton$delegate:Lkotlin/Lazy;

.field private final textView$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput-boolean p2, p0, Lcom/iMe/fork/ui/view/ImageRadioCell;->dialog:Z

    .line 32
    new-instance p1, Lcom/iMe/fork/ui/view/ImageRadioCell$imageView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/ImageRadioCell$imageView$2;-><init>(Lcom/iMe/fork/ui/view/ImageRadioCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/ImageRadioCell;->imageView$delegate:Lkotlin/Lazy;

    .line 33
    new-instance p1, Lcom/iMe/fork/ui/view/ImageRadioCell$textView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/ImageRadioCell$textView$2;-><init>(Lcom/iMe/fork/ui/view/ImageRadioCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/ImageRadioCell;->textView$delegate:Lkotlin/Lazy;

    .line 34
    new-instance p1, Lcom/iMe/fork/ui/view/ImageRadioCell$radioButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/ImageRadioCell$radioButton$2;-><init>(Lcom/iMe/fork/ui/view/ImageRadioCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/ImageRadioCell;->radioButton$delegate:Lkotlin/Lazy;

    .line 39
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ImageRadioCell;->getImageView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    const/16 v0, 0x1e

    const/16 v1, 0x1e

    const v2, 0x800013

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p3

    move v5, p3

    .line 40
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    .line 38
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ImageRadioCell;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    add-int/lit8 p2, p3, 0x1e

    add-int/lit8 v3, p2, 0xb

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/16 v2, 0x33

    .line 52
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    .line 50
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ImageRadioCell;->getRadioButton()Lorg/telegram/ui/Components/RadioButton;

    move-result-object p1

    add-int/lit8 v5, p3, 0x1

    const/16 v0, 0x16

    const/16 v1, 0x16

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/16 v4, 0xe

    .line 64
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/16 p3, 0x15

    .line 25
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/fork/ui/view/ImageRadioCell;-><init>(Landroid/content/Context;ZI)V

    return-void
.end method

.method public static final synthetic access$initImageView(Lcom/iMe/fork/ui/view/ImageRadioCell;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ImageRadioCell;->initImageView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRadioButton(Lcom/iMe/fork/ui/view/ImageRadioCell;)Lorg/telegram/ui/Components/RadioButton;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ImageRadioCell;->initRadioButton()Lorg/telegram/ui/Components/RadioButton;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTextView(Lcom/iMe/fork/ui/view/ImageRadioCell;)Landroid/widget/TextView;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ImageRadioCell;->initTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final getImageView()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ImageRadioCell;->imageView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method private final getRadioButton()Lorg/telegram/ui/Components/RadioButton;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ImageRadioCell;->radioButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RadioButton;

    return-object v0
.end method

.method private final getTextView()Landroid/widget/TextView;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ImageRadioCell;->textView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initImageView()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    .line 157
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 158
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private final initRadioButton()Lorg/telegram/ui/Components/RadioButton;
    .locals 3

    .line 174
    new-instance v0, Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RadioButton;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x14

    .line 175
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadioButton;->setSize(I)V

    .line 176
    iget-boolean v1, p0, Lcom/iMe/fork/ui/view/ImageRadioCell;->dialog:Z

    if-eqz v1, :cond_0

    .line 178
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 179
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 177
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    goto :goto_0

    .line 183
    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 184
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 182
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    :goto_0
    return-object v0
.end method

.method private final initTextView()Landroid/widget/TextView;
    .locals 3

    .line 161
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    .line 163
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 165
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    or-int/lit8 v1, v1, 0x10

    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 167
    iget-boolean v1, p0, Lcom/iMe/fork/ui/view/ImageRadioCell;->dialog:Z

    if-eqz v1, :cond_1

    .line 168
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 170
    :cond_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public final getDialog()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/iMe/fork/ui/view/ImageRadioCell;->dialog:Z

    return v0
.end method

.method public final isChecked()Z
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ImageRadioCell;->getRadioButton()Lorg/telegram/ui/Components/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadioButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-boolean v0, p0, Lcom/iMe/fork/ui/view/ImageRadioCell;->needDivider:Z

    if-eqz v0, :cond_2

    .line 135
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v1, 0x14

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    move v3, v0

    .line 136
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    .line 137
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sub-int/2addr v0, v1

    int-to-float v5, v0

    .line 138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    .line 139
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    .line 134
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.RadioButton"

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/ImageRadioCell;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 112
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/16 p2, 0x32

    .line 113
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget-boolean v0, p0, Lcom/iMe/fork/ui/view/ImageRadioCell;->needDivider:Z

    add-int/2addr p2, v0

    .line 111
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 115
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    const/16 p2, 0x22

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p1, p2

    .line 116
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ImageRadioCell;->getRadioButton()Lorg/telegram/ui/Components/RadioButton;

    move-result-object p2

    const/16 v0, 0x16

    .line 118
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/high16 v2, -0x80000000

    .line 117
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 120
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 116
    invoke-virtual {p2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 122
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ImageRadioCell;->getImageView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p2

    const/16 v0, 0x1e

    .line 123
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 124
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 122
    invoke-virtual {p2, v1, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 126
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ImageRadioCell;->getTextView()Landroid/widget/TextView;

    move-result-object p2

    .line 127
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 128
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 126
    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->measure(II)V

    return-void
.end method

.method public final setImage(Ljava/lang/Integer;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ImageRadioCell;->getImageView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public final setImageUrl(Ljava/lang/String;)V
    .locals 7

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ImageRadioCell;->getImageView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v1

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_bg_white_circle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setText(Ljava/lang/String;ZZ)V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ImageRadioCell;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ImageRadioCell;->getRadioButton()Lorg/telegram/ui/Components/RadioButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    .line 73
    iput-boolean p3, p0, Lcom/iMe/fork/ui/view/ImageRadioCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    .line 74
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public final setTextColor(I)V
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ImageRadioCell;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
