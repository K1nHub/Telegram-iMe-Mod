.class public Lorg/telegram/ui/Cells/BrightnessControlCell;
.super Landroid/widget/FrameLayout;
.source "BrightnessControlCell.java"


# instance fields
.field private leftImageView:Landroid/widget/ImageView;

.field private rightImageView:Landroid/widget/ImageView;

.field private seekBarView:Lorg/telegram/ui/Components/SeekBarView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/BrightnessControlCell;->leftImageView:Landroid/widget/ImageView;

    .line 37
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_brightness_low:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Cells/BrightnessControlCell;->leftImageView:Landroid/widget/ImageView;

    const/16 v1, 0x18

    const/16 v2, 0x18

    const/16 v3, 0x33

    const/16 v4, 0x11

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    new-instance v0, Lorg/telegram/ui/Cells/BrightnessControlCell$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/telegram/ui/Cells/BrightnessControlCell$1;-><init>(Lorg/telegram/ui/Cells/BrightnessControlCell;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/BrightnessControlCell;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    .line 49
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/BrightnessControlCell;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    new-instance v1, Lorg/telegram/ui/Cells/BrightnessControlCell$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/BrightnessControlCell$2;-><init>(Lorg/telegram/ui/Cells/BrightnessControlCell;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Cells/BrightnessControlCell;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Cells/BrightnessControlCell;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const/4 v1, -0x1

    const/16 v2, 0x26

    const/16 v4, 0x36

    const/4 v5, 0x5

    const/16 v6, 0x36

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/BrightnessControlCell;->rightImageView:Landroid/widget/ImageView;

    .line 69
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_brightness_high:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object p1, p0, Lorg/telegram/ui/Cells/BrightnessControlCell;->rightImageView:Landroid/widget/ImageView;

    const/16 v0, 0x18

    const/16 v1, 0x18

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/16 v5, 0x11

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected didChangedValue(F)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 75
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Cells/BrightnessControlCell;->leftImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "windowBackgroundWhiteGrayIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Cells/BrightnessControlCell;->rightImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Cells/BrightnessControlCell;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBarView;->getSeekBarAccessibilityDelegate()Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 86
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x30

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 101
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/BrightnessControlCell;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBarView;->getSeekBarAccessibilityDelegate()Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->performAccessibilityActionInternal(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setProgress(F)V
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Cells/BrightnessControlCell;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    return-void
.end method
