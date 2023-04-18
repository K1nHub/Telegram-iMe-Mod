.class public Lorg/telegram/ui/Components/FilterTabsView$TabView;
.super Landroid/view/View;
.source "FilterTabsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FilterTabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabView"
.end annotation


# instance fields
.field public animateChange:Z

.field private animateFromCountWidth:F

.field private animateFromCounterWidth:F

.field animateFromTabCount:I

.field private animateFromTabWidth:F

.field animateFromTextX:F

.field private animateFromTitleWidth:I

.field private animateFromWidth:F

.field animateTabCounter:Z

.field private animateTabWidth:Z

.field private animateTextChange:Z

.field private animateTextChangeOut:Z

.field animateTextX:Z

.field public changeAnimator:Landroid/animation/ValueAnimator;

.field public changeProgress:F

.field private currentPosition:I

.field private currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

.field private currentText:Ljava/lang/String;

.field inCounter:Landroid/text/StaticLayout;

.field private lastCountWidth:I

.field private lastCounterWidth:F

.field lastTabCount:I

.field private lastTabWidth:F

.field lastTextX:F

.field lastTitle:Ljava/lang/String;

.field private lastTitleWidth:I

.field private lastWidth:F

.field private locIconXOffset:F

.field outCounter:Landroid/text/StaticLayout;

.field private progressToLocked:F

.field private rect:Landroid/graphics/RectF;

.field stableCounter:Landroid/text/StaticLayout;

.field private tabWidth:I

.field private textHeight:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textOffsetX:I

.field final synthetic this$0:Lorg/telegram/ui/Components/FilterTabsView;

.field private titleAnimateInLayout:Landroid/text/StaticLayout;

.field private titleAnimateOutLayout:Landroid/text/StaticLayout;

.field private titleAnimateStableLayout:Landroid/text/StaticLayout;

.field private titleXOffset:F


# direct methods
.method public static synthetic $r8$lambda$bQ1l9T0dZzZWbxrSGzY4KLmIfEY(Lorg/telegram/ui/Components/FilterTabsView$TabView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lambda$shakeLockIcon$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/FilterTabsView;Landroid/content/Context;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    .line 475
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 429
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    const/4 p1, -0x1

    .line 446
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTabCount:I

    return-void
.end method

.method static synthetic access$3502(Lorg/telegram/ui/Components/FilterTabsView$TabView;F)F
    .locals 0

    .line 422
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->locIconXOffset:F

    return p1
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Landroid/graphics/RectF;
    .locals 0

    .line 422
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Lorg/telegram/ui/Components/FilterTabsView$Tab;
    .locals 0

    .line 422
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Z
    .locals 0

    .line 422
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabWidth:Z

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/FilterTabsView$TabView;)F
    .locals 0

    .line 422
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTabWidth:F

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/FilterTabsView$TabView;)I
    .locals 0

    .line 422
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->tabWidth:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/FilterTabsView$TabView;)F
    .locals 0

    .line 422
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromWidth:F

    return p0
.end method

.method static synthetic access$5102(Lorg/telegram/ui/Components/FilterTabsView$TabView;F)F
    .locals 0

    .line 422
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    return p1
.end method

.method private synthetic lambda$shakeLockIcon$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1037
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->locIconXOffset:F

    .line 1038
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public animateChange()Z
    .locals 27

    move-object/from16 v0, p0

    .line 887
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    iget v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTabCount:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_4

    .line 888
    iput-boolean v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabCounter:Z

    .line 889
    iput v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTabCount:I

    .line 890
    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastCountWidth:I

    int-to-float v5, v5

    iput v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromCountWidth:F

    .line 891
    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastCounterWidth:F

    iput v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromCounterWidth:F

    if-lez v2, :cond_3

    if-lez v1, :cond_3

    .line 893
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 894
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 896
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_2

    .line 897
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 898
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 899
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move v6, v3

    .line 900
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 901
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_0

    .line 902
    new-instance v8, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v8}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v9, v8, v6, v10, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 903
    new-instance v8, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v8}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v2, v8, v6, v10, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 905
    :cond_0
    new-instance v8, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v8}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v5, v8, v6, v10, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 909
    :cond_1
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 910
    new-instance v6, Landroid/text/StaticLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v7}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v10

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v6

    move v11, v1

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    .line 911
    new-instance v6, Landroid/text/StaticLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v7}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v12

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v6

    move-object v11, v5

    move v13, v1

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->stableCounter:Landroid/text/StaticLayout;

    .line 912
    new-instance v5, Landroid/text/StaticLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v12

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object v10, v5

    move-object v11, v2

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    goto :goto_2

    .line 914
    :cond_2
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v9, v5

    .line 915
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v8

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    .line 916
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v11, v5

    .line 917
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v10

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v2

    move-object v9, v1

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    :cond_3
    :goto_2
    move v1, v4

    goto :goto_3

    :cond_4
    move v1, v3

    .line 925
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    const/4 v5, 0x0

    if-lez v2, :cond_5

    new-array v6, v4, [Ljava/lang/Object;

    .line 926
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    const-string v2, "%d"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 927
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/16 v7, 0xa

    .line 928
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_4

    :cond_5
    move v6, v3

    move-object v2, v5

    .line 932
    :goto_4
    iget-object v7, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v7, v7, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    if-eqz v6, :cond_7

    sget-object v8, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lcom/iMe/fork/enums/FilterTabWidthMode;

    invoke-virtual {v8}, Lcom/iMe/fork/enums/FilterTabWidthMode;->getMarginIconAndCount()I

    move-result v8

    int-to-float v8, v8

    if-eqz v2, :cond_6

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$900(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v2

    :goto_5
    mul-float/2addr v8, v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v6, v2

    goto :goto_6

    :cond_7
    move v6, v3

    :goto_6
    add-int/2addr v7, v6

    .line 933
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 935
    iget v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTextX:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_8

    .line 936
    iput-boolean v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextX:Z

    .line 937
    iput v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTextX:F

    move v1, v4

    .line 941
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitle:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 945
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_9

    .line 947
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitle:Ljava/lang/String;

    .line 948
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    move v6, v4

    goto :goto_7

    .line 951
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    .line 952
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitle:Ljava/lang/String;

    move v6, v3

    .line 954
    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x190

    if-ltz v8, :cond_d

    .line 956
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v11}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v11

    const/16 v12, 0xf

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v1, v11, v12, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v11

    .line 957
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 958
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v8, :cond_a

    .line 960
    new-instance v11, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v11}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v15, v11, v3, v8, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 962
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-eq v11, v12, :cond_b

    .line 963
    new-instance v11, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v11}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v15, v11, v12, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 965
    :cond_b
    new-instance v1, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v1}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v8

    invoke-virtual {v13, v1, v8, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 967
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v14

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v1

    move-object v3, v15

    move v15, v2

    invoke-direct/range {v12 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayout:Landroid/text/StaticLayout;

    .line 968
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v16

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v17

    sget-object v18, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v1

    move-object v15, v3

    invoke-direct/range {v14 .. v21}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayout:Landroid/text/StaticLayout;

    .line 969
    iput-boolean v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChange:Z

    .line 970
    iput-boolean v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChangeOut:Z

    if-nez v8, :cond_c

    goto :goto_8

    .line 971
    :cond_c
    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v1

    neg-float v9, v1

    :goto_8
    iput v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleXOffset:F

    .line 972
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitleWidth:I

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTitleWidth:I

    .line 973
    iput-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayout:Landroid/text/StaticLayout;

    goto :goto_9

    .line 976
    :cond_d
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v12, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v13

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayout:Landroid/text/StaticLayout;

    .line 977
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitle:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v21

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v22

    sget-object v23, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    invoke-direct/range {v19 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayout:Landroid/text/StaticLayout;

    .line 978
    iput-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayout:Landroid/text/StaticLayout;

    .line 979
    iput-boolean v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChange:Z

    .line 980
    iput v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleXOffset:F

    .line 981
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitleWidth:I

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTitleWidth:I

    :goto_9
    move v1, v4

    :cond_e
    int-to-float v2, v7

    .line 986
    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTabWidth:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastWidth:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_f

    goto :goto_a

    :cond_f
    move v4, v1

    goto :goto_b

    .line 987
    :cond_10
    :goto_a
    iput-boolean v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabWidth:Z

    .line 988
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTabWidth:F

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTabWidth:F

    .line 989
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastWidth:F

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromWidth:F

    :goto_b
    return v4
.end method

.method public clearTransitionParams()V
    .locals 1

    const/4 v0, 0x0

    .line 1019
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateChange:Z

    .line 1020
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabCounter:Z

    .line 1022
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChange:Z

    .line 1023
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextX:Z

    .line 1024
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabWidth:Z

    const/4 v0, 0x0

    .line 1025
    iput-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    .line 1026
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getId()I
    .locals 1

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v0, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 491
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 492
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateChange:Z

    .line 493
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabCounter:Z

    .line 495
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChange:Z

    .line 496
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextX:Z

    .line 497
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabWidth:Z

    .line 498
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 500
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 501
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 502
    iput-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    .line 504
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 518
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isDefault:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 520
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllowEditing()Z

    move-result v1

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v1, :cond_4

    .line 521
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$1600(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v1

    cmpl-float v1, v1, v8

    if-eqz v1, :cond_4

    .line 522
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 523
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$1600(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v1

    iget v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentPosition:I

    rem-int/lit8 v11, v6, 0x2

    const/high16 v12, -0x40800000    # -1.0f

    if-nez v11, :cond_1

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    move v11, v12

    :goto_1
    mul-float/2addr v1, v11

    .line 524
    rem-int/2addr v6, v5

    int-to-float v6, v6

    add-float/2addr v1, v6

    float-to-double v13, v1

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v13, v15

    const-wide/high16 v17, 0x4004000000000000L    # 2.5

    mul-double v13, v13, v17

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v1, v13

    .line 525
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    long-to-float v6, v13

    const/high16 v11, 0x43c80000    # 400.0f

    div-float/2addr v6, v11

    float-to-double v13, v6

    mul-double/2addr v13, v15

    iget v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentPosition:I

    rem-int/2addr v6, v5

    if-nez v6, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    move v6, v12

    :goto_2
    float-to-double v3, v6

    mul-double/2addr v13, v3

    double-to-float v3, v13

    float-to-double v3, v3

    .line 527
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    const v6, 0x3ea8f5c3    # 0.33f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-double v10, v11

    mul-double/2addr v13, v10

    iget v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentPosition:I

    rem-int/2addr v10, v5

    if-nez v10, :cond_3

    const/high16 v12, 0x3f800000    # 1.0f

    :cond_3
    float-to-double v10, v12

    mul-double/2addr v13, v10

    double-to-float v10, v13

    .line 528
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    int-to-double v11, v6

    mul-double/2addr v3, v11

    double-to-float v3, v3

    .line 526
    invoke-virtual {v7, v10, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const v3, 0x3fb33333    # 1.4f

    mul-float/2addr v1, v3

    .line 530
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    invoke-virtual {v7, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 540
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$1700(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 541
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$1700(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v1

    .line 542
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$1800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v4

    goto :goto_3

    .line 544
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$1800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v1

    .line 545
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$1900(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v4

    .line 547
    :goto_3
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-ne v6, v1, :cond_6

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_6
    move v10, v8

    :goto_4
    const-string v11, "chats_tabUnreadActiveBackground"

    const-string v12, "chats_tabUnreadUnactiveBackground"

    if-ne v6, v1, :cond_7

    .line 549
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->access$2000(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v6

    .line 550
    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/FilterTabsView;->access$2100(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v13

    .line 551
    iget-object v14, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v14}, Lorg/telegram/ui/Components/FilterTabsView;->access$2200(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v14

    .line 552
    iget-object v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v15}, Lorg/telegram/ui/Components/FilterTabsView;->access$2300(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    .line 556
    :cond_7
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->access$2200(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v6

    .line 557
    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/FilterTabsView;->access$2300(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v13

    .line 558
    iget-object v14, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v14}, Lorg/telegram/ui/Components/FilterTabsView;->access$2000(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v14

    .line 559
    iget-object v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v15}, Lorg/telegram/ui/Components/FilterTabsView;->access$2300(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v33, v12

    move-object v12, v11

    move-object/from16 v11, v33

    :goto_5
    if-nez v13, :cond_c

    .line 564
    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/FilterTabsView;->access$2400(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v13

    if-nez v13, :cond_8

    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/FilterTabsView;->access$1700(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v13

    if-eq v13, v3, :cond_9

    :cond_8
    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v13, v13, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-eq v13, v1, :cond_a

    if-ne v13, v4, :cond_9

    goto :goto_6

    .line 568
    :cond_9
    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v13

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v13, v6}, Landroid/text/TextPaint;->setColor(I)V

    goto/16 :goto_9

    .line 565
    :cond_a
    :goto_6
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v10

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v13

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    iget-object v14, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v14}, Lorg/telegram/ui/Components/FilterTabsView;->access$2500(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v14

    invoke-static {v13, v6, v14}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    invoke-virtual {v10, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 566
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-ne v6, v1, :cond_b

    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->access$2500(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v6

    goto :goto_7

    :cond_b
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->access$2500(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v6

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v6, v10, v6

    :goto_7
    move v10, v6

    goto/16 :goto_9

    .line 571
    :cond_c
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    .line 572
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v13

    .line 573
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$2400(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$2600(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v5

    if-eq v5, v3, :cond_e

    :cond_d
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v5, v5, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-eq v5, v1, :cond_f

    if-ne v5, v4, :cond_e

    goto :goto_8

    .line 579
    :cond_e
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v5

    iget-object v14, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v14}, Lorg/telegram/ui/Components/FilterTabsView;->access$2700(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v14

    invoke-static {v6, v13, v14}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_9

    .line 574
    :cond_f
    :goto_8
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    .line 575
    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    .line 576
    iget-object v14, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v14}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v14

    iget-object v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v15}, Lorg/telegram/ui/Components/FilterTabsView;->access$2700(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v15

    invoke-static {v5, v10, v15}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$2700(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v10

    invoke-static {v6, v13, v10}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$2500(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v10

    invoke-static {v5, v6, v10}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    invoke-virtual {v14, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 577
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v5, v5, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-ne v5, v1, :cond_10

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$2500(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v5

    move v10, v5

    goto :goto_9

    :cond_10
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$2500(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v10, v6, v5

    .line 587
    :goto_9
    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTabCount:I

    if-nez v5, :cond_11

    iget-boolean v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabCounter:Z

    if-eqz v6, :cond_11

    const/4 v6, 0x1

    goto :goto_a

    :cond_11
    const/4 v6, 0x0

    :goto_a
    if-lez v5, :cond_12

    .line 588
    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v13, v13, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    if-nez v13, :cond_12

    iget-boolean v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabCounter:Z

    if-eqz v13, :cond_12

    const/4 v13, 0x1

    goto :goto_b

    :cond_12
    const/4 v13, 0x0

    :goto_b
    if-lez v5, :cond_13

    .line 589
    iget-object v14, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v14, v14, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    if-lez v14, :cond_13

    iget-boolean v14, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabCounter:Z

    if-eqz v14, :cond_13

    const/4 v14, 0x1

    goto :goto_c

    :cond_13
    const/4 v14, 0x0

    .line 591
    :goto_c
    iget-object v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v15, v15, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    const/16 v19, 0x0

    if-gtz v15, :cond_15

    if-eqz v13, :cond_14

    goto :goto_d

    :cond_14
    move v5, v8

    move-object/from16 v3, v19

    const/16 v18, 0x0

    goto :goto_f

    :cond_15
    :goto_d
    const-string v3, "%d"

    if-eqz v13, :cond_16

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 593
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v16, 0x0

    aput-object v5, v9, v16

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_16
    const/4 v9, 0x1

    const/16 v16, 0x0

    new-array v5, v9, [Ljava/lang/Object;

    .line 595
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v16

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 597
    :goto_e
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    int-to-float v5, v5

    const/16 v8, 0xa

    .line 598
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v9, v8

    float-to-int v8, v9

    move/from16 v18, v8

    .line 605
    :goto_f
    iget-object v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v8}, Lorg/telegram/ui/Components/FilterTabsView;->access$400(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v8

    if-eqz v8, :cond_17

    move-object/from16 v8, v19

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto :goto_10

    :cond_17
    move-object v8, v3

    move/from16 v3, v18

    .line 614
    :goto_10
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllowEditing()Z

    move-result v9

    const/16 v18, 0x14

    if-eqz v9, :cond_19

    if-eqz v2, :cond_19

    .line 615
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->access$800(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v9

    if-nez v9, :cond_18

    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->access$900(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v9

    const/16 v16, 0x0

    cmpl-float v9, v9, v16

    if-eqz v9, :cond_19

    :cond_18
    int-to-float v9, v3

    .line 616
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v19

    sub-int v3, v19, v3

    int-to-float v3, v3

    iget-object v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v15}, Lorg/telegram/ui/Components/FilterTabsView;->access$900(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v15

    mul-float/2addr v3, v15

    add-float/2addr v9, v3

    float-to-int v3, v9

    :cond_19
    move v9, v3

    .line 619
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v3, v3, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    if-eqz v9, :cond_1b

    if-nez v13, :cond_1b

    sget-object v15, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lcom/iMe/fork/enums/FilterTabWidthMode;

    invoke-virtual {v15}, Lcom/iMe/fork/enums/FilterTabWidthMode;->getMarginIconAndCount()I

    move-result v15

    int-to-float v15, v15

    move/from16 v20, v13

    if-eqz v8, :cond_1a

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_11

    :cond_1a
    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/FilterTabsView;->access$900(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v13

    :goto_11
    mul-float/2addr v15, v13

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int v15, v9, v13

    goto :goto_12

    :cond_1b
    move/from16 v20, v13

    const/4 v15, 0x0

    :goto_12
    add-int/2addr v3, v15

    iput v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->tabWidth:I

    .line 620
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->tabWidth:I

    sub-int/2addr v3, v13

    int-to-float v3, v3

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v3, v13

    .line 621
    iget-boolean v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextX:Z

    if-eqz v13, :cond_1c

    .line 622
    iget v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    mul-float/2addr v3, v13

    iget v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTextX:F

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v13, v17, v13

    mul-float/2addr v15, v13

    add-float/2addr v3, v15

    :cond_1c
    move v13, v3

    .line 626
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    instance-of v15, v3, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;

    const/high16 v21, 0x437f0000    # 255.0f

    if-eqz v15, :cond_1d

    .line 628
    check-cast v3, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;

    move/from16 v22, v15

    .line 629
    new-instance v15, Landroid/graphics/PorterDuffColorFilter;

    move/from16 v23, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->getColor()I

    move-result v5

    move/from16 v24, v9

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v15, v5, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 630
    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;->access$100(Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 631
    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;->access$200(Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    mul-float v10, v10, v21

    .line 632
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 633
    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;->access$100(Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    rsub-int v10, v5, 0xff

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 634
    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;->access$200(Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 635
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 636
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v9, v9, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    sub-int/2addr v5, v9

    const/4 v9, 0x2

    div-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v7, v13, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 637
    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;->access$100(Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v9, v9, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v10, v9, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 638
    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;->access$200(Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v9, v9, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    invoke-virtual {v5, v10, v10, v9, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move/from16 v5, v22

    .line 639
    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;->access$100(Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 640
    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;->access$200(Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 641
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_13

    :cond_1d
    move/from16 v23, v5

    move/from16 v24, v9

    move v5, v15

    :goto_13
    const/16 v3, 0xf

    if-nez v5, :cond_1e

    .line 646
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v9, v9, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentText:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1e

    .line 647
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v9, v9, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    iput-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentText:Ljava/lang/String;

    .line 648
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    const/4 v3, 0x0

    invoke-static {v9, v10, v15, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v26

    .line 649
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v27

    const/16 v9, 0x190

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v28

    sget-object v29, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v30, 0x3f800000    # 1.0f

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v25, v3

    invoke-direct/range {v25 .. v32}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    .line 650
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textHeight:I

    .line 651
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    neg-float v3, v3

    float-to-int v3, v3

    iput v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textOffsetX:I

    :cond_1e
    if-nez v5, :cond_25

    .line 658
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChange:Z

    if-eqz v3, :cond_24

    .line 659
    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleXOffset:F

    iget-boolean v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChangeOut:Z

    if-eqz v5, :cond_1f

    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    goto :goto_14

    :cond_1f
    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v5, v9, v5

    :goto_14
    mul-float/2addr v3, v5

    .line 660
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_20

    .line 661
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 662
    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textOffsetX:I

    int-to-float v5, v5

    add-float/2addr v5, v13

    add-float/2addr v5, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textHeight:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v9, v10

    invoke-virtual {v7, v5, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 663
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 664
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 666
    :cond_20
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_22

    .line 667
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 668
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->getAlpha()I

    move-result v5

    .line 669
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v9

    int-to-float v10, v5

    iget-boolean v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChangeOut:Z

    if-eqz v15, :cond_21

    iget v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v15, v17, v15

    goto :goto_15

    :cond_21
    iget v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    :goto_15
    mul-float/2addr v10, v15

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 670
    iget v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textOffsetX:I

    int-to-float v9, v9

    add-float/2addr v9, v13

    add-float/2addr v9, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textHeight:I

    sub-int/2addr v10, v15

    int-to-float v10, v10

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v10, v15

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v10, v15

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 671
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 672
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 673
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 675
    :cond_22
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_26

    .line 676
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 677
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->getAlpha()I

    move-result v5

    .line 678
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v9

    int-to-float v10, v5

    iget-boolean v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChangeOut:Z

    if-eqz v15, :cond_23

    iget v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    goto :goto_16

    :cond_23
    iget v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v15, v17, v15

    :goto_16
    mul-float/2addr v10, v15

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 679
    iget v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textOffsetX:I

    int-to-float v9, v9

    add-float/2addr v9, v13

    add-float/2addr v9, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textHeight:I

    sub-int/2addr v10, v15

    int-to-float v10, v10

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v10, v15

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v10, v15

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 680
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 681
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 682
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_17

    .line 685
    :cond_24
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_25

    .line 686
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 687
    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textOffsetX:I

    int-to-float v3, v3

    add-float/2addr v3, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textHeight:I

    sub-int/2addr v5, v9

    int-to-float v5, v5

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v5, v9

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v5, v9

    invoke-virtual {v7, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 688
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 689
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_25
    const/4 v3, 0x0

    .line 693
    :cond_26
    :goto_17
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v5, v5, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    if-lez v5, :cond_2f

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$2800(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 694
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 695
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    .line 696
    iget-object v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v15}, Lorg/telegram/ui/Components/FilterTabsView;->access$2400(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v15

    if-nez v15, :cond_27

    iget-object v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v15}, Lorg/telegram/ui/Components/FilterTabsView;->access$2600(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v15

    const/4 v9, -0x1

    if-eq v15, v9, :cond_28

    :cond_27
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v9, v9, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-eq v9, v1, :cond_29

    if-ne v9, v4, :cond_28

    goto :goto_18

    .line 700
    :cond_28
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->access$2900(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_19

    .line 697
    :cond_29
    :goto_18
    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    .line 698
    iget-object v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v15}, Lorg/telegram/ui/Components/FilterTabsView;->access$2900(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v15

    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$2500(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v10

    invoke-static {v9, v5, v10}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_19

    .line 703
    :cond_2a
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$2900(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v5

    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/TextPaint;->getColor()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 705
    :goto_19
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v5, v5, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isDefault:Z

    if-nez v5, :cond_2c

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$800(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v5

    if-nez v5, :cond_2b

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$900(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v5

    const/4 v9, 0x0

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_2c

    :cond_2b
    if-nez v8, :cond_2c

    .line 706
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$2900(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v5

    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->access$900(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v9

    mul-float v9, v9, v21

    sub-float v9, v21, v9

    float-to-int v9, v9

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1a

    .line 708
    :cond_2c
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$2900(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v5

    const/16 v9, 0xff

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 711
    :goto_1a
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$600(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v5

    const/4 v9, 0x4

    if-eqz v5, :cond_2e

    .line 712
    sget-object v5, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lcom/iMe/fork/enums/FilterTabWidthMode;

    sget-object v10, Lcom/iMe/fork/enums/FilterTabWidthMode;->MINIMUM:Lcom/iMe/fork/enums/FilterTabWidthMode;

    if-ne v5, v10, :cond_2d

    const/4 v5, 0x6

    goto :goto_1b

    :cond_2d
    move v5, v9

    goto :goto_1b

    :cond_2e
    const/4 v5, 0x2

    .line 716
    :goto_1b
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$1500(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v10

    div-int/2addr v10, v9

    add-int/2addr v10, v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    .line 717
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v9, v9, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    int-to-float v9, v9

    add-float/2addr v9, v13

    const/4 v10, 0x3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v9, v15

    int-to-float v5, v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v10, v15

    iget-object v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v15}, Lorg/telegram/ui/Components/FilterTabsView;->access$2900(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v15

    invoke-virtual {v7, v9, v5, v10, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2f
    if-nez v6, :cond_31

    if-nez v8, :cond_31

    if-eqz v2, :cond_30

    .line 721
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$800(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v5

    if-nez v5, :cond_31

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$900(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v5

    const/4 v9, 0x0

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_30

    goto :goto_1c

    :cond_30
    move/from16 v5, v23

    move/from16 v9, v24

    goto/16 :goto_28

    .line 722
    :cond_31
    :goto_1c
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$3000(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_32

    .line 723
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v5

    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->access$3100(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1d

    .line 725
    :cond_32
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$3100(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    .line 726
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->access$3000(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    .line 727
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v10

    iget-object v15, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v15}, Lorg/telegram/ui/Components/FilterTabsView;->access$2700(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v15

    invoke-static {v5, v9, v15}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 729
    :goto_1d
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 730
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    .line 731
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->access$2400(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v9

    if-nez v9, :cond_33

    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->access$2600(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_34

    :cond_33
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v9, v9, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-eq v9, v1, :cond_35

    if-ne v9, v4, :cond_34

    goto :goto_1e

    .line 735
    :cond_34
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$2900(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1f

    .line 732
    :cond_35
    :goto_1e
    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 733
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$2900(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->access$2500(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v9

    invoke-static {v1, v5, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1f

    .line 738
    :cond_36
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$2900(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getColor()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 742
    :goto_1f
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    int-to-float v4, v1

    .line 743
    iget-boolean v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChange:Z

    if-eqz v5, :cond_37

    .line 744
    iget v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTitleWidth:I

    int-to-float v4, v4

    iget v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v11, v10, v9

    mul-float/2addr v4, v11

    int-to-float v1, v1

    mul-float/2addr v1, v9

    add-float/2addr v4, v1

    :cond_37
    if-eqz v5, :cond_38

    .line 746
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayout:Landroid/text/StaticLayout;

    if-nez v1, :cond_38

    .line 747
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleXOffset:F

    sub-float v1, v13, v1

    add-float/2addr v1, v3

    add-float/2addr v1, v4

    sget-object v3, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lcom/iMe/fork/enums/FilterTabWidthMode;

    invoke-virtual {v3}, Lcom/iMe/fork/enums/FilterTabWidthMode;->getMarginIconAndCount()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    goto :goto_20

    :cond_38
    add-float/2addr v4, v13

    .line 749
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lcom/iMe/fork/enums/FilterTabWidthMode;

    invoke-virtual {v1}, Lcom/iMe/fork/enums/FilterTabWidthMode;->getMarginIconAndCount()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v4

    .line 751
    :goto_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    div-int/2addr v3, v4

    .line 754
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllowEditing()Z

    move-result v4

    if-eqz v4, :cond_3b

    if-eqz v2, :cond_3a

    .line 755
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$800(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v4

    if-nez v4, :cond_39

    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$900(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3a

    :cond_39
    if-nez v8, :cond_3a

    .line 756
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$2900(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$900(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v5

    mul-float v5, v5, v21

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_21

    .line 758
    :cond_3a
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$2900(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v4

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_3b
    :goto_21
    if-eqz v14, :cond_3c

    .line 762
    iget v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromCountWidth:F

    move/from16 v9, v24

    int-to-float v5, v9

    cmpl-float v10, v4, v5

    if-eqz v10, :cond_3d

    iget v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v12, v11, v10

    mul-float/2addr v4, v12

    mul-float/2addr v5, v10

    add-float/2addr v4, v5

    goto :goto_22

    :cond_3c
    move/from16 v9, v24

    :cond_3d
    int-to-float v4, v9

    :goto_22
    if-eqz v14, :cond_3e

    .line 764
    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromCounterWidth:F

    iget v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v12, v11, v10

    mul-float/2addr v5, v12

    mul-float v10, v10, v23

    add-float/2addr v5, v10

    move/from16 v23, v5

    .line 766
    :cond_3e
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    int-to-float v10, v3

    add-float/2addr v4, v1

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v3

    int-to-float v11, v11

    invoke-virtual {v5, v1, v10, v4, v11}, Landroid/graphics/RectF;->set(FFFF)V

    if-nez v6, :cond_3f

    if-eqz v20, :cond_41

    .line 768
    :cond_3f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 769
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    if-eqz v6, :cond_40

    goto :goto_23

    :cond_40
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v1

    .line 770
    :goto_23
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v7, v1, v1, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 772
    :cond_41
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    const/high16 v4, 0x41380000    # 11.5f

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v4, v5

    const/high16 v11, 0x41380000    # 11.5f

    mul-float/2addr v5, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$2900(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v7, v1, v4, v5, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz v14, :cond_49

    .line 776
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    if-eqz v1, :cond_42

    .line 777
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    invoke-virtual {v5, v4}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    :goto_24
    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v10, v1

    goto :goto_25

    :cond_42
    const/4 v4, 0x0

    .line 778
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    if-eqz v1, :cond_43

    .line 779
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    invoke-virtual {v5, v4}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    goto :goto_24

    .line 780
    :cond_43
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->stableCounter:Landroid/text/StaticLayout;

    if-eqz v1, :cond_44

    .line 781
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->stableCounter:Landroid/text/StaticLayout;

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->stableCounter:Landroid/text/StaticLayout;

    invoke-virtual {v5, v4}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    goto :goto_24

    .line 785
    :cond_44
    :goto_25
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllowEditing()Z

    move-result v1

    if-eqz v1, :cond_45

    if-eqz v2, :cond_45

    .line 787
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$900(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    goto :goto_26

    :cond_45
    const/high16 v1, 0x3f800000    # 1.0f

    .line 789
    :goto_26
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    if-eqz v3, :cond_46

    .line 790
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 791
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v3

    mul-float v4, v1, v21

    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 792
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float v3, v3, v23

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v4, v3

    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v5, v3

    const/16 v5, 0xf

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v5, v8

    mul-float/2addr v3, v5

    add-float/2addr v3, v10

    invoke-virtual {v7, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 793
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    invoke-virtual {v3, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 794
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 796
    :cond_46
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    if-eqz v3, :cond_47

    .line 797
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 798
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v3

    mul-float v4, v1, v21

    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v5, v8, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 799
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float v3, v3, v23

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v4, v3

    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    const/16 v5, 0xf

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    add-float/2addr v3, v10

    invoke-virtual {v7, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 800
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    invoke-virtual {v3, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 801
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 804
    :cond_47
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->stableCounter:Landroid/text/StaticLayout;

    if-eqz v3, :cond_48

    .line 805
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 806
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v3

    mul-float v1, v1, v21

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 807
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v1, v1, v23

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    add-float/2addr v3, v1

    invoke-virtual {v7, v3, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 808
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->stableCounter:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 809
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 811
    :cond_48
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v1

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_27

    :cond_49
    if-eqz v8, :cond_4b

    .line 815
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllowEditing()Z

    move-result v1

    if-eqz v1, :cond_4a

    if-eqz v2, :cond_4a

    .line 817
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$900(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v10, v5, v4

    mul-float v10, v10, v21

    float-to-int v4, v10

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 819
    :cond_4a
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v1, v1, v23

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    add-float/2addr v4, v1

    const/high16 v1, 0x41680000    # 14.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v3, v1

    int-to-float v1, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v7, v8, v4, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4b
    :goto_27
    if-nez v6, :cond_4c

    if-eqz v20, :cond_4d

    .line 824
    :cond_4c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 827
    :cond_4d
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllowEditing()Z

    move-result v1

    if-eqz v1, :cond_4f

    if-eqz v2, :cond_4f

    .line 828
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$800(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$900(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4f

    .line 829
    :cond_4e
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$3200(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 830
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$3200(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$900(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v2

    mul-float v2, v2, v21

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x3

    .line 831
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 832
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    int-to-float v8, v1

    sub-float/2addr v2, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float v3, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    add-float v4, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    add-float v5, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$3200(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 833
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float v2, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    add-float v3, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    add-float v4, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float v5, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$3200(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4f
    move/from16 v5, v23

    .line 837
    :goto_28
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllowEditing()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 838
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$1600(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_50

    .line 839
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 842
    :cond_50
    iput v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTextX:F

    .line 843
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v2, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    iput v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTabCount:I

    .line 845
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentText:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitle:Ljava/lang/String;

    .line 846
    iget v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitleWidth:I

    .line 847
    iput v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastCountWidth:I

    .line 848
    iput v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastCounterWidth:F

    .line 849
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->tabWidth:I

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTabWidth:F

    .line 850
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastWidth:F

    .line 852
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isLocked:Z

    if-nez v1, :cond_51

    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_58

    .line 853
    :cond_51
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$3300(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_52

    .line 854
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->other_lockedfolders:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$3302(Lorg/telegram/ui/Components/FilterTabsView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 856
    :cond_52
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isLocked:Z

    const v2, 0x3dda740e

    if-eqz v1, :cond_53

    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_53

    add-float/2addr v3, v2

    .line 857
    iput v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    goto :goto_29

    :cond_53
    if-nez v1, :cond_54

    .line 859
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    .line 861
    :cond_54
    :goto_29
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    .line 862
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$2200(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 863
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$2300(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 864
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$2300(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$2700(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v3

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 866
    :cond_55
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$3400(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v2

    if-eq v2, v1, :cond_56

    .line 867
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$3402(Lorg/telegram/ui/Components/FilterTabsView;I)I

    .line 868
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$3300(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 870
    :cond_56
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$3300(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->locIconXOffset:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 871
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 872
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$3300(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$3300(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$3300(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 873
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_57

    .line 874
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 875
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$3300(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$3300(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 876
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$3300(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 877
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2a

    .line 879
    :cond_57
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$3300(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_58
    :goto_2a
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 998
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 999
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$1800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v0, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$1800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    const/16 v0, 0x10

    .line 1000
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1001
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/16 v3, 0x20

    if-lt v0, v2, :cond_1

    .line 1002
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrOpenMenu2:I

    const-string v4, "AccDescrOpenMenu2"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    .line 1004
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1006
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    if-eqz v0, :cond_4

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    if-eqz v2, :cond_2

    iget v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-lez v2, :cond_3

    const-string v3, "\n"

    .line 1011
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "AccDescrUnreadCount"

    .line 1012
    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 509
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getWidth(Z)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$1300(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$1400(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v0

    add-int/2addr p1, v0

    .line 510
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$1300(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$1500(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->fixWidthForNoCounterMode(IF)I

    move-result p1

    .line 511
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setTab(Lorg/telegram/ui/Components/FilterTabsView$Tab;I)V
    .locals 0

    .line 479
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    .line 480
    iput p2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentPosition:I

    .line 481
    iget-object p1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 482
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public shakeLockIcon(FI)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 1031
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->locIconXOffset:F

    return-void

    .line 1034
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 1035
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x1

    aput v0, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1036
    new-instance v2, Lorg/telegram/ui/Components/FilterTabsView$TabView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/FilterTabsView$TabView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/FilterTabsView$TabView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v4, [Landroid/animation/Animator;

    aput-object v0, v2, v3

    .line 1040
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x32

    .line 1041
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1042
    new-instance v0, Lorg/telegram/ui/Components/FilterTabsView$TabView$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView$1;-><init>(Lorg/telegram/ui/Components/FilterTabsView$TabView;IF)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1050
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
