.class public Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;
.super Ljava/lang/Object;
.source "SelfStoriesPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/SelfStoriesPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageHolder"
.end annotation


# instance fields
.field layout:Landroid/text/StaticLayout;

.field paint:Landroid/text/TextPaint;

.field position:I

.field receiver:Lorg/telegram/messenger/ImageReceiver;

.field storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

.field final synthetic this$0:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/SelfStoriesPreviewView;)V
    .locals 1

    .line 407
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->this$0:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    .line 404
    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->paint:Landroid/text/TextPaint;

    .line 408
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 409
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 410
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->paint:Landroid/text/TextPaint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 411
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->paint:Landroid/text/TextPaint;

    const/16 v0, 0xd

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private updateLayout()V
    .locals 22

    move-object/from16 v0, p0

    .line 428
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 429
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    iget-object v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v2, :cond_0

    .line 430
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->this$0:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->access$200(Lorg/telegram/ui/Stories/SelfStoriesPreviewView;Landroid/text/SpannableStringBuilder;Lorg/telegram/tgnet/tl/TL_stories$StoryViews;Z)V

    .line 432
    :cond_0
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 433
    iput-object v1, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->layout:Landroid/text/StaticLayout;

    goto :goto_0

    .line 435
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->paint:Landroid/text/TextPaint;

    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->this$0:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->access$300(Lorg/telegram/ui/Stories/SelfStoriesPreviewView;)F

    move-result v3

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v3, v11

    float-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const/4 v10, 0x1

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->layout:Landroid/text/StaticLayout;

    .line 436
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 437
    new-instance v12, Landroid/text/SpannableStringBuilder;

    const-string v1, ""

    invoke-direct {v12, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v1, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->this$0:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    iget-object v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    invoke-static {v1, v12, v3, v2}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->access$200(Lorg/telegram/ui/Stories/SelfStoriesPreviewView;Landroid/text/SpannableStringBuilder;Lorg/telegram/tgnet/tl/TL_stories$StoryViews;Z)V

    .line 439
    iget-object v13, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->paint:Landroid/text/TextPaint;

    iget-object v1, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->this$0:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->access$300(Lorg/telegram/ui/Stories/SelfStoriesPreviewView;)F

    move-result v1

    add-float/2addr v1, v11

    float-to-int v14, v1

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x7fffffff

    const/16 v21, 0x2

    invoke-static/range {v12 .. v21}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->layout:Landroid/text/StaticLayout;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FFIIII)V
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    int-to-float p4, p4

    int-to-float p5, p5

    int-to-float p6, p6

    int-to-float p7, p7

    invoke-virtual {v0, p4, p5, p6, p7}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 450
    iget-object p4, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p4, p2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 451
    iget-object p4, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p4, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 452
    iget-object p4, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-virtual {p4, p5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 453
    iget-object p4, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->layout:Landroid/text/StaticLayout;

    if-eqz p4, :cond_0

    .line 454
    iget-object p4, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->paint:Landroid/text/TextPaint;

    const/high16 p5, 0x437f0000    # 255.0f

    mul-float/2addr p2, p5

    float-to-int p2, p2

    invoke-virtual {p4, p2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 455
    iget-object p4, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->this$0:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p4, p2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 456
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->this$0:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object p4, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    .line 457
    invoke-virtual {p4}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result p4

    float-to-int p4, p4

    iget-object p5, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p5}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result p5

    const/16 p6, 0x18

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p6, p3

    sub-float/2addr p5, p6

    float-to-int p5, p5

    iget-object p6, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p6}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result p6

    float-to-int p6, p6

    iget-object p7, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p7}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result p7

    float-to-int p7, p7

    add-int/lit8 p7, p7, 0x2

    .line 456
    invoke-virtual {p2, p4, p5, p6, p7}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 458
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->this$0:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 459
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 460
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result p2

    iget-object p4, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p4}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result p4

    const/16 p5, 0x8

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p6, p3

    sub-float/2addr p4, p6

    invoke-virtual {p1, p3, p3, p2, p4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 461
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result p2

    iget-object p4, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->this$0:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    invoke-static {p4}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->access$300(Lorg/telegram/ui/Stories/SelfStoriesPreviewView;)F

    move-result p4

    const/high16 p6, 0x40000000    # 2.0f

    div-float/2addr p4, p6

    sub-float/2addr p2, p4

    iget-object p4, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p4}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result p4

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p5, p3

    sub-float/2addr p4, p5

    iget-object p3, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/text/StaticLayout;->getHeight()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p4, p3

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 462
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 463
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method onBind(I)V
    .locals 1

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->this$0:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    .line 416
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->this$0:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->access$100(Lorg/telegram/ui/Stories/SelfStoriesPreviewView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 417
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 419
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    iget-object v0, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v0, :cond_1

    .line 420
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    goto :goto_0

    .line 422
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoriesUtilities;->setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    .line 424
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->updateLayout()V

    return-void
.end method

.method onDetach()V
    .locals 1

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method public update()V
    .locals 0

    .line 468
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->updateLayout()V

    return-void
.end method
