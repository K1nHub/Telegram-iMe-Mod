.class Lorg/telegram/ui/Components/ChatThemeBottomSheet$14;
.super Landroid/widget/FrameLayout;
.source "ChatThemeBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatThemeBottomSheet;->openGalleryForBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 1458
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$14;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1460
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$14;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1469
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1470
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$14;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$14;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$2700(Lorg/telegram/ui/Components/ChatThemeBottomSheet;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1471
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$14;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 p2, 0x30

    .line 1464
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
