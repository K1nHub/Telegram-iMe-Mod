.class public Lorg/telegram/ui/Components/RecyclerListView$FastScroll;
.super Landroid/view/View;
.source "RecyclerListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FastScroll"
.end annotation


# instance fields
.field private activeColor:I

.field private arrowPath:Landroid/graphics/Path;

.field private bubbleProgress:F

.field private currentLetter:Ljava/lang/String;

.field fastScrollBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private floatingDateProgress:F

.field private floatingDateVisible:Z

.field private fromTop:Z

.field private fromWidth:F

.field hideFloatingDateRunnable:Ljava/lang/Runnable;

.field private inLetterLayout:Landroid/text/StaticLayout;

.field private inactiveColor:I

.field isMoving:Z

.field isRtl:Z

.field isVisible:Z

.field private lastLetterY:F

.field private lastUpdateTime:J

.field private lastY:F

.field private letterLayout:Landroid/text/StaticLayout;

.field private letterPaint:Landroid/text/TextPaint;

.field private oldLetterLayout:Landroid/text/StaticLayout;

.field private outLetterLayout:Landroid/text/StaticLayout;

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private positionWithOffset:[I

.field private pressed:Z

.field private progress:F

.field private radii:[F

.field private rect:Landroid/graphics/RectF;

.field private replaceLayoutProgress:F

.field private scrollX:I

.field private stableLetterLayout:Landroid/text/StaticLayout;

.field private startDy:F

.field startTime:J

.field startY:F

.field private textX:F

.field private textY:F

.field final synthetic this$0:Lorg/telegram/ui/Components/RecyclerListView;

.field touchSlop:F

.field private type:I

.field public usePadding:Z

.field viewAlpha:F

.field visibilityAlpha:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;I)V
    .locals 7

    .line 571
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    .line 572
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 518
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->usePadding:Z

    .line 520
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    .line 521
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    .line 522
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint2:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 532
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    .line 536
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, p1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    .line 538
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    .line 539
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    const/16 v1, 0x8

    new-array v2, v1, [F

    .line 540
    iput-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 551
    iput-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->positionWithOffset:[I

    .line 558
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView$FastScroll$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll$1;-><init>(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    .line 614
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->viewAlpha:F

    .line 573
    iput p3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 575
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    const/16 v3, 0x2d

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 576
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    goto :goto_0

    .line 578
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    .line 579
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    const/16 v3, 0xd

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 580
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 581
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint2:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 582
    sget v2, Lorg/telegram/messenger/R$drawable;->calendar_date:I

    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 583
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/4 v5, -0x1

    const v6, 0x3dcccccd    # 0.1f

    invoke-static {v3, v5, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    if-ge v0, v1, :cond_1

    .line 586
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/16 v3, 0x2c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-eqz v0, :cond_2

    const/16 p3, 0xa

    :goto_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    goto :goto_3

    :cond_2
    if-nez p3, :cond_3

    const/16 p3, 0x84

    goto :goto_2

    :cond_3
    const/16 p3, 0xf0

    :goto_2
    add-int/lit8 p3, p3, -0xf

    goto :goto_1

    :goto_3
    iput p3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    .line 590
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->updateColors()V

    .line 591
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 592
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 593
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->touchSlop:F

    .line 594
    sget p1, Lorg/telegram/messenger/R$drawable;->fast_scroll_shadow:I

    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;)Z
    .locals 0

    .line 514
    iget-boolean p0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;Z)Z
    .locals 0

    .line 514
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateVisible:Z

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;Z)V
    .locals 0

    .line 514
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getCurrentLetter(Z)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;)V
    .locals 0

    .line 514
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->updateColors()V

    return-void
.end method

.method private getCurrentLetter(Z)V
    .locals 23

    move-object/from16 v0, p0

    .line 697
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 698
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_8

    .line 699
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 700
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 701
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    .line 702
    instance-of v4, v2, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    if-eqz v4, :cond_8

    .line 703
    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    .line 704
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->positionWithOffset:[I

    invoke-virtual {v2, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 706
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->positionWithOffset:[I

    aget v6, v5, v4

    aget v5, v5, v3

    neg-int v5, v5

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v7}, Lorg/telegram/ui/Components/RecyclerListView;->access$300(Lorg/telegram/ui/Components/RecyclerListView;)I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {v1, v6, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 709
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->positionWithOffset:[I

    aget v1, v1, v4

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->getLetter(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 711
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1

    .line 712
    iput-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->oldLetterLayout:Landroid/text/StaticLayout;

    .line 714
    :cond_1
    iput-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    goto/16 :goto_4

    .line 715
    :cond_2
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->currentLetter:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 716
    iput-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->currentLetter:Ljava/lang/String;

    .line 717
    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    const/4 v13, 0x2

    if-nez v5, :cond_3

    .line 718
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    const/16 v8, 0x3e8

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v3

    move-object v6, v1

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    goto/16 :goto_2

    .line 720
    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    iput-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    .line 721
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    add-int/lit8 v22, v5, 0x1

    .line 722
    new-instance v14, Landroid/text/StaticLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v14

    move-object v6, v1

    move/from16 v8, v22

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    .line 723
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_6

    const-string v5, " "

    .line 724
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 725
    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 726
    array-length v7, v6

    if-ne v7, v13, :cond_4

    array-length v7, v5

    if-ne v7, v13, :cond_4

    aget-object v7, v6, v3

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 727
    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 728
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 729
    new-instance v8, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v8}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v15, v8, v5, v9, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 730
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    add-int/lit8 v17, v5, 0x1

    .line 731
    new-instance v5, Landroid/text/StaticLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    sget-object v18, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v5

    move-object/from16 v16, v7

    invoke-direct/range {v14 .. v21}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    .line 733
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 734
    new-instance v5, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v5}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    aget-object v7, v6, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v15, v5, v7, v8, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 735
    new-instance v5, Landroid/text/StaticLayout;

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    sget-object v18, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object v14, v5

    move-object/from16 v16, v7

    move/from16 v17, v22

    invoke-direct/range {v14 .. v21}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inLetterLayout:Landroid/text/StaticLayout;

    .line 737
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 738
    new-instance v1, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v1}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    aget-object v5, v6, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v15, v1, v4, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 739
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    sget-object v18, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object v14, v1

    move-object/from16 v16, v5

    invoke-direct/range {v14 .. v21}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->stableLetterLayout:Landroid/text/StaticLayout;

    goto :goto_0

    .line 741
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    iput-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inLetterLayout:Landroid/text/StaticLayout;

    .line 742
    iput-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->stableLetterLayout:Landroid/text/StaticLayout;

    .line 745
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fromWidth:F

    const/4 v1, 0x0

    .line 746
    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    .line 747
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getProgress()F

    move-result v1

    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastLetterY:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    iput-boolean v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fromTop:Z

    .line 750
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getProgress()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastLetterY:F

    .line 752
    :goto_2
    iput-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->oldLetterLayout:Landroid/text/StaticLayout;

    .line 753
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_8

    .line 754
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    .line 755
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    .line 756
    iget-boolean v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    const/high16 v2, 0x40000000    # 2.0f

    const/16 v3, 0x58

    if-eqz v1, :cond_7

    const/16 v1, 0xa

    .line 757
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v2

    add-float/2addr v1, v5

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textX:F

    goto :goto_3

    .line 759
    :cond_7
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v5

    sub-float/2addr v1, v5

    div-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textX:F

    .line 761
    :goto_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v1, v13

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textY:F

    :cond_8
    :goto_4
    return-void
.end method

.method private updateColors()V
    .locals 2

    .line 598
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    if-nez v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollInactive:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    const/16 v1, 0x66

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inactiveColor:I

    .line 599
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollActive:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->activeColor:I

    .line 600
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inactiveColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 602
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    if-nez v0, :cond_1

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    .line 605
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 607
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .line 1016
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->viewAlpha:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 1024
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    return v0
.end method

.method public getScrollBarY()I
    .locals 2

    .line 1020
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/16 v1, 0x36

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/16 v1, 0x11

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isPressed()Z
    .locals 1

    .line 976
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    return v0
.end method

.method public layout(IIII)V
    .locals 1

    .line 963
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$400(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 966
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 783
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->usePadding:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 784
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v2

    const/16 v5, 0x36

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v2, v4

    .line 785
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    int-to-float v5, v5

    const/16 v6, 0xc

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v7, v2

    int-to-float v7, v7

    iget v8, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    const/4 v9, 0x5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v8, v10

    int-to-float v8, v8

    const/16 v10, 0x2a

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v2

    int-to-float v10, v10

    invoke-virtual {v4, v5, v7, v8, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 786
    iget v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    const/4 v5, -0x1

    const/16 v7, 0x8

    const/16 v8, 0x18

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-nez v4, :cond_1

    .line 787
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    iget v13, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inactiveColor:I

    iget v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->activeColor:I

    iget v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    invoke-static {v13, v14, v15}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 788
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v13, v14, v15}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 790
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    const v14, 0x3dcccccd    # 0.1f

    invoke-static {v13, v5, v14}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v4, 0x1b

    .line 792
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    add-int/2addr v13, v2

    int-to-float v13, v13

    .line 793
    iget-object v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v15, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/2addr v5, v11

    int-to-float v5, v5

    sub-float v5, v13, v5

    float-to-int v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/2addr v3, v11

    int-to-float v3, v3

    add-float/2addr v13, v3

    float-to-int v3, v13

    invoke-virtual {v14, v15, v5, v9, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 794
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 795
    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 797
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 798
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 799
    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/16 v4, 0x22

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    mul-float/2addr v5, v9

    add-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 800
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 801
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 803
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 804
    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    mul-float/2addr v5, v9

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x43340000    # 180.0f

    .line 805
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v12, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 806
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 807
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 809
    :goto_1
    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    const/16 v4, 0x1e

    const/high16 v5, 0x437f0000    # 255.0f

    const/4 v9, 0x6

    const/4 v13, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    if-nez v3, :cond_c

    .line 810
    iget-boolean v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    if-nez v3, :cond_2

    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    cmpl-float v3, v3, v12

    if-eqz v3, :cond_15

    .line 811
    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    iget v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    mul-float/2addr v7, v5

    float-to-int v5, v7

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 812
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v4, 0x2e

    .line 813
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v2, v4

    .line 815
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    if-gt v2, v4, :cond_3

    .line 816
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v2, v4

    .line 817
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    move/from16 v18, v4

    move v4, v2

    move/from16 v2, v18

    goto :goto_2

    :cond_3
    move v4, v12

    :goto_2
    const/16 v5, 0xa

    .line 821
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v2

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/16 v6, 0x1d

    .line 822
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    const/16 v8, 0x2c

    if-gtz v7, :cond_4

    .line 823
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    .line 824
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    const/16 v6, 0x28

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v8, v4

    goto :goto_3

    .line 826
    :cond_4
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    .line 827
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v8, v7

    .line 828
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    sub-float v4, v14, v4

    const/16 v6, 0x28

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v7, v4

    .line 830
    :goto_3
    iget-boolean v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-eqz v4, :cond_5

    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v15, 0x0

    aget v16, v6, v15

    cmpl-float v15, v16, v7

    if-nez v15, :cond_6

    aget v6, v6, v9

    cmpl-float v6, v6, v8

    if-nez v6, :cond_6

    :cond_5
    if-nez v4, :cond_a

    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    aget v15, v6, v11

    cmpl-float v15, v15, v7

    if-nez v15, :cond_6

    aget v6, v6, v10

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_a

    :cond_6
    if-eqz v4, :cond_7

    .line 832
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    aput v7, v4, v13

    const/4 v6, 0x0

    aput v7, v4, v6

    const/4 v6, 0x7

    .line 833
    aput v8, v4, v6

    aput v8, v4, v9

    goto :goto_4

    .line 835
    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v6, 0x3

    aput v7, v4, v6

    aput v7, v4, v11

    const/4 v6, 0x5

    .line 836
    aput v8, v4, v6

    aput v8, v4, v10

    .line 838
    :goto_4
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 839
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    iget-boolean v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-eqz v6, :cond_8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    goto :goto_5

    :cond_8
    move v5, v12

    :goto_5
    iget-boolean v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-eqz v6, :cond_9

    const/16 v6, 0x62

    goto :goto_6

    :cond_9
    const/16 v6, 0x58

    :goto_6
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/16 v7, 0x58

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v5, v12, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 840
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 841
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 843
    :cond_a
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_b

    goto :goto_7

    :cond_b
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->oldLetterLayout:Landroid/text/StaticLayout;

    :goto_7
    if-eqz v4, :cond_15

    .line 845
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 846
    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    iget v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    int-to-float v6, v6

    sub-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual {v1, v5, v5, v6, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 847
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 848
    iget v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textX:F

    iget v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 849
    invoke-virtual {v4, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 850
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_c

    :cond_c
    if-ne v3, v13, :cond_15

    .line 854
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_15

    iget v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    cmpl-float v2, v2, v12

    if-eqz v2, :cond_15

    .line 855
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const v2, 0x3f333333    # 0.7f

    const v3, 0x3e99999a    # 0.3f

    .line 856
    iget v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    mul-float/2addr v15, v3

    add-float/2addr v15, v2

    .line 857
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v1, v15, v15, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 859
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 860
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    mul-float/2addr v4, v15

    sub-float/2addr v3, v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 861
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    .line 862
    iget v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    iget-object v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v4, v9

    iget v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fromWidth:F

    iget v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    sub-float v15, v14, v15

    mul-float/2addr v9, v15

    add-float/2addr v4, v9

    .line 863
    iget-object v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    sub-float v4, v3, v4

    const/16 v15, 0x24

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v4, v15

    iget-object v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v15}, Landroid/text/StaticLayout;->getHeight()I

    move-result v15

    int-to-float v15, v15

    const/high16 v17, 0x40000000    # 2.0f

    div-float v15, v15, v17

    sub-float v15, v2, v15

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v15, v13

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v3, v6

    iget-object v13, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v13}, Landroid/text/StaticLayout;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float v13, v13, v17

    add-float/2addr v13, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v13, v7

    invoke-virtual {v9, v4, v15, v6, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 865
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    .line 866
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getAlpha()I

    move-result v6

    .line 867
    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint2:Landroid/graphics/Paint;

    int-to-float v9, v4

    iget v13, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    mul-float/2addr v9, v13

    float-to-int v9, v9

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 869
    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    iget v13, v9, Landroid/graphics/RectF;->left:F

    float-to-int v13, v13

    iget v15, v9, Landroid/graphics/RectF;->top:F

    float-to-int v15, v15

    iget v12, v9, Landroid/graphics/RectF;->right:F

    float-to-int v12, v12

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    invoke-virtual {v7, v13, v15, v12, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 870
    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    mul-float/2addr v9, v5

    float-to-int v5, v9

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 871
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fastScrollBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 873
    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    cmpl-float v7, v5, v14

    if-eqz v7, :cond_e

    const v7, 0x3dda740e

    add-float/2addr v5, v7

    .line 874
    iput v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    cmpl-float v5, v5, v14

    if-lez v5, :cond_d

    .line 876
    iput v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    goto :goto_8

    .line 878
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 882
    :cond_e
    :goto_8
    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    cmpl-float v5, v5, v14

    const/16 v7, 0xf

    if-eqz v5, :cond_14

    .line 883
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 884
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v5, v9, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 885
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 886
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_10

    .line 887
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    int-to-float v9, v6

    iget v10, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    mul-float/2addr v9, v10

    iget v10, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    sub-float v10, v14, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v5, v9}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 888
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 889
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v5, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v17

    sub-float v9, v2, v9

    iget-boolean v10, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fromTop:Z

    if-eqz v10, :cond_f

    const/4 v10, -0x1

    goto :goto_9

    :cond_f
    const/4 v10, 0x1

    :goto_9
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    mul-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-virtual {v1, v5, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 890
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->outLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 891
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 894
    :cond_10
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inLetterLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_12

    .line 895
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    int-to-float v9, v6

    iget v10, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    mul-float/2addr v9, v10

    iget v10, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v5, v9}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 896
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 897
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v5, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v17

    sub-float v9, v2, v9

    iget-boolean v10, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->fromTop:Z

    if-eqz v10, :cond_11

    const/16 v16, 0x1

    goto :goto_a

    :cond_11
    const/16 v16, -0x1

    :goto_a
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    mul-int v7, v7, v16

    int-to-float v7, v7

    iget v10, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    sub-float v10, v14, v10

    mul-float/2addr v7, v10

    add-float/2addr v9, v7

    invoke-virtual {v1, v5, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 898
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->inLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 899
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 902
    :cond_12
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->stableLetterLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_13

    .line 903
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    int-to-float v7, v6

    iget v9, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    mul-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 904
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 905
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->stableLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->stableLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v17

    sub-float/2addr v2, v5

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 906
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->stableLetterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 907
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 909
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_b

    .line 911
    :cond_14
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    int-to-float v9, v6

    iget v10, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v5, v9}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 912
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 913
    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v17

    sub-float/2addr v2, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->replaceLayoutProgress:F

    sub-float v7, v14, v7

    mul-float/2addr v5, v7

    add-float/2addr v2, v5

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 914
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 915
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 918
    :goto_b
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 919
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 921
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 924
    :cond_15
    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 925
    iget-wide v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastUpdateTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const-wide/16 v6, 0x11

    if-ltz v5, :cond_16

    cmp-long v5, v3, v6

    if-lez v5, :cond_17

    :cond_16
    move-wide v3, v6

    .line 929
    :cond_17
    iget-boolean v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    const/high16 v6, 0x42f00000    # 120.0f

    if-eqz v5, :cond_18

    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v7, :cond_18

    iget v7, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    cmpg-float v7, v7, v14

    if-ltz v7, :cond_1a

    :cond_18
    if-eqz v5, :cond_19

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-nez v5, :cond_1c

    :cond_19
    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-lez v5, :cond_1c

    .line 930
    :cond_1a
    iput-wide v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastUpdateTime:J

    .line 931
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 932
    iget-boolean v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1b

    .line 933
    iget v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    long-to-float v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    cmpl-float v1, v1, v14

    if-lez v1, :cond_1c

    .line 935
    iput v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    goto :goto_d

    .line 938
    :cond_1b
    iget v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    long-to-float v2, v3

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1c

    .line 940
    iput v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    .line 946
    :cond_1c
    :goto_d
    iget-boolean v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateVisible:Z

    if-eqz v1, :cond_1e

    iget v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    cmpl-float v5, v2, v14

    if-eqz v5, :cond_1e

    long-to-float v1, v3

    div-float/2addr v1, v6

    add-float/2addr v2, v1

    .line 947
    iput v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    cmpl-float v1, v2, v14

    if-lez v1, :cond_1d

    .line 949
    iput v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    .line 951
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_e

    :cond_1e
    if-nez v1, :cond_20

    .line 952
    iget v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    const/4 v2, 0x0

    cmpl-float v5, v1, v2

    if-eqz v5, :cond_20

    long-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v1, v3

    .line 953
    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1f

    .line 955
    iput v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateProgress:F

    .line 957
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_20
    :goto_e
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 771
    iget p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    if-nez p1, :cond_0

    const/16 p1, 0x84

    goto :goto_0

    :cond_0
    const/16 p1, 0xf0

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 773
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 774
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Path;->setLastPoint(FF)V

    .line 775
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    const/4 p2, 0x4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 776
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 777
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 618
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isVisible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 619
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    return v1

    .line 622
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0xc

    const/16 v3, 0x36

    const/4 v4, 0x1

    if-eqz v0, :cond_c

    if-eq v0, v4, :cond_9

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_9

    .line 693
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    return p1

    .line 648
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    if-nez v0, :cond_2

    return v4

    .line 651
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->touchSlop:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 652
    iput-boolean v4, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    .line 654
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    if-eqz v0, :cond_8

    .line 655
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 656
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startDy:F

    add-float/2addr v0, v1

    .line 657
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/16 v2, 0x2a

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startDy:F

    add-float/2addr v1, v2

    cmpg-float v2, p1, v0

    if-gez v2, :cond_4

    move p1, v0

    goto :goto_0

    :cond_4
    cmpl-float v0, p1, v1

    if-lez v0, :cond_5

    move p1, v1

    .line 663
    :cond_5
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    sub-float v0, p1, v0

    .line 664
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    .line 665
    iget p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    .line 667
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    goto :goto_1

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    .line 669
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    .line 671
    :cond_7
    :goto_1
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getCurrentLetter(Z)V

    .line 672
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_8
    return v4

    .line 677
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    .line 678
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    if-nez v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startTime:J

    sub-long/2addr v2, v5

    const-wide/16 v5, 0x96

    cmp-long v0, v2, v5

    if-gez v0, :cond_a

    .line 679
    instance-of v0, p1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    if-eqz v0, :cond_a

    .line 680
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->onFastScrollSingleTap()V

    .line 683
    :cond_a
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    .line 684
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    .line 685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastUpdateTime:J

    .line 686
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 687
    instance-of v0, p1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    if-eqz v0, :cond_b

    .line 688
    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->onFinishFastScroll(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 690
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->showFloatingDate()V

    return v4

    .line 624
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startY:F

    .line 626
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr p1, v3

    int-to-float p1, p1

    iget v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    mul-float/2addr p1, v3

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float p1, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    .line 627
    iget-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    const/16 v3, 0x19

    if-eqz v2, :cond_d

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_15

    :cond_d
    iget-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-nez v2, :cond_e

    const/16 v2, 0x6b

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_15

    :cond_e
    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    cmpg-float v5, v2, p1

    if-ltz v5, :cond_15

    const/16 v5, 0x1e

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, p1

    cmpl-float v2, v2, v6

    if-lez v2, :cond_f

    goto :goto_2

    .line 630
    :cond_f
    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    if-ne v2, v4, :cond_13

    iget-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateVisible:Z

    if-nez v2, :cond_13

    .line 631
    iget-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-eqz v2, :cond_10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_12

    :cond_10
    iget-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-nez v2, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_12

    :cond_11
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    cmpg-float v2, v0, p1

    if-ltz v2, :cond_12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_13

    :cond_12
    return v1

    .line 635
    :cond_13
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startDy:F

    .line 636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startTime:J

    .line 637
    iput-boolean v4, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    .line 638
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    .line 639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastUpdateTime:J

    .line 640
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 641
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    .line 642
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->showFloatingDate()V

    .line 643
    instance-of v0, p1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    if-eqz v0, :cond_14

    .line 644
    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->onStartFastScroll()V

    :cond_14
    return v4

    :cond_15
    :goto_2
    return v1
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1008
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->viewAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1009
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->viewAlpha:F

    .line 1010
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->visibilityAlpha:F

    mul-float/2addr p1, v0

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setIsVisible(Z)V
    .locals 1

    .line 992
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isVisible:Z

    if-eq v0, p1, :cond_1

    .line 993
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isVisible:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 994
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->visibilityAlpha:F

    .line 995
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->viewAlpha:F

    mul-float/2addr v0, p1

    invoke-super {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 970
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    .line 971
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVisibilityAlpha(F)V
    .locals 1

    .line 1000
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->visibilityAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1001
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->visibilityAlpha:F

    .line 1002
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->viewAlpha:F

    mul-float/2addr v0, p1

    invoke-super {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public showFloatingDate()V
    .locals 3

    .line 980
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 983
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateVisible:Z

    if-nez v0, :cond_1

    .line 984
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->floatingDateVisible:Z

    .line 985
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 987
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 988
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
