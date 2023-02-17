.class Lorg/telegram/ui/Components/FragmentContextView$6;
.super Landroid/widget/TextView;
.source "FragmentContextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FragmentContextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FragmentContextView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$6;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 445
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x1

    .line 447
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 448
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v0, v4

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 449
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$6;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$1700(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2, p0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/view/View;)V

    .line 450
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$6;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->access$1700(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->getProgress()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$6;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->access$1700(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatEnabled:Z

    if-nez p1, :cond_0

    .line 451
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 457
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 459
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$6;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->access$1700(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setParentWidth(I)V

    return-void
.end method
