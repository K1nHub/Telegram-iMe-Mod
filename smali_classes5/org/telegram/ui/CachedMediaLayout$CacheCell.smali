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

    .line 1027
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1028
    new-instance p1, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v0, 0x15

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v0, 0xe

    .line 1029
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 1030
    iget-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 1031
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1032
    new-instance v0, Lorg/telegram/ui/CachedMediaLayout$CacheCell$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CachedMediaLayout$CacheCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CachedMediaLayout$CacheCell;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1035
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->container:Landroid/widget/FrameLayout;

    .line 1037
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->sizeTextView:Landroid/widget/TextView;

    const/4 p2, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    .line 1038
    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1039
    iget-object p2, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->sizeTextView:Landroid/widget/TextView;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1040
    iget-object p2, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->sizeTextView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1042
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_0

    .line 1043
    iget-object p2, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v0, 0x18

    const/16 v1, 0x18

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x12

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x28

    const/16 v2, 0x28

    const/16 v3, 0x15

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1044
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1045
    iget-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->container:Landroid/widget/FrameLayout;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/16 v3, 0x5a

    const/16 v5, 0x28

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1046
    iget-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->sizeTextView:Landroid/widget/TextView;

    const/16 v0, 0x45

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1048
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v0, 0x18

    const/16 v1, 0x18

    const/16 v2, 0x13

    const/16 v3, 0x12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x28

    const/16 v2, 0x28

    const/16 v3, 0x13

    const/4 v7, 0x0

    .line 1049
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    iget-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->container:Landroid/widget/FrameLayout;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/16 v3, 0x30

    const/16 v5, 0x5a

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1051
    iget-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->sizeTextView:Landroid/widget/TextView;

    const/16 v0, 0x45

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/16 v5, 0x15

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 1033
    invoke-virtual {p0}, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->onCheckBoxPressed()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1057
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1058
    iget-boolean v0, p0, Lorg/telegram/ui/CachedMediaLayout$CacheCell;->drawDivider:Z

    if-eqz v0, :cond_1

    .line 1059
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 1060
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    const/16 v1, 0x30

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1062
    :cond_0
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

    :cond_1
    :goto_0
    return-void
.end method

.method public onCheckBoxPressed()V
    .locals 0

    return-void
.end method
