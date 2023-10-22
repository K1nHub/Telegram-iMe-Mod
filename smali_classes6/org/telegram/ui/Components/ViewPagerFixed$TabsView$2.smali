.class Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$2;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "ViewPagerFixed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;-><init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;Landroid/content/Context;)V
    .locals 0

    .line 1353
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$2;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1357
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1358
    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$2;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$4000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x3e99999a    # 0.3f

    .line 1359
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 1360
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    const/4 p2, 0x0

    .line 1361
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 1363
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 1364
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 1365
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method protected canHighlightChildAt(Landroid/view/View;FF)Z
    .locals 3

    .line 1377
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$2;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;

    const/4 v1, 0x6

    .line 1379
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 1380
    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->access$4100(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    sub-float/2addr v2, v1

    cmpg-float v2, v2, p2

    if-gez v2, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->access$4100(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1384
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->canHighlightChildAt(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public setAlpha(F)V
    .locals 0

    .line 1371
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1372
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$2;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
