.class Lorg/telegram/ui/Components/EmojiView$22;
.super Landroid/widget/FrameLayout;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 0

    .line 2883
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2890
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$22;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 2893
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->getProgressToSearchOpened()F

    move-result v0

    const/16 v1, 0x32

    .line 2894
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    .line 2895
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    return-void

    .line 2898
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    cmpl-float v2, v1, v0

    if-eqz v2, :cond_1

    .line 2900
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 2903
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2904
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$22;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const-string v2, "windowBackgroundWhite"

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 2906
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$22;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const-string v2, "chat_emojiPanelBackground"

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2907
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    const/16 v0, 0x24

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getExpandedOffset()F

    move-result v1

    add-float v6, v0, v1

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$22;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2908
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2909
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->drawOverlays(Landroid/graphics/Canvas;)V

    .line 2910
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 2915
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2916
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$800(Lorg/telegram/ui/Components/EmojiView;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 2887
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
