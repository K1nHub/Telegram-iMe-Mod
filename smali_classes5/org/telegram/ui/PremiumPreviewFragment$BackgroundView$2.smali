.class Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$2;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "PremiumPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;-><init>(Lorg/telegram/ui/PremiumPreviewFragment;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field paint:Landroid/graphics/Paint;

.field final synthetic this$1:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;Landroid/content/Context;Lorg/telegram/ui/PremiumPreviewFragment;)V
    .locals 0

    .line 1397
    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$2;->this$1:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 1398
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$2;->paint:Landroid/graphics/Paint;

    .line 1401
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1406
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 v1, 0xc

    .line 1407
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$2;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1409
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1414
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->onSizeChanged(IIII)V

    .line 1415
    iget-object p3, p0, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView$2;->this$1:Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;

    invoke-static {p3, p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;->access$2400(Lorg/telegram/ui/PremiumPreviewFragment$BackgroundView;II)V

    return-void
.end method
