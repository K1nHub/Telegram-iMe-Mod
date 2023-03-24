.class public Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;
.super Landroid/widget/FrameLayout;
.source "ProxyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProxyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextDetailProxyCell"
.end annotation


# instance fields
.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private checkDrawable:Landroid/graphics/drawable/Drawable;

.field private checkImageView:Landroid/widget/ImageView;

.field private color:I

.field private currentInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

.field private isSelected:Z

.field private isSelectionEnabled:Z

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/ProxyListActivity;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$7mgeOJaGkhDG0Cyg6py71zdGyj0(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N7L0JxnM2QJ0d8Eu_5HHSPgH3B4(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->lambda$setSelectionEnabled$1(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ProxyListActivity;Landroid/content/Context;)V
    .locals 13

    .line 132
    iput-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->this$0:Lorg/telegram/ui/ProxyListActivity;

    .line 133
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 135
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    const-string v0, "windowBackgroundWhiteBlackText"

    .line 136
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    const/4 v0, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 138
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 139
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 140
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 141
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 142
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v2, 0x5

    const/4 v3, 0x3

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 143
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    or-int/lit8 v6, v6, 0x30

    const/16 v11, 0x38

    const/16 v12, 0x15

    if-eqz v1, :cond_2

    move v7, v11

    goto :goto_2

    :cond_2
    move v7, v12

    :goto_2
    const/16 v8, 0xa

    if-eqz v1, :cond_3

    move v9, v12

    goto :goto_3

    :cond_3
    move v9, v11

    :goto_3
    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    .line 146
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 147
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 148
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 149
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 150
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 151
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    const/4 v0, 0x6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 152
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 153
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 154
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_5

    move v6, v2

    goto :goto_5

    :cond_5
    move v6, v3

    :goto_5
    or-int/lit8 v6, v6, 0x30

    if-eqz v1, :cond_6

    move v7, v11

    goto :goto_6

    :cond_6
    move v7, v12

    :goto_6
    const/16 v8, 0x23

    if-eqz v1, :cond_7

    move v9, v12

    goto :goto_7

    :cond_7
    move v9, v11

    :goto_7
    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    .line 157
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_info:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "windowBackgroundWhiteGrayText3"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 159
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 160
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$string;->Edit:I

    const-string v4, "Edit"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 161
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/16 v5, 0x30

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    or-int/lit8 v6, v1, 0x30

    const/16 v7, 0x8

    const/16 v8, 0x8

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance p1, Lorg/telegram/ui/Components/CheckBox2;

    invoke-direct {p1, p2, v12}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const-string p2, "checkbox"

    const-string v1, "radioBackground"

    const-string v4, "checkboxCheck"

    .line 165
    invoke-virtual {p1, p2, v1, v4}, Lorg/telegram/ui/Components/CheckBox2;->setColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 167
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v4, 0x18

    const/16 v5, 0x18

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_9

    goto :goto_9

    :cond_9
    move v2, v3

    :goto_9
    or-int/lit8 v6, v2, 0x10

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;)Lorg/telegram/ui/Components/CheckBox2;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->currentInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;)Landroid/widget/ImageView;
    .locals 0

    .line 118
    iget-object p0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    .line 162
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->this$0:Lorg/telegram/ui/ProxyListActivity;

    new-instance v0, Lorg/telegram/ui/ProxySettingsActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->currentInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProxySettingsActivity;-><init>(Lorg/telegram/messenger/SharedConfig$ProxyInfo;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$setSelectionEnabled$1(FFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 249
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 250
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    .line 251
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 252
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 253
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 254
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    :goto_0
    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float p2, p3, p1

    add-float/2addr p2, p1

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 259
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    mul-float p3, p2, p1

    add-float/2addr p3, p1

    .line 262
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 263
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 264
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 323
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 324
    invoke-virtual {p0}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->updateStatus()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 329
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

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

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

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 175
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x40

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 301
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 302
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$drawable;->proxy_check:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    .line 304
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 305
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->color:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 307
    :cond_1
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_2

    .line 308
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v0, v1, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 310
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 313
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setItemSelected(ZZ)V
    .locals 1

    .line 292
    iget-boolean v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->isSelected:Z

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 295
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->isSelected:Z

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public setProxy(Lorg/telegram/messenger/SharedConfig$ProxyInfo;)V
    .locals 3

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iput-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->currentInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    return-void
.end method

.method public setSelectionEnabled(ZZ)V
    .locals 5

    .line 225
    iget-boolean v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->isSelectionEnabled:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 228
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->isSelectionEnabled:Z

    .line 230
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v1, 0x20

    if-eqz v0, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez p2, :cond_6

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    .line 233
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 234
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 235
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 236
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    neg-int v1, v1

    :goto_2
    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 237
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    if-eqz p1, :cond_4

    move v1, v0

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 239
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 240
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 241
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move v2, v0

    :goto_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 243
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 244
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    goto :goto_7

    :cond_6
    const/4 p2, 0x2

    new-array p2, p2, [F

    if-eqz p1, :cond_7

    move v1, v3

    goto :goto_5

    :cond_7
    move v1, v4

    :goto_5
    aput v1, p2, v2

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    move v4, v3

    :goto_6
    aput v4, p2, v1

    .line 246
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v1, 0xc8

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 247
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 248
    new-instance v1, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v3, v0}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;FF)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 266
    new-instance v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$1;-><init>(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 287
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    :goto_7
    return-void
.end method

.method public setValue(Ljava/lang/CharSequence;)V
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateStatus()V
    .locals 11

    .line 185
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->currentInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Ping"

    const-string v5, ", "

    const-string v6, "windowBackgroundWhiteGrayText2"

    const-wide/16 v7, 0x0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->access$000(Lorg/telegram/ui/ProxyListActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->access$100(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->access$100(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->Connecting:I

    const-string v2, "Connecting"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 188
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->currentInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-wide v0, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    cmp-long v0, v0, v7

    const-string v1, "Connected"

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lorg/telegram/messenger/R$string;->Connected:I

    invoke-static {v1, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/telegram/messenger/R$string;->Ping:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->currentInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-wide v9, v5, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 191
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->Connected:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->currentInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-boolean v1, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->checking:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    if-nez v1, :cond_3

    .line 194
    iput-wide v7, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->availableCheckTime:J

    :cond_3
    const-string v6, "windowBackgroundWhiteBlueText6"

    goto :goto_3

    .line 201
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->currentInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-boolean v1, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->checking:Z

    if-eqz v1, :cond_5

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->Checking:I

    const-string v2, "Checking"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 204
    :cond_5
    iget-boolean v1, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    if-eqz v1, :cond_7

    .line 205
    iget-wide v0, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    cmp-long v0, v0, v7

    const-string v1, "Available"

    if-eqz v0, :cond_6

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lorg/telegram/messenger/R$string;->Available:I

    invoke-static {v1, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/telegram/messenger/R$string;->Ping:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->currentInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-wide v7, v5, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 208
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->Available:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const-string v6, "windowBackgroundWhiteGreenText"

    goto :goto_3

    .line 212
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->Unavailable:I

    const-string v2, "Unavailable"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "windowBackgroundWhiteRedText4"

    .line 216
    :goto_3
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->color:I

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->color:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 220
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->color:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_8
    return-void
.end method
