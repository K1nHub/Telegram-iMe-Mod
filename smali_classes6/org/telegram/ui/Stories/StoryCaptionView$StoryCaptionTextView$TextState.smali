.class public Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;
.super Ljava/lang/Object;
.source "StoryCaptionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextState"
.end annotation


# instance fields
.field private final clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

.field firstLayout:Landroid/text/StaticLayout;

.field private firstLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field fullLayout:Landroid/text/StaticLayout;

.field private fullLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private final links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field private final loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field private loadingPath:Landroid/graphics/Path;

.field nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

.field final patchedLayout:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/text/Layout;",
            ">;"
        }
    .end annotation
.end field

.field private pressedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

.field private pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/ui/Components/LinkSpanDrawable<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field protected final spoilers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final spoilersPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field text:Ljava/lang/CharSequence;

.field textHeight:I

.field final synthetic this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

.field public final translateT:Lorg/telegram/ui/Components/AnimatedFloat;

.field public translating:Z


# direct methods
.method public static synthetic $r8$lambda$6UbalkvSmHA6uDiJQ_URWk6-CJA(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ANvwPlr7yiYsKOt2yhbjkIrIl0I(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$UOhlM5wv9KmhkMdG7u0mFEp0cnY(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->lambda$new$2(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$qq0PMEXmbPapINsmlosgly0QuhY(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;Lorg/telegram/ui/Components/LinkSpanDrawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->lambda$touch$3(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)V
    .locals 9

    .line 606
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    .line 580
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilersPool:Ljava/util/Stack;

    const-string v1, ""

    .line 584
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    .line 587
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v3, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x190

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->translateT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 590
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->loadingPath:Landroid/graphics/Path;

    .line 851
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->patchedLayout:Ljava/util/concurrent/atomic/AtomicReference;

    .line 607
    new-instance v1, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    new-instance v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)V

    invoke-direct {v1, p1, v0, v2}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;-><init>(Landroid/view/View;Ljava/util/List;Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$OnSpoilerClickedListener;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    .line 620
    new-instance v0, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    .line 621
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->loadingPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->usePath(Landroid/graphics/Path;)V

    const/high16 v1, 0x40800000    # 4.0f

    .line 622
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    const/4 v1, -0x1

    const v2, 0x3e99999a    # 0.3f

    .line 624
    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    .line 625
    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    const v4, 0x3e4ccccd    # 0.2f

    .line 626
    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    const v5, 0x3f333333    # 0.7f

    .line 627
    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    .line 623
    invoke-virtual {v0, v2, v3, v4, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(IIII)V

    .line 629
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;
    .locals 0

    .line 568
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)Lorg/telegram/ui/Components/LoadingDrawable;
    .locals 0

    .line 568
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;
    .locals 0

    .line 568
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;Lorg/telegram/ui/Components/LinkSpanDrawable;)Lorg/telegram/ui/Components/LinkSpanDrawable;
    .locals 0

    .line 568
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    return-object p1
.end method

.method private drawInternal(Landroid/graphics/Canvas;F)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 763
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 764
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v2, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v2, v2

    iget v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v1, v1

    invoke-virtual {v11, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 765
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 768
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v12, 0x0

    cmpl-float v1, p2, v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-lez v1, :cond_1

    move v15, v13

    goto :goto_0

    :cond_1
    move v15, v14

    .line 771
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->loadingPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 773
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayout:Landroid/text/StaticLayout;

    if-nez v1, :cond_2

    goto/16 :goto_5

    .line 790
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 791
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 792
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v2, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v2, v2

    iget v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v1, v1

    invoke-virtual {v11, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 793
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;->draw(Landroid/graphics/Canvas;)V

    .line 794
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 796
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_4

    .line 797
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 798
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v2, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v2, v2

    iget v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v1, v1

    invoke-virtual {v11, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 799
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayout:Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-direct {v0, v1, v11, v2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->drawLayout(Landroid/text/StaticLayout;Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 800
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v3, v13, [Landroid/text/Layout;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v14

    invoke-static {v14, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 801
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->access$100(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v10

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 802
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v15, :cond_4

    .line 805
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayout:Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v3, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v3, v3

    iget v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v3, v2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->putLayoutRects(Landroid/text/Layout;FF)V

    .line 809
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    if-eqz v1, :cond_c

    move v10, v14

    .line 810
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    array-length v2, v1

    if-ge v10, v2, :cond_c

    .line 811
    aget-object v8, v1, v10

    if-nez v8, :cond_5

    :goto_2
    move/from16 v17, v10

    goto/16 :goto_4

    .line 815
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 816
    iget v1, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->collapsedX:F

    iget v2, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalX:F

    cmpl-float v3, v1, v2

    if-nez v3, :cond_8

    .line 817
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v3, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    cmpl-float v3, v3, v12

    if-nez v3, :cond_6

    goto :goto_2

    .line 820
    :cond_6
    iget v3, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v1, v1

    iget v2, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalY:F

    add-float/2addr v1, v2

    invoke-virtual {v11, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 821
    iget-object v1, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/high16 v1, 0x437f0000    # 255.0f

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v6, v6, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    mul-float/2addr v6, v1

    float-to-int v6, v6

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 822
    iget-object v1, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-direct {v0, v1, v11, v2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->drawLayout(Landroid/text/StaticLayout;Landroid/graphics/Canvas;Ljava/util/List;)V

    if-eqz v15, :cond_7

    .line 825
    iget-object v1, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v3, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v3, v3

    iget v4, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalX:F

    add-float/2addr v3, v4

    iget v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v2, v2

    iget v4, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalY:F

    add-float/2addr v2, v4

    invoke-direct {v0, v1, v3, v2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->putLayoutRects(Landroid/text/Layout;FF)V

    .line 828
    :cond_7
    iget-object v1, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v11}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 829
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v2, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->layoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v3, v13, [Landroid/text/Layout;

    iget-object v4, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v14

    invoke-static {v14, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v3

    iput-object v3, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->layoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 830
    iget-object v2, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v9, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->access$100(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v16

    move-object/from16 v1, p1

    move/from16 v17, v10

    move-object/from16 v10, v16

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 831
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    :cond_8
    move/from16 v17, v10

    .line 834
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v3, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    .line 835
    iget v2, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->collapsedY:F

    iget v3, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalY:F

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v5, v5, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 836
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v4, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget v3, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {v11, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v15, :cond_9

    .line 839
    iget-object v3, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v5, v4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v5, v5

    add-float/2addr v5, v1

    iget v1, v4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    invoke-direct {v0, v3, v5, v1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->putLayoutRects(Landroid/text/Layout;FF)V

    .line 841
    :cond_9
    iget-object v1, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v11}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 842
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v2, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->layoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v3, v13, [Landroid/text/Layout;

    iget-object v4, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v14

    invoke-static {v14, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v3

    iput-object v3, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->layoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 843
    iget-object v2, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->access$100(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v10

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 845
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_4
    add-int/lit8 v10, v17, 0x1

    goto/16 :goto_1

    .line 774
    :cond_a
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_c

    .line 775
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 776
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v2, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v2, v2

    iget v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v1, v1

    invoke-virtual {v11, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 777
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 778
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;->draw(Landroid/graphics/Canvas;)V

    .line 780
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-direct {v0, v1, v11, v2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->drawLayout(Landroid/text/StaticLayout;Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 781
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v3, v13, [Landroid/text/Layout;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v14

    invoke-static {v14, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 782
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->access$100(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v10

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 783
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v15, :cond_c

    .line 786
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v3, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v3, v3

    iget v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v3, v2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->putLayoutRects(Landroid/text/Layout;FF)V

    :cond_c
    return-void
.end method

.method private drawLayout(Landroid/text/StaticLayout;Landroid/graphics/Canvas;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/StaticLayout;",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;)V"
        }
    .end annotation

    .line 854
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 855
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->patchedLayout:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v9, 0x0

    move-object v6, p1

    move-object v7, p3

    move-object v8, p2

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderWithRipple(Landroid/view/View;ZIILjava/util/concurrent/atomic/AtomicReference;Landroid/text/Layout;Ljava/util/List;Landroid/graphics/Canvas;Z)V

    goto :goto_0

    .line 857
    :cond_0
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 611
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->access$302(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;Z)Z

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    .line 610
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    new-instance v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V
    .locals 6

    .line 608
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->access$300(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 610
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setOnRippleEndCallback(Ljava/lang/Runnable;)V

    .line 615
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-double v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 616
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 617
    invoke-virtual {v1, p2, p3, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$touch$3(Lorg/telegram/ui/Components/LinkSpanDrawable;)V
    .locals 4

    .line 904
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-ne p1, v0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object p1

    instance-of p1, p1, Landroid/text/style/URLSpan;

    if-eqz p1, :cond_0

    .line 905
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    check-cast v0, Landroid/text/style/URLSpan;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$CaptionTextView$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lorg/telegram/ui/PhotoViewer$CaptionTextView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;)V

    invoke-virtual {p1, v0, v1, v3}, Lorg/telegram/ui/Stories/StoryCaptionView;->onLinkLongPress(Landroid/text/style/URLSpan;Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 906
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    :cond_0
    return-void
.end method

.method private putLayoutRects(Landroid/text/Layout;FF)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 747
    :goto_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 748
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v3, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v3, v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 749
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v5, v5, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    if-nez v1, :cond_0

    .line 751
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v5, v5, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v0, v5

    .line 753
    :cond_0
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    int-to-float v5, v5

    .line 754
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v1, v6, :cond_1

    .line 755
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v6, v6, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    .line 757
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->loadingPath:Landroid/graphics/Path;

    add-float v7, p2, v2

    add-float v8, p3, v0

    add-float v9, p2, v3

    add-float v10, p3, v5

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    add-int/lit8 v1, v1, 0x1

    move v0, v5

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public collapsedTextHeight(I)I
    .locals 3

    .line 593
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->textHeight:I

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    return p1

    .line 597
    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 598
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->shouldCollapse:Z

    if-nez v2, :cond_1

    .line 599
    iget v0, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->textHeight:I

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    return p1

    :cond_1
    const/4 v1, 0x3

    .line 601
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 602
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v1, v0

    sub-int/2addr p1, v1

    return p1
.end method

.method public detach()V
    .locals 3

    .line 943
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 944
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 945
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 946
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 947
    aget-object v2, v1, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 950
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->layoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;F)V
    .locals 11

    .line 724
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->translateT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->translating:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    if-gtz v2, :cond_0

    return-void

    :cond_0
    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v2, p2

    .line 729
    invoke-static {p2, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    if-ltz v2, :cond_1

    .line 731
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->drawInternal(Landroid/graphics/Canvas;F)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 733
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v7, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v8, v2

    mul-float v2, p2, v3

    float-to-int v9, v2

    const/16 v10, 0x1f

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 734
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->drawInternal(Landroid/graphics/Canvas;F)V

    .line 735
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    cmpl-float v1, v0, v1

    if-gtz v1, :cond_2

    .line 738
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->translating:Z

    if-eqz v1, :cond_3

    .line 739
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    mul-float/2addr v0, v3

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/LoadingDrawable;->setAlpha(I)V

    .line 740
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 741
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public measure(I)V
    .locals 10

    .line 639
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 640
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    .line 641
    iput v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->textHeight:I

    .line 642
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v0, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v0, v0, v2

    if-ne p0, v0, :cond_0

    .line 643
    iput-object v1, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    .line 645
    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayout:Landroid/text/StaticLayout;

    .line 646
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilersPool:Ljava/util/Stack;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 647
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    .line 650
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4, p1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->access$000(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;Landroid/text/TextPaint;Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    .line 651
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->textHeight:I

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    const-string v3, " "

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 653
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    iput-boolean v4, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->shouldCollapse:Z

    .line 654
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->shouldCollapse:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_3

    .line 655
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    .line 656
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v4}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v6

    .line 657
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    invoke-interface {v7, v3, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-nez v3, :cond_3

    .line 658
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iput-boolean v2, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->shouldCollapse:Z

    .line 661
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-boolean v6, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->shouldCollapse:Z

    if-eqz v6, :cond_9

    .line 662
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v3

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    .line 663
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v6, v6, v2

    if-ne p0, v6, :cond_4

    .line 664
    sget v6, Lorg/telegram/messenger/R$string;->ShowMore:I

    const-string v7, "ShowMore"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 665
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v8, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMorePaint:Landroid/text/TextPaint;

    invoke-static {v7, v8, v6, p1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->access$000(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;Landroid/text/TextPaint;Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    .line 667
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v8, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    const v9, 0x3e99999a    # 0.3f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreY:F

    .line 668
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v8, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    add-int/2addr v8, p1

    int-to-float v8, v8

    iget-object v9, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMorePaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v8, v6

    iput v8, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreX:F

    .line 671
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v7, v6, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    iget-object v9, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v4}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v9

    invoke-interface {v8, v2, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v6, v7, v8, p1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->access$000(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;Landroid/text/TextPaint;Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayout:Landroid/text/StaticLayout;

    .line 672
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilersPool:Ljava/util/Stack;

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 673
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 674
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilersPool:Ljava/util/Stack;

    iget-object v9, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-static {v6, v7, v8, v9}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;)V

    .line 676
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v4}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v4

    add-float/2addr v4, v0

    .line 677
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    if-eqz v6, :cond_6

    move v6, v2

    .line 678
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    array-length v8, v7

    if-ge v6, v8, :cond_6

    .line 679
    aget-object v8, v7, v6

    if-nez v8, :cond_5

    goto :goto_2

    .line 682
    :cond_5
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v8, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    aget-object v7, v7, v6

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->layoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v8, v7}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 685
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    sub-int/2addr v6, v5

    new-array v6, v6, [Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    iput-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    .line 687
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 688
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-ge v5, v6, :cond_b

    .line 689
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v5}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v5}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v7

    .line 690
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-interface {v8, v9, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 691
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 692
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    add-int/lit8 v7, v5, -0x3

    aput-object v1, v6, v7

    goto :goto_4

    .line 695
    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v8, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    invoke-static {v7, v8, v6, p1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->access$000(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;Landroid/text/TextPaint;Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v6

    .line 696
    new-instance v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-direct {v7, v8}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)V

    .line 697
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    add-int/lit8 v9, v5, -0x3

    aput-object v7, v8, v9

    .line 698
    iput-object v6, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    .line 699
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v5}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalX:F

    .line 700
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalY:F

    .line 701
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v8, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreX:F

    const/16 v9, 0x10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    cmpg-float v8, v4, v8

    if-gez v8, :cond_8

    .line 702
    iput v3, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->collapsedY:F

    .line 703
    iput v4, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->collapsedX:F

    .line 704
    invoke-virtual {v6, v2}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v6

    add-float/2addr v6, v0

    add-float/2addr v4, v6

    goto :goto_4

    .line 706
    :cond_8
    iget v6, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalY:F

    iput v6, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->collapsedY:F

    .line 707
    iget v6, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalX:F

    iput v6, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->collapsedX:F

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 712
    :cond_9
    iget-object p1, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object p1, p1, v2

    if-ne p0, p1, :cond_a

    .line 713
    iput-object v1, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    .line 715
    :cond_a
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayout:Landroid/text/StaticLayout;

    .line 716
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilersPool:Ljava/util/Stack;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 717
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 718
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilersPool:Ljava/util/Stack;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->spoilers:Ljava/util/List;

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;)V

    .line 720
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    iget v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;->setAdditionalOffsets(II)V

    return-void
.end method

.method public setup(Ljava/lang/CharSequence;)V
    .locals 1

    .line 633
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    .line 634
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    const/4 v0, 0x0

    iput v0, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->sizeCached:I

    .line 635
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public touch(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 863
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 864
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreX:F

    iget v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreY:F

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v7, v6, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreY:F

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v7, v6

    invoke-virtual {v4, v5, v0, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 865
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 870
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v0, :cond_d

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_d

    .line 871
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 872
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v5, v5, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 873
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v4}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v5

    .line 874
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    int-to-float v0, v0

    invoke-virtual {v6, v5, v0}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result v6

    .line 875
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v5}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v7

    cmpg-float v8, v7, v0

    if-gtz v8, :cond_a

    .line 879
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v5

    add-float/2addr v7, v5

    cmpl-float v0, v7, v0

    if-ltz v0, :cond_a

    if-ltz v4, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    if-gt v4, v0, :cond_a

    .line 880
    new-instance v0, Landroid/text/SpannableString;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 881
    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v6, v6, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/CharacterStyle;

    if-eqz v4, :cond_4

    .line 882
    array-length v5, v4

    if-nez v5, :cond_5

    .line 883
    :cond_4
    const-class v4, Lorg/telegram/ui/Components/URLSpanMono;

    invoke-interface {v0, v6, v6, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/CharacterStyle;

    :cond_5
    if-eqz v4, :cond_6

    .line 885
    array-length v5, v4

    if-eqz v5, :cond_6

    .line 886
    aget-object v5, v4, v2

    .line 887
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_7

    .line 889
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 890
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 891
    new-instance v7, Lorg/telegram/ui/Components/LinkSpanDrawable;

    aget-object v4, v4, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-direct {v7, v4, v1, v8, v9}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FF)V

    iput-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    const/4 v4, -0x1

    const v8, 0x3e4ccccd    # 0.2f

    .line 892
    invoke-static {v4, v8}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/LinkSpanDrawable;->setColor(I)V

    .line 893
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 894
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 895
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 896
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/LinkSpanDrawable;->obtainNewPath()Lorg/telegram/ui/Components/LinkPath;

    move-result-object v8

    .line 897
    iget-object v9, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    iget-object v10, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v4, v10}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 898
    iget-object v9, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v4, v7, v8}, Landroid/text/StaticLayout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 900
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 901
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    .line 902
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    new-instance v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, v4}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 908
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v9, v4

    .line 902
    invoke-virtual {v7, v8, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move v4, v3

    goto :goto_1

    :cond_6
    move-object v5, v1

    :cond_7
    move v4, v2

    .line 911
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-nez v7, :cond_8

    if-nez v4, :cond_8

    .line 912
    const-class v7, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v0, v6, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v0, :cond_8

    .line 913
    array-length v6, v0

    if-eqz v6, :cond_8

    .line 914
    aget-object v6, v0, v2

    .line 915
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_9

    .line 917
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 918
    aget-object v0, v0, v2

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move v2, v3

    goto :goto_2

    :cond_8
    move-object v6, v1

    :cond_9
    move v2, v4

    goto :goto_2

    :cond_a
    move-object v5, v1

    move-object v6, v5

    .line 923
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_e

    .line 924
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 925
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object p1

    if-ne p1, v5, :cond_b

    .line 926
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Stories/StoryCaptionView;->onLinkClick(Landroid/text/style/CharacterStyle;Landroid/view/View;)V

    goto :goto_3

    .line 927
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz p1, :cond_c

    if-ne p1, v6, :cond_c

    .line 928
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryCaptionView;->onEmojiClick(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    .line 930
    :cond_c
    :goto_3
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 931
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    goto :goto_4

    .line 934
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 935
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->access$200(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)V

    .line 936
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->pressedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    :goto_4
    move v2, v3

    :cond_e
    return v2
.end method
