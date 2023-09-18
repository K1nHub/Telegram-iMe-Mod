.class Lorg/telegram/ui/Components/ViewPagerFixed$4;
.super Ljava/lang/Object;
.source "ViewPagerFixed.java"

# interfaces
.implements Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ViewPagerFixed;->createTabsView(ZILorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ViewPagerFixed;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canPerformActions()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->access$000(Lorg/telegram/ui/Components/ViewPagerFixed;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->access$600(Lorg/telegram/ui/Components/ViewPagerFixed;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invalidateBlur()V
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->invalidateBlur()V

    return-void
.end method

.method public onPageScrolled(F)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 269
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v0, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    .line 270
    invoke-static {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->access$100(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    .line 271
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v0, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-static {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->access$200(Lorg/telegram/ui/Components/ViewPagerFixed;)[I

    move-result-object p1

    aget p1, p1, v3

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v1, v1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, v1, v3

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v0, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 273
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object p1, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 274
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object p1, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v0, 0x0

    aput-object v0, p1, v3

    :cond_0
    return-void

    .line 278
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v4, v1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v3

    if-nez v4, :cond_2

    return-void

    .line 281
    :cond_2
    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->access$400(Lorg/telegram/ui/Components/ViewPagerFixed;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 282
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v1, v1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v1, v3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, p1

    mul-float/2addr v1, v0

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v0, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, v0, v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 285
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v1, v1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v1, v3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v0, p1

    mul-float/2addr v1, v0

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v0, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, v0, v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void
.end method

.method public onPageSelected(IZ)V
    .locals 3

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->access$402(Lorg/telegram/ui/Components/ViewPagerFixed;Z)Z

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iput p1, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    const/4 v1, 0x1

    .line 253
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->access$500(Lorg/telegram/ui/Components/ViewPagerFixed;I)V

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabPageSelected(I)V

    .line 256
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object p1, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v0, 0x0

    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 257
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object p1, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    .line 259
    aget-object p1, p1, v1

    int-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 261
    :cond_1
    aget-object p1, p1, v1

    neg-int p2, v0

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSamePageSelected()V
    .locals 0

    return-void
.end method
