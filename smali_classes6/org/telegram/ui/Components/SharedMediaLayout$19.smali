.class Lorg/telegram/ui/Components/SharedMediaLayout$19;
.super Lorg/telegram/ui/Components/FlickerLoadingView;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field final synthetic val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V
    .locals 0

    .line 2959
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getColumnsCount()I
    .locals 3

    .line 2963
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2700(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    aget v0, v0, v1

    return v0
.end method

.method public getViewType()I
    .locals 6

    const/4 v0, 0x0

    .line 2968
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 2969
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 2971
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    return v3

    .line 2973
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v5, 0x6

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 2975
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-ne v0, v3, :cond_3

    return v2

    .line 2977
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    return v5

    .line 2979
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 2980
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4600(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getTabsCount()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 2981
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    :cond_5
    return v4

    .line 2984
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    goto :goto_0

    :cond_7
    return v4

    :cond_8
    :goto_0
    const/16 v0, 0x1b

    return v0

    :cond_9
    :goto_1
    return v5

    :cond_a
    :goto_2
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 2992
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6400(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6300(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2993
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$19;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6400(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/graphics/Paint;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2994
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
