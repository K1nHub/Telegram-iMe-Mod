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

    .line 428
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    .line 429
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 383
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    const/4 p1, -0x1

    .line 400
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTabCount:I

    return-void
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Components/FilterTabsView$TabView;F)F
    .locals 0

    .line 376
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->locIconXOffset:F

    return p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Landroid/graphics/RectF;
    .locals 0

    .line 376
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Lorg/telegram/ui/Components/FilterTabsView$Tab;
    .locals 0

    .line 376
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Z
    .locals 0

    .line 376
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabWidth:Z

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/FilterTabsView$TabView;)F
    .locals 0

    .line 376
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTabWidth:F

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/FilterTabsView$TabView;)I
    .locals 0

    .line 376
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->tabWidth:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/FilterTabsView$TabView;)F
    .locals 0

    .line 376
    iget p0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromWidth:F

    return p0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/Components/FilterTabsView$TabView;F)F
    .locals 0

    .line 376
    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    return p1
.end method

.method private synthetic lambda$shakeLockIcon$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 979
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->locIconXOffset:F

    .line 980
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public animateChange()Z
    .locals 27

    move-object/from16 v0, p0

    .line 829
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    iget v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTabCount:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$100(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 830
    iput-boolean v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabCounter:Z

    .line 831
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTabCount:I

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTabCount:I

    .line 832
    iget v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastCountWidth:I

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromCountWidth:F

    .line 833
    iget v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastCounterWidth:F

    iput v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromCounterWidth:F

    if-lez v1, :cond_3

    .line 834
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    if-lez v2, :cond_3

    .line 835
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 836
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 838
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_2

    .line 839
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 840
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 841
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move v7, v3

    .line 842
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_1

    .line 843
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_0

    .line 844
    new-instance v9, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v9}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v8, v9, v7, v10, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 845
    new-instance v9, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v9}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v2, v9, v7, v10, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 847
    :cond_0
    new-instance v9, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v9}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v5, v9, v7, v10, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 851
    :cond_1
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 852
    new-instance v6, Landroid/text/StaticLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v7}, Lorg/telegram/ui/Components/FilterTabsView;->access$700(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v9

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v6

    move v10, v1

    invoke-direct/range {v7 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    .line 853
    new-instance v6, Landroid/text/StaticLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v7}, Lorg/telegram/ui/Components/FilterTabsView;->access$700(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v11

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v6

    move-object v10, v5

    move v12, v1

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->stableCounter:Landroid/text/StaticLayout;

    .line 854
    new-instance v5, Landroid/text/StaticLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->access$700(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v11

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object v9, v5

    move-object v10, v2

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    goto :goto_2

    .line 856
    :cond_2
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v8, v7

    .line 857
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$700(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v7

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    .line 858
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v10, v5

    .line 859
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$700(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v9

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v2

    move-object v8, v1

    invoke-direct/range {v7 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    :cond_3
    :goto_2
    move v1, v4

    goto :goto_3

    :cond_4
    move v1, v3

    .line 867
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    const/4 v5, 0x0

    if-lez v2, :cond_5

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$100(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-array v2, v4, [Ljava/lang/Object;

    .line 868
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const-string v6, "%d"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 869
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->access$700(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/16 v7, 0xa

    .line 870
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

    .line 874
    :goto_4
    iget-object v7, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v7, v7, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    if-eqz v6, :cond_8

    iget-object v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v8}, Lorg/telegram/ui/Components/FilterTabsView;->access$800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v8}, Lorg/telegram/ui/Components/FilterTabsView;->access$800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v8

    goto :goto_5

    :cond_6
    const/4 v8, 0x6

    :goto_5
    int-to-float v8, v8

    if-eqz v2, :cond_7

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$400(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v2

    :goto_6
    mul-float/2addr v8, v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v6, v2

    goto :goto_7

    :cond_8
    move v6, v3

    :goto_7
    add-int/2addr v7, v6

    .line 875
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 877
    iget v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTextX:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_9

    .line 878
    iput-boolean v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextX:Z

    .line 879
    iput v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTextX:F

    move v1, v4

    .line 883
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitle:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 887
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_a

    .line 889
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitle:Ljava/lang/String;

    .line 890
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    move v6, v4

    goto :goto_8

    .line 893
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    .line 894
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitle:Ljava/lang/String;

    move v6, v3

    .line 896
    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x190

    if-ltz v8, :cond_e

    .line 898
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v11}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v11

    const/16 v12, 0xf

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v1, v11, v12, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v11

    .line 899
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 900
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v8, :cond_b

    .line 902
    new-instance v11, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v11}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v15, v11, v3, v8, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 904
    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-eq v11, v12, :cond_c

    .line 905
    new-instance v11, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v11}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v15, v11, v12, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 907
    :cond_c
    new-instance v1, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v1}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v8

    invoke-virtual {v13, v1, v8, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 909
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

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

    .line 910
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

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

    .line 911
    iput-boolean v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChange:Z

    .line 912
    iput-boolean v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChangeOut:Z

    if-nez v8, :cond_d

    goto :goto_9

    .line 913
    :cond_d
    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v1

    neg-float v9, v1

    :goto_9
    iput v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleXOffset:F

    .line 914
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitleWidth:I

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTitleWidth:I

    .line 915
    iput-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayout:Landroid/text/StaticLayout;

    goto :goto_a

    .line 918
    :cond_e
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v12, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

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

    .line 919
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitle:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

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

    .line 920
    iput-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayout:Landroid/text/StaticLayout;

    .line 921
    iput-boolean v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChange:Z

    .line 922
    iput v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleXOffset:F

    .line 923
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitleWidth:I

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTitleWidth:I

    :goto_a
    move v1, v4

    :cond_f
    int-to-float v2, v7

    .line 928
    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTabWidth:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastWidth:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_10

    goto :goto_b

    :cond_10
    move v4, v1

    goto :goto_c

    .line 929
    :cond_11
    :goto_b
    iput-boolean v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabWidth:Z

    .line 930
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTabWidth:F

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTabWidth:F

    .line 931
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastWidth:F

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromWidth:F

    :goto_c
    return v4
.end method

.method public clearTransitionParams()V
    .locals 1

    const/4 v0, 0x0

    .line 961
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateChange:Z

    .line 962
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabCounter:Z

    .line 964
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChange:Z

    .line 965
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextX:Z

    .line 966
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabWidth:Z

    const/4 v0, 0x0

    .line 967
    iput-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    .line 968
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getId()I
    .locals 1

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v0, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 445
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 446
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateChange:Z

    .line 447
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabCounter:Z

    .line 449
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChange:Z

    .line 450
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextX:Z

    .line 451
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabWidth:Z

    .line 452
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 454
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 456
    iput-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    .line 458
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 472
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isDefault:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 474
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllowEditing()Z

    move-result v1

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    .line 475
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$1200(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v1

    cmpl-float v1, v1, v8

    if-eqz v1, :cond_4

    .line 476
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 477
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$1200(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v1

    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentPosition:I

    rem-int/lit8 v6, v5, 0x2

    const/high16 v11, -0x40800000    # -1.0f

    if-nez v6, :cond_1

    move v6, v10

    goto :goto_1

    :cond_1
    move v6, v11

    :goto_1
    mul-float/2addr v1, v6

    .line 478
    rem-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v1, v5

    float-to-double v5, v1

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v12

    const-wide/high16 v14, 0x4004000000000000L    # 2.5

    mul-double/2addr v5, v14

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v1, v5

    .line 479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    long-to-float v5, v5

    const/high16 v6, 0x43c80000    # 400.0f

    div-float/2addr v5, v6

    float-to-double v5, v5

    mul-double/2addr v5, v12

    iget v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentPosition:I

    rem-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_2

    move v12, v10

    goto :goto_2

    :cond_2
    move v12, v11

    :goto_2
    float-to-double v12, v12

    mul-double/2addr v5, v12

    double-to-float v5, v5

    float-to-double v5, v5

    .line 481
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    const v14, 0x3ea8f5c3    # 0.33f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-double v3, v15

    mul-double/2addr v12, v3

    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentPosition:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    move v11, v10

    :cond_3
    float-to-double v3, v11

    mul-double/2addr v12, v3

    double-to-float v3, v12

    .line 482
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    int-to-double v11, v6

    mul-double/2addr v4, v11

    double-to-float v4, v4

    .line 480
    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const v3, 0x3fb33333    # 1.4f

    mul-float/2addr v1, v3

    .line 484
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    invoke-virtual {v7, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 494
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$1300(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 495
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$1300(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v1

    .line 496
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$1400(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v4

    goto :goto_3

    .line 498
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$1400(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v1

    .line 499
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$1500(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v4

    .line 501
    :goto_3
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v5, v5, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-ne v5, v1, :cond_6

    move v6, v10

    goto :goto_4

    :cond_6
    move v6, v8

    :goto_4
    if-ne v5, v1, :cond_7

    .line 503
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$1600(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v5

    .line 504
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$1700(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v11

    .line 505
    iget-object v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v12}, Lorg/telegram/ui/Components/FilterTabsView;->access$1800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v12

    .line 506
    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/FilterTabsView;->access$1900(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v13

    .line 507
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_chats_tabUnreadActiveBackground:I

    .line 508
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_chats_tabUnreadUnactiveBackground:I

    goto :goto_5

    .line 510
    :cond_7
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$1800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v5

    .line 511
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$1900(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v11

    .line 512
    iget-object v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v12}, Lorg/telegram/ui/Components/FilterTabsView;->access$1600(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v12

    .line 513
    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/FilterTabsView;->access$1900(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v13

    .line 514
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_chats_tabUnreadUnactiveBackground:I

    .line 515
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_chats_tabUnreadActiveBackground:I

    :goto_5
    if-gez v11, :cond_c

    .line 518
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$2000(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$1300(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v11

    if-eq v11, v3, :cond_9

    :cond_8
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v11, v11, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-eq v11, v1, :cond_a

    if-ne v11, v4, :cond_9

    goto :goto_6

    .line 522
    :cond_9
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v11

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v11, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto/16 :goto_a

    .line 519
    :cond_a
    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v6

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    iget-object v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v12}, Lorg/telegram/ui/Components/FilterTabsView;->access$2100(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v12

    invoke-static {v11, v5, v12}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 520
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v5, v5, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-ne v5, v1, :cond_b

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$2100(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v5

    goto :goto_8

    :cond_b
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$2100(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v5

    :goto_7
    sub-float v5, v10, v5

    :goto_8
    move v6, v5

    goto/16 :goto_a

    .line 525
    :cond_c
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    .line 526
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    .line 527
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->access$2000(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->access$2200(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v9

    if-eq v9, v3, :cond_e

    :cond_d
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v9, v9, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-eq v9, v1, :cond_f

    if-ne v9, v4, :cond_e

    goto :goto_9

    .line 533
    :cond_e
    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v9

    iget-object v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v12}, Lorg/telegram/ui/Components/FilterTabsView;->access$2300(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v12

    invoke-static {v5, v11, v12}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_a

    .line 528
    :cond_f
    :goto_9
    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    .line 529
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    .line 530
    iget-object v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v12}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/FilterTabsView;->access$2300(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v13

    invoke-static {v6, v9, v13}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->access$2300(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v9

    invoke-static {v5, v11, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    iget-object v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/FilterTabsView;->access$2100(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v9

    invoke-static {v6, v5, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    invoke-virtual {v12, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 531
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v5, v5, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-ne v5, v1, :cond_10

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$2100(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v5

    goto :goto_8

    :cond_10
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$2100(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v5

    goto :goto_7

    .line 541
    :goto_a
    iget v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTabCount:I

    if-nez v5, :cond_11

    iget-boolean v9, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabCounter:Z

    if-eqz v9, :cond_11

    const/4 v9, 0x1

    goto :goto_b

    :cond_11
    const/4 v9, 0x0

    :goto_b
    if-lez v5, :cond_12

    .line 542
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v11, v11, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    if-nez v11, :cond_12

    iget-boolean v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabCounter:Z

    if-eqz v11, :cond_12

    const/4 v11, 0x1

    goto :goto_c

    :cond_12
    const/4 v11, 0x0

    :goto_c
    if-lez v5, :cond_13

    .line 543
    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v5, v5, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    if-lez v5, :cond_13

    iget-boolean v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTabCounter:Z

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    goto :goto_d

    :cond_13
    const/4 v5, 0x0

    .line 545
    :goto_d
    iget-object v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v12, v12, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    if-lez v12, :cond_14

    iget-object v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v12}, Lorg/telegram/ui/Components/FilterTabsView;->access$100(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v12

    if-nez v12, :cond_15

    :cond_14
    if-eqz v11, :cond_17

    :cond_15
    const-string v12, "%d"

    if-eqz v11, :cond_16

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 547
    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTabCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v16, 0x0

    aput-object v3, v13, v16

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_16
    const/4 v13, 0x1

    const/16 v16, 0x0

    new-array v3, v13, [Ljava/lang/Object;

    .line 549
    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v13, v13, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v16

    invoke-static {v12, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 551
    :goto_e
    iget-object v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v12}, Lorg/telegram/ui/Components/FilterTabsView;->access$700(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    int-to-float v12, v12

    const/16 v13, 0xa

    .line 552
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v10, v13

    float-to-int v10, v10

    goto :goto_f

    :cond_17
    const/4 v3, 0x0

    move v12, v8

    const/4 v10, 0x0

    .line 560
    :goto_f
    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllowEditing()Z

    move-result v13

    const/16 v18, 0x14

    if-eqz v13, :cond_19

    if-eqz v2, :cond_19

    .line 561
    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/FilterTabsView;->access$300(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v13

    if-nez v13, :cond_18

    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/FilterTabsView;->access$400(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v13

    cmpl-float v13, v13, v8

    if-eqz v13, :cond_19

    :cond_18
    int-to-float v13, v10

    .line 562
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v19

    sub-int v10, v19, v10

    int-to-float v10, v10

    iget-object v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v8}, Lorg/telegram/ui/Components/FilterTabsView;->access$400(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v8

    mul-float/2addr v10, v8

    add-float/2addr v13, v10

    float-to-int v10, v13

    .line 565
    :cond_19
    iget-object v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v8, v8, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    if-eqz v10, :cond_1c

    if-nez v11, :cond_1c

    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/FilterTabsView;->access$800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v13

    if-eqz v13, :cond_1a

    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/FilterTabsView;->access$800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v13

    goto :goto_10

    :cond_1a
    const/4 v13, 0x6

    :goto_10
    int-to-float v13, v13

    move/from16 v20, v11

    if-eqz v3, :cond_1b

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_11

    :cond_1b
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$400(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v11

    :goto_11
    mul-float/2addr v13, v11

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v10

    goto :goto_12

    :cond_1c
    move/from16 v20, v11

    const/4 v11, 0x0

    :goto_12
    add-int/2addr v8, v11

    iput v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->tabWidth:I

    .line 566
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->tabWidth:I

    sub-int/2addr v8, v11

    int-to-float v8, v8

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    .line 567
    iget-boolean v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextX:Z

    if-eqz v11, :cond_1d

    .line 568
    iget v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    mul-float/2addr v8, v11

    iget v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTextX:F

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v11, v17, v11

    mul-float/2addr v13, v11

    add-float/2addr v8, v13

    .line 572
    :cond_1d
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isIconTab()Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 573
    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v13

    invoke-virtual {v13}, Landroid/text/TextPaint;->getColor()I

    move-result v13

    move/from16 v21, v12

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v13, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 574
    iget-object v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v12, v12, Lorg/telegram/ui/Components/FilterTabsView$Tab;->outlinedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 575
    iget-object v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v12, v12, Lorg/telegram/ui/Components/FilterTabsView$Tab;->filledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v6, v11

    .line 576
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 577
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v11, v11, Lorg/telegram/ui/Components/FilterTabsView$Tab;->outlinedDrawable:Landroid/graphics/drawable/Drawable;

    rsub-int v12, v6, 0xff

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 578
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v11, v11, Lorg/telegram/ui/Components/FilterTabsView$Tab;->filledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 579
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 580
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v11, v11, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    sub-int/2addr v6, v11

    int-to-float v6, v6

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    invoke-virtual {v7, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 581
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v11, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->outlinedDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v12, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 582
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v11, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->filledDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    invoke-virtual {v11, v12, v12, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 583
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->outlinedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 584
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->filledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 585
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_13

    :cond_1e
    move/from16 v21, v12

    .line 589
    :goto_13
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isIconTab()Z

    move-result v6

    const/16 v11, 0xf

    if-nez v6, :cond_1f

    .line 590
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    iget-object v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentText:Ljava/lang/String;

    invoke-static {v6, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 591
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v6, v6, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    iput-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentText:Ljava/lang/String;

    .line 592
    iget-object v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v12}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    const/4 v11, 0x0

    invoke-static {v6, v12, v13, v11}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v23

    .line 593
    new-instance v6, Landroid/text/StaticLayout;

    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v24

    const/16 v11, 0x190

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v25

    sget-object v26, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v22, v6

    invoke-direct/range {v22 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    .line 594
    invoke-virtual {v6}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textHeight:I

    .line 595
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v6

    neg-float v6, v6

    float-to-int v6, v6

    iput v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textOffsetX:I

    .line 601
    :cond_1f
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isIconTab()Z

    move-result v6

    if-nez v6, :cond_26

    .line 602
    iget-boolean v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChange:Z

    if-eqz v6, :cond_25

    .line 603
    iget v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleXOffset:F

    iget-boolean v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChangeOut:Z

    if-eqz v11, :cond_20

    iget v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    goto :goto_14

    :cond_20
    iget v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v11, v12, v11

    :goto_14
    mul-float/2addr v6, v11

    .line 604
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayout:Landroid/text/StaticLayout;

    if-eqz v11, :cond_21

    .line 605
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 606
    iget v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textOffsetX:I

    int-to-float v11, v11

    add-float/2addr v11, v8

    add-float/2addr v11, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iget v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textHeight:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v12, v13

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 607
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateStableLayout:Landroid/text/StaticLayout;

    invoke-virtual {v11, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 608
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 610
    :cond_21
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayout:Landroid/text/StaticLayout;

    if-eqz v11, :cond_23

    .line 611
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 612
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v11}, Landroid/text/TextPaint;->getAlpha()I

    move-result v11

    .line 613
    iget-object v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v12}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v12

    int-to-float v13, v11

    move/from16 v22, v10

    iget-boolean v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChangeOut:Z

    if-eqz v10, :cond_22

    iget v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v10, v17, v10

    goto :goto_15

    :cond_22
    iget v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    :goto_15
    mul-float/2addr v13, v10

    float-to-int v10, v13

    invoke-virtual {v12, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 614
    iget v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textOffsetX:I

    int-to-float v10, v10

    add-float/2addr v10, v8

    add-float/2addr v10, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iget v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textHeight:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v12, v13

    invoke-virtual {v7, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 615
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateInLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 616
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 617
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_16

    :cond_23
    move/from16 v22, v10

    .line 619
    :goto_16
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayout:Landroid/text/StaticLayout;

    if-eqz v10, :cond_28

    .line 620
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 621
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/TextPaint;->getAlpha()I

    move-result v10

    .line 622
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v11

    int-to-float v12, v10

    iget-boolean v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChangeOut:Z

    if-eqz v13, :cond_24

    iget v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    goto :goto_17

    :cond_24
    iget v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v13, v17, v13

    :goto_17
    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 623
    iget v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textOffsetX:I

    int-to-float v11, v11

    add-float/2addr v11, v8

    add-float/2addr v11, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iget v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textHeight:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v12, v13

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 624
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayout:Landroid/text/StaticLayout;

    invoke-virtual {v11, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 625
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 626
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_19

    :cond_25
    move/from16 v22, v10

    .line 629
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    if-eqz v6, :cond_27

    .line 630
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 631
    iget v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textOffsetX:I

    int-to-float v6, v6

    add-float/2addr v6, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textHeight:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    invoke-virtual {v7, v6, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 632
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 633
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_18

    :cond_26
    move/from16 v22, v10

    :cond_27
    :goto_18
    const/4 v6, 0x0

    .line 637
    :cond_28
    :goto_19
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v10, v10, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    if-lez v10, :cond_30

    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$2400(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v10

    if-eqz v10, :cond_30

    .line 638
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v10

    if-eqz v10, :cond_2c

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 639
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    .line 640
    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/FilterTabsView;->access$2000(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v13

    if-nez v13, :cond_29

    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/FilterTabsView;->access$2200(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v13

    const/4 v11, -0x1

    if-eq v13, v11, :cond_2a

    :cond_29
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v11, v11, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-eq v11, v1, :cond_2b

    if-ne v11, v4, :cond_2a

    goto :goto_1a

    .line 644
    :cond_2a
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$2500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1b

    .line 641
    :cond_2b
    :goto_1a
    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    .line 642
    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/FilterTabsView;->access$2500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v13

    iget-object v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v12}, Lorg/telegram/ui/Components/FilterTabsView;->access$2100(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v12

    invoke-static {v11, v10, v12}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v10

    invoke-virtual {v13, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1b

    .line 647
    :cond_2c
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$2500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v11}, Landroid/text/TextPaint;->getColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 649
    :goto_1b
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v10, v10, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isDefault:Z

    if-nez v10, :cond_2e

    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$300(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v10

    if-nez v10, :cond_2d

    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$400(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_2e

    :cond_2d
    if-nez v3, :cond_2e

    .line 650
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$2500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$400(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v11

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v11, v12

    sub-float v13, v12, v11

    float-to-int v11, v13

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1c

    .line 652
    :cond_2e
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$2500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v10

    const/16 v11, 0xff

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 655
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    .line 656
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$2600(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v11

    if-eqz v11, :cond_2f

    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v11

    const/16 v12, 0x8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    move v12, v11

    goto :goto_1d

    :cond_2f
    const/4 v11, 0x6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    :goto_1d
    const/4 v13, 0x3

    .line 657
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    .line 658
    invoke-static {v13}, Lorg/telegram/ui/Components/FilterTabsView;->access$2500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v13

    .line 654
    invoke-virtual {v7, v10, v12, v11, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_30
    if-nez v9, :cond_32

    if-nez v3, :cond_32

    if-eqz v2, :cond_31

    .line 663
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$300(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v10

    if-nez v10, :cond_32

    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$400(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_31

    goto :goto_1e

    :cond_31
    move/from16 v12, v21

    move/from16 v10, v22

    goto/16 :goto_2d

    .line 664
    :cond_32
    :goto_1e
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$2700(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v10

    if-gez v10, :cond_33

    .line 665
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$700(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$2800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v11

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1f

    .line 667
    :cond_33
    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$2800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    .line 668
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$2700(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v11

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    .line 669
    iget-object v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v12}, Lorg/telegram/ui/Components/FilterTabsView;->access$700(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/FilterTabsView;->access$2300(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v13

    invoke-static {v10, v11, v13}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v10

    invoke-virtual {v12, v10}, Landroid/text/TextPaint;->setColor(I)V

    .line 671
    :goto_1f
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v10

    if-eqz v10, :cond_37

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v10

    if-eqz v10, :cond_37

    .line 672
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    .line 673
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$2000(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v11

    if-nez v11, :cond_34

    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$2200(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_35

    :cond_34
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v11, v11, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-eq v11, v1, :cond_36

    if-ne v11, v4, :cond_35

    goto :goto_20

    .line 677
    :cond_35
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$2500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_21

    .line 674
    :cond_36
    :goto_20
    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 675
    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$2500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$2100(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v11

    invoke-static {v1, v10, v11}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_21

    .line 680
    :cond_37
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$2500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getColor()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 684
    :goto_21
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    int-to-float v4, v1

    .line 685
    iget-boolean v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateTextChange:Z

    if-eqz v10, :cond_38

    .line 686
    iget v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromTitleWidth:I

    int-to-float v4, v4

    iget v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v13, v12, v11

    mul-float/2addr v4, v13

    int-to-float v1, v1

    mul-float/2addr v1, v11

    add-float/2addr v4, v1

    :cond_38
    if-eqz v10, :cond_3a

    .line 688
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleAnimateOutLayout:Landroid/text/StaticLayout;

    if-nez v1, :cond_3a

    .line 689
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->titleXOffset:F

    sub-float v1, v8, v1

    add-float/2addr v1, v6

    add-float/2addr v1, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v4

    if-eqz v4, :cond_39

    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v13

    goto :goto_22

    :cond_39
    const/4 v13, 0x6

    :goto_22
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    goto :goto_24

    :cond_3a
    add-float/2addr v4, v8

    .line 691
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v13

    goto :goto_23

    :cond_3b
    const/4 v13, 0x6

    :goto_23
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v4

    .line 693
    :goto_24
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    .line 696
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllowEditing()Z

    move-result v6

    if-eqz v6, :cond_3e

    if-eqz v2, :cond_3d

    .line 697
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->access$300(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v6

    if-nez v6, :cond_3c

    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->access$400(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v6

    const/4 v10, 0x0

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_3d

    :cond_3c
    if-nez v3, :cond_3d

    .line 698
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->access$2500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v6

    iget-object v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v10}, Lorg/telegram/ui/Components/FilterTabsView;->access$400(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v10

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_25

    .line 700
    :cond_3d
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->access$2500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v6

    const/16 v10, 0xff

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_3e
    :goto_25
    if-eqz v5, :cond_3f

    .line 704
    iget v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromCountWidth:F

    move/from16 v10, v22

    int-to-float v11, v10

    cmpl-float v12, v6, v11

    if-eqz v12, :cond_40

    iget v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v14, v13, v12

    mul-float/2addr v6, v14

    mul-float/2addr v11, v12

    add-float/2addr v6, v11

    goto :goto_26

    :cond_3f
    move/from16 v10, v22

    :cond_40
    int-to-float v6, v10

    :goto_26
    if-eqz v5, :cond_41

    .line 706
    iget v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateFromCounterWidth:F

    iget v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v14, v13, v12

    mul-float/2addr v11, v14

    mul-float v12, v12, v21

    add-float/2addr v12, v11

    goto :goto_27

    :cond_41
    move/from16 v12, v21

    .line 708
    :goto_27
    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    int-to-float v13, v4

    add-float/2addr v6, v1

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v4

    int-to-float v14, v14

    invoke-virtual {v11, v1, v13, v6, v14}, Landroid/graphics/RectF;->set(FFFF)V

    if-nez v9, :cond_42

    if-eqz v20, :cond_44

    .line 710
    :cond_42
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 711
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    if-eqz v9, :cond_43

    goto :goto_28

    :cond_43
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v1, v6, v1

    .line 712
    :goto_28
    iget-object v6, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    invoke-virtual {v7, v1, v1, v6, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 714
    :cond_44
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v11, 0x41380000    # 11.5f

    mul-float v14, v6, v11

    mul-float/2addr v6, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/FilterTabsView;->access$2500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v7, v1, v14, v6, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz v5, :cond_4c

    .line 718
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    if-eqz v1, :cond_45

    .line 719
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    invoke-virtual {v5, v4}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    :goto_29
    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v13, v1

    goto :goto_2a

    :cond_45
    const/4 v4, 0x0

    .line 720
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    if-eqz v1, :cond_46

    .line 721
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    invoke-virtual {v5, v4}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    goto :goto_29

    .line 722
    :cond_46
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->stableCounter:Landroid/text/StaticLayout;

    if-eqz v1, :cond_47

    .line 723
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->stableCounter:Landroid/text/StaticLayout;

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->stableCounter:Landroid/text/StaticLayout;

    invoke-virtual {v5, v4}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    goto :goto_29

    .line 727
    :cond_47
    :goto_2a
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllowEditing()Z

    move-result v1

    if-eqz v1, :cond_48

    if-eqz v2, :cond_48

    .line 729
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$400(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    goto :goto_2b

    :cond_48
    const/high16 v1, 0x3f800000    # 1.0f

    .line 731
    :goto_2b
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    if-eqz v3, :cond_49

    .line 732
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 733
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$700(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v5, v1, v4

    iget v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 734
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v3, v12

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v4, v3

    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v5, v3

    const/16 v5, 0xf

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v5, v6

    mul-float/2addr v3, v5

    add-float/2addr v3, v13

    invoke-virtual {v7, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 735
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->inCounter:Landroid/text/StaticLayout;

    invoke-virtual {v3, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 736
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 738
    :cond_49
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    if-eqz v3, :cond_4a

    .line 739
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 740
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$700(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v5, v1, v4

    iget v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v4, v6, v4

    mul-float/2addr v5, v4

    float-to-int v4, v5

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 741
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v3, v12

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

    add-float/2addr v3, v13

    invoke-virtual {v7, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 742
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->outCounter:Landroid/text/StaticLayout;

    invoke-virtual {v3, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 743
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 746
    :cond_4a
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->stableCounter:Landroid/text/StaticLayout;

    if-eqz v3, :cond_4b

    .line 747
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 748
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$700(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 749
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v1, v12

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    add-float/2addr v3, v1

    invoke-virtual {v7, v3, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 750
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->stableCounter:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 751
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 753
    :cond_4b
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$700(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v1

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_2c

    :cond_4c
    if-eqz v3, :cond_4e

    .line 757
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllowEditing()Z

    move-result v1

    if-eqz v1, :cond_4d

    if-eqz v2, :cond_4d

    .line 759
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$700(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v1

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$400(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 761
    :cond_4d
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v1, v12

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    add-float/2addr v5, v1

    const/high16 v1, 0x41680000    # 14.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v4, v1

    int-to-float v1, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$700(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v7, v3, v5, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4e
    :goto_2c
    if-nez v9, :cond_4f

    if-eqz v20, :cond_50

    .line 766
    :cond_4f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 769
    :cond_50
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllowEditing()Z

    move-result v1

    if-eqz v1, :cond_52

    if-eqz v2, :cond_52

    .line 770
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$300(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v1

    if-nez v1, :cond_51

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$400(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_52

    .line 771
    :cond_51
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$2900(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$700(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 772
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$2900(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$400(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x3

    .line 773
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 774
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    int-to-float v9, v1

    sub-float/2addr v2, v9

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float v3, v1, v9

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    add-float v4, v1, v9

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    add-float v5, v1, v9

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$2900(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 775
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float v2, v1, v9

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    add-float v3, v1, v9

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    add-float v4, v1, v9

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float v5, v1, v9

    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$2900(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 779
    :cond_52
    :goto_2d
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllowEditing()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 780
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$1200(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_53

    .line 781
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 784
    :cond_53
    iput v8, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTextX:F

    .line 785
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v2, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    iput v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTabCount:I

    .line 787
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentText:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitle:Ljava/lang/String;

    .line 788
    iget v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTitleWidth:I

    .line 789
    iput v10, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastCountWidth:I

    .line 790
    iput v12, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastCounterWidth:F

    .line 791
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->tabWidth:I

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastTabWidth:F

    .line 792
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->lastWidth:F

    .line 794
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isLocked:Z

    if-nez v1, :cond_54

    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5b

    .line 795
    :cond_54
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$3000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_55

    .line 796
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->other_lockedfolders:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$3002(Lorg/telegram/ui/Components/FilterTabsView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 798
    :cond_55
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isLocked:Z

    const v2, 0x3dda740e

    if-eqz v1, :cond_56

    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_56

    add-float/2addr v3, v2

    .line 799
    iput v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    goto :goto_2e

    :cond_56
    if-nez v1, :cond_57

    .line 801
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    .line 803
    :cond_57
    :goto_2e
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    .line 804
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$1800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 805
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$1900(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v2

    if-ltz v2, :cond_58

    .line 806
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$1900(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$2300(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v3

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 808
    :cond_58
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$3100(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v2

    if-eq v2, v1, :cond_59

    .line 809
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$3102(Lorg/telegram/ui/Components/FilterTabsView;I)I

    .line 810
    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$3000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 812
    :cond_59
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$3000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

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

    .line 813
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 814
    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$3000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$3000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FilterTabsView;->access$3000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 815
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5a

    .line 816
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 817
    iget v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->progressToLocked:F

    iget-object v2, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$3000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$3000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 818
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$3000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 819
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2f

    .line 821
    :cond_5a
    iget-object v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$3000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5b
    :goto_2f
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 940
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 941
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$1400(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v0, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$1400(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    const/16 v0, 0x10

    .line 942
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 943
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/16 v3, 0x20

    if-lt v0, v2, :cond_1

    .line 944
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrOpenMenu2:I

    const-string v4, "AccDescrOpenMenu2"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    .line 946
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 948
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    if-eqz v0, :cond_4

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-object v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    if-eqz v2, :cond_2

    iget v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-lez v2, :cond_3

    const-string v3, "\n"

    .line 953
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "AccDescrUnreadCount"

    .line 954
    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 463
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getWidth(Z)I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$1100(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v1

    add-int/2addr p1, v1

    .line 464
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->getNoCounterMargin(Z)I

    move-result v0

    sub-int/2addr p1, v0

    .line 465
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setTab(Lorg/telegram/ui/Components/FilterTabsView$Tab;I)V
    .locals 0

    .line 433
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentTab:Lorg/telegram/ui/Components/FilterTabsView$Tab;

    .line 434
    iput p2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->currentPosition:I

    .line 435
    iget-object p1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 436
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public shakeLockIcon(FI)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 973
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->locIconXOffset:F

    return-void

    .line 976
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 977
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x1

    aput v0, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 978
    new-instance v2, Lorg/telegram/ui/Components/FilterTabsView$TabView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/FilterTabsView$TabView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/FilterTabsView$TabView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v4, [Landroid/animation/Animator;

    aput-object v0, v2, v3

    .line 982
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x32

    .line 983
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 984
    new-instance v0, Lorg/telegram/ui/Components/FilterTabsView$TabView$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView$1;-><init>(Lorg/telegram/ui/Components/FilterTabsView$TabView;IF)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 992
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
