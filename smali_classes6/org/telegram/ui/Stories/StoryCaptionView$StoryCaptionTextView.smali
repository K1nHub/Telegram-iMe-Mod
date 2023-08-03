.class public Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;
.super Landroid/view/View;
.source "StoryCaptionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoryCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StoryCaptionTextView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;
    }
.end annotation


# instance fields
.field public allowClickSpoilers:Z

.field private clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

.field private final emojiColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field firstLayout:Landroid/text/StaticLayout;

.field private firstLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field fullLayout:Landroid/text/StaticLayout;

.field private fullLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field horizontalPadding:I

.field private isSpoilersRevealed:Z

.field private links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

.field patchedLayout:Ljava/util/concurrent/atomic/AtomicReference;
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

.field progressToExpand:F

.field showMore:Landroid/text/StaticLayout;

.field showMorePaint:Landroid/text/TextPaint;

.field showMoreX:F

.field showMoreY:F

.field sizeCached:I

.field protected spoilers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field private spoilersPool:Ljava/util/Stack;
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

.field textPaint:Landroid/text/TextPaint;

.field textX:F

.field textY:F

.field final synthetic this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

.field verticalPadding:I

.field private final xRefGradinetPaint:Landroid/graphics/Paint;

.field private final xRefPaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$5Bfg6Wz8k0M4LQzlSnuvddGNyxs(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->lambda$onTouchEvent$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$8O6yMYPpSlgkUOsvDppkP3-hv2w(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->lambda$new$2(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$W0X2YDXKN-cViMh_C6PznqIkQQw(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;Lorg/telegram/ui/Components/LinkSpanDrawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->lambda$onTouchEvent$4(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aqdJfmsBjVc3eXICwRyjnO8QgGU(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$yONjxgKmaYoK5z-69B6HiqUiklw(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/StoryCaptionView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    .line 583
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    .line 584
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 547
    new-instance p1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    .line 549
    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    .line 550
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMorePaint:Landroid/text/TextPaint;

    .line 551
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->xRefPaint:Landroid/graphics/Paint;

    .line 552
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->xRefGradinetPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 554
    iput v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->sizeCached:I

    const-string v1, ""

    .line 560
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->text:Ljava/lang/CharSequence;

    .line 571
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilers:Ljava/util/List;

    .line 572
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilersPool:Ljava/util/Stack;

    .line 574
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 575
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->allowClickSpoilers:Z

    .line 774
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->patchedLayout:Ljava/util/concurrent/atomic/AtomicReference;

    .line 586
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 587
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    iput p3, p2, Landroid/text/TextPaint;->linkColor:I

    .line 588
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    const/16 p3, 0xf

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 590
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMorePaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 591
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMorePaint:Landroid/text/TextPaint;

    const-string p3, "fonts/rmedium.ttf"

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 592
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMorePaint:Landroid/text/TextPaint;

    const/16 p3, 0x10

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 p2, -0x1000000

    .line 594
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 595
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 597
    new-instance p1, Landroid/graphics/LinearGradient;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float v6, p2

    const/4 p2, 0x2

    new-array v8, p2, [I

    fill-array-data v8, :array_0

    new-array v9, p2, [F

    fill-array-data v9, :array_1

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 598
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 600
    new-instance p1, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilers:Ljava/util/List;

    new-instance p3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)V

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;-><init>(Landroid/view/View;Ljava/util/List;Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$OnSpoilerClickedListener;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    .line 613
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->emojiColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private clearPressedLinks()V
    .locals 1

    .line 904
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    const/4 v0, 0x0

    .line 905
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 906
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private drawLayout(Landroid/text/StaticLayout;Landroid/graphics/Canvas;)V
    .locals 10

    .line 777
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 778
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->patchedLayout:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilers:Ljava/util/List;

    const/4 v9, 0x0

    move-object v1, p0

    move-object v6, p1

    move-object v8, p2

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderWithRipple(Landroid/view/View;ZIILjava/util/concurrent/atomic/AtomicReference;Landroid/text/Layout;Ljava/util/List;Landroid/graphics/Canvas;Z)V

    goto :goto_0

    .line 780
    :cond_0
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    .line 604
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->isSpoilersRevealed:Z

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 603
    new-instance v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V
    .locals 6

    .line 601
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->isSpoilersRevealed:Z

    if-eqz v0, :cond_0

    return-void

    .line 603
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setOnRippleEndCallback(Ljava/lang/Runnable;)V

    .line 608
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-double v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 609
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 610
    invoke-virtual {v1, p2, p3, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$onTouchEvent$3()V
    .locals 1

    .line 849
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$4(Lorg/telegram/ui/Components/LinkSpanDrawable;)V
    .locals 2

    .line 848
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-ne p1, v0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object p1

    instance-of p1, p1, Landroid/text/style/URLSpan;

    if-eqz p1, :cond_0

    .line 849
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    check-cast v0, Landroid/text/style/URLSpan;

    new-instance v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)V

    invoke-virtual {p1, v0, p0, v1}, Lorg/telegram/ui/Stories/StoryCaptionView;->onLinkLongPress(Landroid/text/style/URLSpan;Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 850
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    :cond_0
    return-void
.end method

.method private makeTextLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;
    .locals 9

    .line 785
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 786
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, p1, p3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_LEFT()Landroid/text/Layout$Alignment;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1

    .line 788
    :cond_1
    new-instance v8, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p2

    move-object v2, p1

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v8
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 929
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 930
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreX:F

    iget v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreY:F

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    iget v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreY:F

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 931
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 935
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->allowClickSpoilers:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 936
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 890
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 891
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 892
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->firstLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 893
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 894
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 895
    aget-object v2, v1, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 898
    :cond_0
    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->access$000(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 696
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 697
    iget v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textX:F

    iget v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v2, v2

    sub-float v2, v1, v2

    iget v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textY:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    sub-int/2addr v1, v5

    int-to-float v5, v1

    const/16 v6, 0xff

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_0

    .line 699
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 702
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 703
    iget v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textX:F

    iget v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textY:F

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 704
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 705
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 707
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 709
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/high16 v12, 0x437f0000    # 255.0f

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->firstLayout:Landroid/text/StaticLayout;

    if-nez v1, :cond_2

    goto/16 :goto_3

    :cond_2
    if-eqz v1, :cond_3

    .line 720
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 721
    iget v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textX:F

    iget v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textY:F

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 722
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->firstLayout:Landroid/text/StaticLayout;

    invoke-direct {v0, v1, v11}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->drawLayout(Landroid/text/StaticLayout;Landroid/graphics/Canvas;)V

    .line 723
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->firstLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v2, v13, [Landroid/text/Layout;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->firstLayout:Landroid/text/StaticLayout;

    aput-object v3, v2, v14

    invoke-static {v14, v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->firstLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 724
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->firstLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilers:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->emojiColorFilter:Landroid/graphics/PorterDuffColorFilter;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 725
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 728
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    if-eqz v1, :cond_6

    move v15, v14

    .line 729
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    array-length v2, v1

    if-ge v15, v2, :cond_6

    .line 730
    aget-object v1, v1, v15

    .line 731
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 732
    iget v2, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->collapsedX:F

    iget v3, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalX:F

    cmpl-float v4, v2, v3

    if-nez v4, :cond_4

    .line 733
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    iget v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    mul-float/2addr v3, v12

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 734
    iget v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textX:F

    iget v3, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalX:F

    add-float/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textY:F

    iget v4, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalY:F

    add-float/2addr v3, v4

    invoke-virtual {v11, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 735
    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    invoke-direct {v0, v2, v11}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->drawLayout(Landroid/text/StaticLayout;Landroid/graphics/Canvas;)V

    .line 736
    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v11}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 737
    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->access$000(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v2

    new-array v3, v13, [Landroid/text/Layout;

    iget-object v4, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v14

    invoke-static {v14, v0, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->access$002(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 738
    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->access$000(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilers:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->emojiColorFilter:Landroid/graphics/PorterDuffColorFilter;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 739
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_2

    .line 741
    :cond_4
    iget v4, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 742
    iget v3, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->collapsedY:F

    iget v4, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalY:F

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v6, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 743
    iget v4, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textX:F

    add-float/2addr v4, v2

    iget v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textY:F

    add-float/2addr v2, v3

    invoke-virtual {v11, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 745
    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v11}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 746
    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->access$000(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v2

    new-array v3, v13, [Landroid/text/Layout;

    iget-object v4, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v14

    invoke-static {v14, v0, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->access$002(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 747
    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->access$000(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilers:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->emojiColorFilter:Landroid/graphics/PorterDuffColorFilter;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 749
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 710
    :cond_5
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_6

    .line 711
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 712
    iget v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textX:F

    iget v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textY:F

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 713
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    invoke-direct {v0, v1, v11}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->drawLayout(Landroid/text/StaticLayout;Landroid/graphics/Canvas;)V

    .line 714
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v2, v13, [Landroid/text/Layout;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    aput-object v3, v2, v14

    invoke-static {v14, v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayoutEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 715
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilers:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->emojiColorFilter:Landroid/graphics/PorterDuffColorFilter;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 716
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 754
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    if-eqz v1, :cond_7

    .line 755
    iget v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreY:F

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    add-float v7, v1, v2

    .line 756
    iget v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    const/high16 v2, 0x3f000000    # 0.5f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    sub-float/2addr v3, v1

    .line 757
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->xRefGradinetPaint:Landroid/graphics/Paint;

    mul-float/2addr v3, v12

    float-to-int v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 758
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->xRefPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 759
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMorePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 760
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 761
    iget v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreX:F

    const/16 v2, 0x20

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {v11, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 762
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    add-int/2addr v1, v2

    int-to-float v6, v1

    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->xRefGradinetPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 763
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 765
    iget v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreX:F

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v7

    iget v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v3, v3

    add-float v5, v1, v3

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->xRefPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 766
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 767
    iget v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreX:F

    invoke-virtual {v11, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 768
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    invoke-virtual {v1, v11}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 769
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 771
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    add-int/2addr p2, p1

    const/16 v0, 0x10

    shl-int/2addr p2, v0

    .line 631
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    const/16 v1, 0x8

    .line 632
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    .line 633
    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->sizeCached:I

    const/4 v2, 0x2

    if-eq v1, p2, :cond_4

    .line 634
    iput p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->sizeCached:I

    .line 635
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    mul-int/2addr v1, v2

    sub-int/2addr p2, v1

    .line 636
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->text:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v3, p2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->makeTextLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    .line 637
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textHeight:I

    .line 638
    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textX:F

    .line 639
    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textY:F

    .line 640
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    const-string v3, " "

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 641
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_3

    .line 642
    sget v3, Lorg/telegram/messenger/R$string;->ShowMore:I

    const-string v5, "ShowMore"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 643
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMorePaint:Landroid/text/TextPaint;

    invoke-direct {p0, v5, v3, p2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->makeTextLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    .line 645
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 646
    iget v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textY:F

    add-float/2addr v6, v5

    const v7, 0x3e99999a    # 0.3f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    sub-float/2addr v6, v7

    iput v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreY:F

    .line 647
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMorePaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v6, v3

    iput v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreX:F

    .line 648
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->text:Ljava/lang/CharSequence;

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v2}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v3, v6, p2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->makeTextLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->firstLayout:Landroid/text/StaticLayout;

    .line 649
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilersPool:Ljava/util/Stack;

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilers:Ljava/util/List;

    invoke-virtual {v3, v6}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 650
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 651
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilersPool:Ljava/util/Stack;

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilers:Ljava/util/List;

    invoke-static {p0, v3, v6, v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;)V

    .line 653
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v3

    add-float/2addr v3, v1

    .line 654
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    if-eqz v6, :cond_1

    move v6, v8

    .line 655
    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    array-length v9, v7

    if-ge v6, v9, :cond_1

    .line 656
    aget-object v9, v7, v6

    if-nez v9, :cond_0

    goto :goto_1

    .line 659
    :cond_0
    aget-object v7, v7, v6

    invoke-static {v7}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->access$000(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v7

    invoke-static {p0, v7}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 662
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    sub-int/2addr v6, v4

    new-array v6, v6, [Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    iput-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    .line 664
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 665
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 666
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v4}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v7

    .line 667
    iget-object v9, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    iget-object v10, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->text:Ljava/lang/CharSequence;

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-interface {v10, v11, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v9, v6, p2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->makeTextLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v6

    .line 668
    new-instance v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)V

    .line 669
    iget-object v9, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->nextLinesLayouts:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;

    add-int/lit8 v10, v4, -0x3

    aput-object v7, v9, v10

    .line 670
    iput-object v6, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->staticLayout:Landroid/text/StaticLayout;

    .line 671
    iget-object v9, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v9

    iput v9, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalX:F

    .line 672
    iget-object v9, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v4}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalY:F

    .line 673
    iget v9, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreX:F

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    cmpg-float v9, v3, v9

    if-gez v9, :cond_2

    .line 674
    iput v5, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->collapsedY:F

    .line 675
    iput v3, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->collapsedX:F

    .line 676
    invoke-virtual {v6, v8}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v6

    add-float/2addr v6, v1

    add-float/2addr v3, v6

    goto :goto_3

    .line 678
    :cond_2
    iget v6, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalY:F

    iput v6, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->collapsedY:F

    .line 679
    iget v6, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->finalX:F

    iput v6, v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;->collapsedX:F

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    .line 684
    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    .line 685
    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->firstLayout:Landroid/text/StaticLayout;

    .line 686
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilersPool:Ljava/util/Stack;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilers:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 687
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 688
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilersPool:Ljava/util/Stack;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->spoilers:Ljava/util/List;

    invoke-static {p0, p2, v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;)V

    .line 691
    :cond_4
    iget p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    mul-int/2addr p2, v2

    iget v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textHeight:I

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 805
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView;->disableTouches:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 809
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 810
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreX:F

    iget v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreY:F

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v4

    iget v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreY:F

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 811
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 816
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v0, :cond_e

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_e

    .line 817
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textX:F

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 818
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textY:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 819
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v4}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v5

    .line 820
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    int-to-float v0, v0

    invoke-virtual {v6, v5, v0}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result v6

    .line 821
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v5}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v7

    cmpg-float v8, v7, v0

    if-gtz v8, :cond_a

    .line 825
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v5

    add-float/2addr v7, v5

    cmpl-float v0, v7, v0

    if-ltz v0, :cond_a

    if-ltz v4, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    if-gt v4, v0, :cond_a

    .line 826
    new-instance v0, Landroid/text/SpannableString;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->text:Ljava/lang/CharSequence;

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 827
    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v6, v6, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/CharacterStyle;

    if-eqz v4, :cond_5

    .line 828
    array-length v5, v4

    if-nez v5, :cond_6

    .line 829
    :cond_5
    const-class v4, Lorg/telegram/ui/Components/URLSpanMono;

    invoke-interface {v0, v6, v6, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/CharacterStyle;

    :cond_6
    if-eqz v4, :cond_8

    .line 831
    array-length v5, v4

    if-eqz v5, :cond_8

    .line 832
    aget-object v5, v4, v1

    .line 833
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_7

    .line 835
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 836
    iput-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 837
    new-instance v7, Lorg/telegram/ui/Components/LinkSpanDrawable;

    aget-object v4, v4, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-direct {v7, v4, v3, v8, v9}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FF)V

    iput-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    const v4, 0x6662a9e3

    .line 838
    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/LinkSpanDrawable;->setColor(I)V

    .line 839
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 840
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 841
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 842
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/LinkSpanDrawable;->obtainNewPath()Lorg/telegram/ui/Components/LinkPath;

    move-result-object v8

    .line 843
    iget-object v9, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v4, v10}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 844
    iget-object v9, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v4, v7, v8}, Landroid/text/StaticLayout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 846
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 847
    new-instance v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0, v4}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 852
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v8, v4

    .line 847
    invoke-virtual {p0, v7, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move v4, v2

    goto :goto_1

    :cond_7
    move v4, v1

    goto :goto_1

    :cond_8
    move v4, v1

    move-object v5, v3

    .line 855
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-nez v7, :cond_9

    if-nez v4, :cond_9

    .line 856
    const-class v7, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v0, v6, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v0, :cond_9

    .line 857
    array-length v6, v0

    if-eqz v6, :cond_9

    .line 858
    aget-object v6, v0, v1

    .line 859
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_b

    .line 861
    iput-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 862
    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move v4, v2

    goto :goto_2

    :cond_9
    move-object v6, v3

    goto :goto_2

    :cond_a
    move v4, v1

    move-object v5, v3

    move-object v6, v5

    .line 867
    :cond_b
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_10

    .line 868
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 869
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    if-ne v0, v5, :cond_c

    .line 870
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->onLinkClick(Landroid/text/style/CharacterStyle;Landroid/view/View;)V

    goto :goto_3

    .line 871
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v0, :cond_d

    if-ne v0, v6, :cond_d

    .line 872
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Stories/StoryCaptionView;->onEmojiClick(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    .line 874
    :cond_d
    :goto_3
    iput-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 875
    iput-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    goto :goto_4

    .line 878
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_f

    .line 879
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->clearPressedLinks()V

    .line 880
    iput-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->pressedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    :goto_4
    move v4, v2

    goto :goto_5

    :cond_f
    move v4, v1

    :cond_10
    :goto_5
    if-nez v4, :cond_11

    .line 884
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_11
    move v1, v2

    :cond_12
    :goto_6
    return v1
.end method

.method public setPressed(Z)V
    .locals 1

    .line 911
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 912
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    if-eqz v0, :cond_1

    .line 914
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v0, 0x0

    .line 620
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->isSpoilersRevealed:Z

    .line 622
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->text:Ljava/lang/CharSequence;

    .line 623
    iput v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->sizeCached:I

    .line 624
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 920
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 921
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 922
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    :cond_0
    return-void
.end method
