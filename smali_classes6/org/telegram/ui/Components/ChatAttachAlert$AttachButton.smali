.class Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;
.super Landroid/widget/FrameLayout;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachButton"
.end annotation


# instance fields
.field private backgroundKey:I

.field private checkAnimator:Landroid/animation/Animator;

.field private checked:Z

.field private checkedState:F

.field private currentId:I

.field private imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private textKey:I

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V
    .locals 9

    .line 1096
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 1097
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1098
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/4 v0, 0x1

    .line 1099
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1101
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton$1;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;Landroid/content/Context;Lorg/telegram/ui/Components/ChatAttachAlert;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 1108
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1109
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v2, 0x20

    const/16 v3, 0x20

    const/16 v4, 0x31

    const/4 v5, 0x0

    const/16 v6, 0x12

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1111
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    const/4 p2, 0x2

    .line 1112
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1113
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1114
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1115
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2300(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1116
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1117
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1118
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 1119
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/16 v4, 0x3e

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$14800(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/TextView;
    .locals 0

    .line 1085
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$14900(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 1085
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$15900(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)I
    .locals 0

    .line 1085
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textKey:I

    return p0
.end method

.method static synthetic access$16000(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)F
    .locals 0

    .line 1085
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->checkedState:F

    return p0
.end method

.method static synthetic access$17400(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)I
    .locals 0

    .line 1085
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->currentId:I

    return p0
.end method


# virtual methods
.method public getCheckedState()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1164
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->checkedState:F

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1169
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 1170
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->updateCheckedState(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1189
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->checkedState:F

    const v2, 0x3d75c28f    # 0.06f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0x17

    .line 1190
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 1192
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 1193
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    .line 1195
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->backgroundKey:I

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3000(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1196
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;

    move-result-object v4

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1197
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1198
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->checkedState:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1199
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v0, v4

    sub-float v0, v1, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1201
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;

    move-result-object v0

    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1202
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x5

    .line 1203
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->checkedState:F

    mul-float/2addr v0, v4

    sub-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1124
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1125
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 1126
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 1127
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->checked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1175
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2700(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x54

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCheckedState(F)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1155
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->checkedState:F

    .line 1156
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const v1, 0x3d75c28f    # 0.06f

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1157
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1158
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2500(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textKey:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2600(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->checkedState:F

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1159
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;II)V
    .locals 0

    .line 1179
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->currentId:I

    .line 1180
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1181
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 1182
    iput p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->backgroundKey:I

    .line 1183
    iput p5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textKey:I

    .line 1184
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textKey:I

    invoke-static {p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    move-result p3

    iget p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->checkedState:F

    invoke-static {p2, p3, p4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method updateCheckedState(Z)V
    .locals 6

    .line 1131
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->checked:Z

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->currentId:I

    int-to-long v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2400(Lorg/telegram/ui/Components/ChatAttachAlert;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-ne v0, v1, :cond_1

    return-void

    .line 1134
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->currentId:I

    int-to-long v0, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2400(Lorg/telegram/ui/Components/ChatAttachAlert;)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->checked:Z

    .line 1135
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->checkAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    .line 1136
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1139
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->checked:Z

    if-eqz p1, :cond_4

    .line 1140
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1141
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_4
    new-array p1, v2, [F

    .line 1143
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->checked:Z

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    aput v0, p1, v3

    const-string v0, "checkedState"

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->checkAnimator:Landroid/animation/Animator;

    const-wide/16 v0, 0xc8

    .line 1144
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1145
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->checkAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_4

    .line 1147
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    .line 1148
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 1149
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->checked:Z

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_3
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setCheckedState(F)V

    :goto_4
    return-void
.end method
