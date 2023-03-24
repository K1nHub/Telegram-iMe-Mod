.class Lorg/telegram/ui/Components/SharedMediaLayout$8;
.super Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V
    .locals 0

    .line 1868
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setTranslationX(F)V
    .locals 8

    .line 1871
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1872
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1873
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-ne p1, p0, :cond_e

    .line 1874
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 1875
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    .line 1876
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 1877
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4000(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v1

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v1, v4, :cond_0

    .line 1878
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    sub-float v4, v5, p1

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0

    .line 1879
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4000(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1880
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1884
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    aget-object v1, v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    if-nez v1, :cond_2

    move v1, p1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1887
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-nez v4, :cond_3

    sub-float v1, v5, p1

    .line 1890
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1891
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v6, v4, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    cmpl-float v1, v1, v2

    const/4 v7, 0x4

    if-eqz v1, :cond_5

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v7

    :goto_3
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1895
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    aget-object v1, v1, v3

    const/4 v4, 0x7

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 1897
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4100(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, p1

    goto :goto_4

    :cond_6
    move v1, p1

    move v3, v2

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_4
    move v3, v1

    .line 1901
    :goto_5
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v6

    if-ne v6, v4, :cond_8

    sub-float v1, v5, p1

    .line 1903
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4100(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p1

    if-eqz p1, :cond_8

    move v3, v1

    .line 1907
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1400(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1908
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1400(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;

    move-result-object p1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    :cond_9
    move v1, v0

    goto :goto_7

    :cond_a
    :goto_6
    move v1, v7

    :goto_7
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1909
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4200(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1910
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4200(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;

    move-result-object p1

    cmpl-float v1, v3, v2

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    move v0, v7

    :cond_c
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 1913
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1918
    :cond_e
    :goto_8
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$8;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->invalidateBlur()V

    return-void
.end method
