.class Lorg/telegram/ui/CachedMediaLayout$CacheCell;
.super Landroid/widget/FrameLayout;
.source "CachedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CachedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheCell"
.end annotation


# instance fields
.field checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field container:Landroid/widget/FrameLayout;

.field drawDivider:Z

.field sizeTextView:Landroid/widget/TextView;

.field type:I


# direct methods
.method public static synthetic $r8$lambda$xFs780llw84MrsfAs6PiV6ouLbg(Lorg/telegram/ui/CachedMediaLayout$CacheCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/CachedMediaLayout;Landroid/content/Context;)V
    .locals 8

    .line 992
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 993
    new-instance p1, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v0, 0x15

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v0, 0xe

    .line 994
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 995
    iget-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const-string v0, "checkbox"

    const-string v1, "radioBackground"

    const-string v2, "checkboxCheck"

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    iget-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v0, 0x18

    const/16 v1, 0x18

    const/16 v2, 0x13

    const/16 v3, 0x12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 997
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 998
    new-instance v0, Lorg/telegram/ui/CachedMediaLayout$CacheCell$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CachedMediaLayout$CacheCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CachedMediaLayout$CacheCell;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x28

    const/16 v2, 0x28

    const/16 v3, 0x13

    const/4 v7, 0x0

    .line 1001
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1002
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->container:Landroid/widget/FrameLayout;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/16 v3, 0x30

    const/16 v5, 0x5a

    .line 1004
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1005
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->sizeTextView:Landroid/widget/TextView;

    const/4 p2, 0x1

    const/high16 v0, 0x41800000    # 16.0f

    .line 1006
    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1007
    iget-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->sizeTextView:Landroid/widget/TextView;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1008
    iget-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->sizeTextView:Landroid/widget/TextView;

    const-string p2, "windowBackgroundWhiteBlueText"

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1010
    iget-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->sizeTextView:Landroid/widget/TextView;

    const/16 v0, 0x45

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/16 v5, 0x15

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 999
    invoke-virtual {p0}, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->onCheckBoxPressed()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1016
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1017
    iget-boolean v0, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->drawDivider:Z

    if-eqz v0, :cond_0

    .line 1018
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    const/16 v1, 0x5a

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onCheckBoxPressed()V
    .locals 0

    return-void
.end method
