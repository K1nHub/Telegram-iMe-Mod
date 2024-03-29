.class public Lorg/telegram/ui/Stories/StoryPositionView;
.super Ljava/lang/Object;
.source "StoryPositionView.java"


# instance fields
.field backgroundPaint:Landroid/graphics/Paint;

.field lastHash:I

.field private final leftSpace:Landroid/text/SpannableStringBuilder;

.field private final rightSpace:Landroid/text/SpannableStringBuilder;

.field textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryPositionView;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryPositionView;->backgroundPaint:Landroid/graphics/Paint;

    .line 27
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPositionView;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/16 v2, 0xd

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPositionView;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 29
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPositionView;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 31
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPositionView;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    const/16 v3, 0x3a

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryPositionView;->leftSpace:Landroid/text/SpannableStringBuilder;

    const-string v2, " "

    .line 34
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 36
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryPositionView;->rightSpace:Landroid/text/SpannableStringBuilder;

    .line 37
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v0, v2, v4, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FIILandroid/widget/FrameLayout;Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)V
    .locals 3

    shl-int/lit8 p5, p4, 0xc

    add-int/2addr p5, p3

    .line 42
    iget v0, p0, Lorg/telegram/ui/Stories/StoryPositionView;->lastHash:I

    const/4 v1, 0x0

    if-eq v0, p5, :cond_0

    .line 43
    iput p5, p0, Lorg/telegram/ui/Stories/StoryPositionView;->lastHash:I

    .line 44
    new-instance p5, Landroid/text/SpannableStringBuilder;

    invoke-direct {p5}, Landroid/text/SpannableStringBuilder;-><init>()V

    add-int/lit8 p3, p3, 0x1

    .line 45
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPositionView;->leftSpace:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    const-string v0, "/"

    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPositionView;->rightSpace:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 46
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoryPositionView;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p3, p5, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 49
    invoke-virtual {p6}, Landroid/widget/FrameLayout;->getY()F

    move-result p3

    iget-object p4, p6, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p3, p4

    iget-object p4, p0, Lorg/telegram/ui/Stories/StoryPositionView;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getHeight()F

    move-result p4

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p4, p5

    add-float/2addr p3, p4

    const/high16 p4, 0x3f800000    # 1.0f

    sub-float/2addr p3, p4

    .line 50
    iget-object p4, p0, Lorg/telegram/ui/Stories/StoryPositionView;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result p4

    float-to-int p4, p4

    .line 51
    iget-object p5, p6, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p5, p4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    const/4 p5, 0x4

    .line 52
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    invoke-virtual {p6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    add-int/2addr p5, v0

    iget-object v0, p6, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr p5, v0

    iget-object v0, p6, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result v0

    add-int/2addr p5, v0

    iget-object v0, p6, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawableWidth()I

    move-result v0

    add-int/2addr p5, v0

    int-to-float p5, p5

    .line 53
    iget-object v0, p6, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result v0

    iget-object v2, p6, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawableWidth()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, p4

    iget-object p6, p6, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p6}, Landroid/view/View;->getWidth()I

    move-result p6

    sub-int/2addr v0, p6

    invoke-static {v0, p4, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p5, p4

    .line 54
    invoke-virtual {p1, p5, p3}, Landroid/graphics/Canvas;->translate(FF)V

    const/16 p3, 0x8

    .line 56
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    const/4 p4, 0x2

    .line 57
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    int-to-float p4, p4

    .line 59
    sget-object p5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    neg-float p6, p3

    neg-float v0, p4

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryPositionView;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v1

    add-float/2addr v1, p3

    iget-object p3, p0, Lorg/telegram/ui/Stories/StoryPositionView;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getHeight()F

    move-result p3

    add-float/2addr p3, p4

    invoke-virtual {p5, p6, v0, v1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 65
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoryPositionView;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 p4, 0x43200000    # 160.0f

    mul-float/2addr p2, p4

    float-to-int p2, p2

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 66
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryPositionView;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
