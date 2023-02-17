.class Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;
.super Landroid/widget/FrameLayout;
.source "ThemeEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreLayout:Z

.field private rect1:Landroid/graphics/RectF;

.field private statusBarOpen:Ljava/lang/Boolean;

.field final synthetic this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/content/Context;Lorg/telegram/ui/Components/ThemeEditorView;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 651
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->ignoreLayout:Z

    .line 652
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->rect1:Landroid/graphics/RectF;

    return-void
.end method

.method private updateLightStatusBar(Z)V
    .locals 6

    .line 756
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->statusBarOpen:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 759
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    const-string v1, "dialogBackground"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$3800(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 760
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    const-string v5, "actionBarDefault"

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$3900(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Ljava/lang/String;)I

    move-result v4

    const/high16 v5, 0x33000000

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v4

    cmpl-float v3, v4, v3

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 761
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->statusBarOpen:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 762
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 711
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1600(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$2300(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 712
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1600(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$2400(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0xd

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 713
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/16 v3, 0x1e

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$2500(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v3

    add-int/2addr v2, v3

    .line 716
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$2600(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Z

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    if-nez v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v3, v7, :cond_1

    .line 717
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v3

    add-int/2addr v0, v3

    sub-int/2addr v2, v3

    .line 721
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$2700(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v3

    add-int/2addr v3, v1

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    mul-int/lit8 v8, v7, 0x2

    if-ge v3, v8, :cond_0

    mul-int/lit8 v3, v7, 0x2

    sub-int/2addr v3, v1

    .line 722
    iget-object v8, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$2800(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v8

    sub-int/2addr v3, v8

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v2, v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 725
    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v3, v5, v3

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 727
    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$2900(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v7

    add-int/2addr v7, v1

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-ge v7, v8, :cond_2

    sub-int v7, v8, v1

    .line 728
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$3000(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v9

    sub-int/2addr v7, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_1

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    :cond_2
    const/4 v7, 0x0

    .line 732
    :goto_1
    iget-object v8, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$3100(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8, v4, v1, v9, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 733
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$3100(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    cmpl-float v2, v3, v5

    if-eqz v2, :cond_3

    .line 736
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 737
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->rect1:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$3200(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v5

    int-to-float v5, v5

    iget-object v8, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$3300(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v8

    add-int/2addr v8, v1

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$3400(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$3500(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v10

    add-int/2addr v10, v1

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v10, v1

    int-to-float v1, v10

    invoke-virtual {v2, v5, v8, v9, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 738
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->rect1:Landroid/graphics/RectF;

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    const/16 v1, 0x24

    .line 741
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 742
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->rect1:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/2addr v3, v6

    int-to-float v3, v3

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    div-int/2addr v8, v6

    int-to-float v1, v8

    const/4 v8, 0x4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v0, v8

    int-to-float v0, v0

    invoke-virtual {v2, v3, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 743
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    const v1, -0x1e1b18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 744
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$100(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 745
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->rect1:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-lez v7, :cond_4

    .line 748
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    const-string v1, "dialogBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 749
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$3600(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v0

    int-to-float v9, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v7

    int-to-float v10, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$3700(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v11, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v12, v0

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 751
    :cond_4
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    div-int/2addr p1, v6

    if-le v7, p1, :cond_5

    const/4 v4, 0x1

    :cond_5
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->updateLightStatusBar(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1600(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1600(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 657
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p1, 0x1

    return p1

    .line 660
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 697
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 698
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$2200(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 670
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 671
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 672
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-lt v1, v3, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1700(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 673
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->ignoreLayout:Z

    .line 674
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1800(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v5

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget-object v7, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1900(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result v7

    invoke-virtual {p0, v5, v6, v7, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 675
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->ignoreLayout:Z

    :cond_0
    if-lt v1, v3, :cond_1

    .line 678
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    sub-int v5, p2, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lt v1, v3, :cond_2

    .line 680
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    sub-int v1, p2, v1

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr v1, v0

    .line 681
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$100(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 682
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->ignoreLayout:Z

    .line 683
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$100(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 684
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$100(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/16 v2, 0x30

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 685
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$2000(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 687
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$100(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->setScrollOffsetY(I)V

    .line 688
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$2102(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;I)I

    .line 690
    :cond_3
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->ignoreLayout:Z

    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    .line 692
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 665
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 703
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$1;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 706
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
