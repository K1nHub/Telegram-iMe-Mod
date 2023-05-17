.class Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;
.super Ljava/lang/Object;
.source "ThemeSmallPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ThemeSmallPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeDrawable"
.end annotation


# instance fields
.field private final inBubblePaint:Landroid/graphics/Paint;

.field private final outBubblePaintSecond:Landroid/graphics/Paint;

.field previewDrawable:Landroid/graphics/drawable/Drawable;

.field private final strokePaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)V
    .locals 2

    .line 562
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 558
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->outBubblePaintSecond:Landroid/graphics/Paint;

    .line 559
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->inBubblePaint:Landroid/graphics/Paint;

    .line 563
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x2

    .line 564
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;)Landroid/graphics/Paint;
    .locals 0

    .line 555
    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->inBubblePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;)Landroid/graphics/Paint;
    .locals 0

    .line 555
    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->outBubblePaintSecond:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;)Landroid/graphics/Paint;
    .locals 0

    .line 555
    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->strokePaint:Landroid/graphics/Paint;

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;F)V
    .locals 12

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->isSelected:Z

    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v3, 0x4

    const/high16 v4, 0x3f000000    # 0.5f

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$900(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 604
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->themeIndex:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getThemeItem(I)Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    move-result-object v0

    .line 605
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v5, v1, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean v5, v5, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-eqz v5, :cond_1

    .line 606
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$1000(Lorg/telegram/ui/Components/ThemeSmallPreviewView;I)I

    move-result v0

    goto :goto_0

    .line 607
    :cond_1
    iget v0, v0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->outLineColor:I

    .line 608
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 609
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->strokePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$000(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v1

    mul-float/2addr v1, p2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 610
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    mul-float/2addr v0, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$000(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    .line 611
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    iget-object v6, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v0

    invoke-virtual {v1, v0, v0, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 612
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$1100(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v1

    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$1100(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 614
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->outBubblePaintSecond:Landroid/graphics/Paint;

    mul-float/2addr p2, v2

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->inBubblePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 616
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$500(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$500(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$500(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v5

    sub-float/2addr v2, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$500(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p2, v0, v1, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 618
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v0, p2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz v0, :cond_9

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-eqz v1, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-nez v0, :cond_3

    goto/16 :goto_4

    .line 626
    :cond_3
    invoke-static {p2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$1300(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 627
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v0, p2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 628
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p2, v4

    .line 629
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->icon:Landroid/graphics/Bitmap;

    const/16 v1, 0x15

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 632
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$500(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result p2

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    .line 633
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$500(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v1

    const/16 v2, 0x16

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 634
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$1300(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)I

    move-result v2

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3f266666    # 0.65f

    if-nez v2, :cond_5

    .line 635
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v7, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$1400(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v7

    add-float/2addr v7, v1

    iget-object v8, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$1500(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v8

    add-float/2addr v8, p2

    invoke-virtual {v2, v1, p2, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 637
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    const v1, 0x3df5c28f    # 0.12f

    mul-float/2addr p2, v1

    .line 638
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    sub-float/2addr v1, v2

    .line 639
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v7, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    sub-float/2addr v2, v7

    .line 640
    iget-object v7, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3ea3d70a    # 0.32f

    mul-float/2addr v7, v8

    .line 641
    iget-object v8, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8, v1, p2, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 644
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->outBubblePaintSecond:Landroid/graphics/Paint;

    .line 645
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$1300(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)I

    move-result v2

    if-nez v2, :cond_6

    .line 646
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v7, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v7, v4

    iget-object v8, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    mul-float/2addr v8, v4

    invoke-virtual {p1, v2, v7, v8, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 648
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v7, v2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->messageDrawableOut:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget-object v8, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v9}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v7, v2, v8, v9, v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 649
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v7, v2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->messageDrawableOut:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setRoundRadius(I)V

    .line 650
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->messageDrawableOut:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v2, p1, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 653
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$1300(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)I

    move-result v1

    if-nez v1, :cond_7

    .line 654
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$500(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v1

    const/4 v2, 0x5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 655
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$1500(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    add-float/2addr p2, v2

    .line 656
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$1400(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v5

    add-float/2addr v5, v1

    iget-object v6, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$1500(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v6

    add-float/2addr v6, p2

    invoke-virtual {v2, v1, p2, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    .line 658
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr p2, v1

    .line 659
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    .line 660
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    .line 661
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f0ccccd    # 0.55f

    mul-float/2addr v5, v6

    .line 662
    iget-object v6, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6, v1, p2, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 665
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$1300(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)I

    move-result p2

    if-nez p2, :cond_8

    .line 666
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v0, v4

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, v4

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->inBubblePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 668
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v1, p2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->messageDrawableIn:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-static {p2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    float-to-int p2, p2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr p2, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v5, v0

    invoke-virtual {v1, p2, v2, v3, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 669
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v0, p2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->messageDrawableIn:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-static {p2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    mul-float/2addr p2, v4

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setRoundRadius(I)V

    .line 670
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object p2, p2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->messageDrawableIn:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->inBubblePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 619
    :cond_9
    :goto_4
    invoke-static {p2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$600(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$600(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$800(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 620
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 621
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$1200(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/text/StaticLayout;

    move-result-object p2

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v4

    const/16 v1, 0x12

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 623
    invoke-virtual {p2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 624
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    :goto_5
    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;F)V
    .locals 6

    .line 568
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->previewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 569
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$400(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 571
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->previewDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 572
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 573
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->previewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float v3, v0, v1

    .line 574
    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 575
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v0

    float-to-int v0, v3

    .line 576
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    .line 577
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->previewDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v0, v1

    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-virtual {v3, v1, v2, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 579
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v0

    float-to-int v0, v3

    .line 580
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 581
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->previewDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    add-int/2addr v0, v1

    invoke-virtual {v3, v2, v1, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 584
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 586
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->previewDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 587
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->previewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 588
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->previewDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v1, :cond_2

    instance-of v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isOneColor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 589
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->outlineBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 590
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->outlineBackgroundPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    mul-float/2addr v2, p2

    float-to-int p2, v2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 591
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$500(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result p2

    .line 592
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p2

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p2

    invoke-virtual {v1, p2, p2, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 593
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$600(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result p2

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$600(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->outlineBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 594
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object p2, p2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->outlineBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 596
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 598
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$700(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$600(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$600(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->access$800(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method
