.class Lorg/telegram/ui/Components/AvatarConstructorFragment$6;
.super Landroid/widget/FrameLayout;
.source "AvatarConstructorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AvatarConstructorFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;Landroid/content/Context;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$6;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 375
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$6;->path:Landroid/graphics/Path;

    .line 376
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$6;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 380
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$6;->paint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->applyDefaultShadow(Landroid/graphics/Paint;)V

    .line 381
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$6;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$6;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    const-string v2, "actionBarDefaultSubmenuBackground"

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$6;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 384
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 385
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    .line 384
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 387
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$6;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 388
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$6;->path:Landroid/graphics/Path;

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$6;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$6;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 390
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
