.class Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;
.super Landroid/widget/FrameLayout;
.source "NotificationsSoundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/NotificationsSoundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ToneCell"
.end annotation


# instance fields
.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private needDivider:Z

.field private radioButton:Lorg/telegram/ui/Components/RadioButton;

.field private textView:Landroid/widget/TextView;

.field tone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 13

    .line 706
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 708
    new-instance v0, Lorg/telegram/ui/Components/RadioButton;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/16 v1, 0x14

    .line 709
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RadioButton;->setSize(I)V

    .line 710
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const-string v2, "radioBackground"

    invoke-static {v2, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const-string v3, "radioBackgroundChecked"

    invoke-static {v3, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    .line 711
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x5

    const/4 v4, 0x3

    if-eqz v2, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    :goto_0
    or-int/lit8 v8, v5, 0x10

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    const/16 v9, 0x14

    :goto_1
    const/4 v10, 0x0

    if-eqz v2, :cond_2

    const/16 v11, 0x14

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    const/4 v12, 0x0

    const/16 v6, 0x16

    const/16 v7, 0x16

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    new-instance v0, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v1, 0x18

    invoke-direct {v0, p1, v1, p2}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x0

    const-string v2, "windowBackgroundWhite"

    const-string v6, "checkboxCheck"

    .line 715
    invoke-virtual {v0, v1, v2, v6}, Lorg/telegram/ui/Components/CheckBox2;->setColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 717
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 718
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v6, 0x1a

    const/16 v7, 0x1a

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_3

    const/4 v2, 0x5

    goto :goto_3

    :cond_3
    const/4 v2, 0x3

    :goto_3
    or-int/lit8 v8, v2, 0x10

    const/16 v2, 0x12

    if-eqz v1, :cond_4

    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    const/16 v9, 0x12

    :goto_4
    const/4 v10, 0x0

    if-eqz v1, :cond_5

    const/16 v11, 0x12

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    :goto_5
    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 721
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->textView:Landroid/widget/TextView;

    const-string p1, "windowBackgroundWhiteBlackText"

    .line 722
    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 723
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->textView:Landroid/widget/TextView;

    const/high16 p2, 0x41800000    # 16.0f

    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 724
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 725
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 726
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 727
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->textView:Landroid/widget/TextView;

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 728
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->textView:Landroid/widget/TextView;

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_6

    const/4 p2, 0x5

    goto :goto_6

    :cond_6
    const/4 p2, 0x3

    :goto_6
    or-int/lit8 p2, p2, 0x10

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 730
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->textView:Landroid/widget/TextView;

    const/4 v5, -0x2

    const/4 v6, -0x2

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_7

    goto :goto_7

    :cond_7
    const/4 v3, 0x3

    :goto_7
    or-int/lit8 v7, v3, 0x10

    const/16 v0, 0x17

    const/16 v1, 0x3d

    if-eqz p2, :cond_8

    const/16 v8, 0x17

    goto :goto_8

    :cond_8
    const/16 v8, 0x3d

    :goto_8
    const/4 v9, 0x0

    if-eqz p2, :cond_9

    const/16 v10, 0x3d

    goto :goto_9

    :cond_9
    const/16 v10, 0x17

    :goto_9
    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;)Lorg/telegram/ui/Components/RadioButton;
    .locals 0

    .line 696
    iget-object p0, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;)Lorg/telegram/ui/Components/CheckBox2;
    .locals 0

    .line 696
    iget-object p0, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;)Landroid/widget/TextView;
    .locals 0

    .line 696
    iget-object p0, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;Z)Z
    .locals 0

    .line 696
    iput-boolean p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->needDivider:Z

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 740
    iget-boolean v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->needDivider:Z

    if-eqz v0, :cond_2

    .line 741
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v1, 0x0

    const/16 v2, 0x3c

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1

    const/16 v1, 0x3c

    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v7, v0

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 747
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.RadioButton"

    .line 748
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 749
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 750
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadioButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 735
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x32

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
