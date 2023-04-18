.class Lorg/telegram/ui/Components/EmojiView$16;
.super Landroid/widget/FrameLayout;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 0

    .line 2574
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$16;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 2578
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2579
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$16;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$10002(Lorg/telegram/ui/Components/EmojiView;Z)Z

    .line 2580
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$16;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$800(Lorg/telegram/ui/Components/EmojiView;)V

    .line 2581
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$16;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$4500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2582
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$16;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$4500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->checkVisibility()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 2588
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2589
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$16;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$10002(Lorg/telegram/ui/Components/EmojiView;Z)Z

    .line 2590
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$16;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$800(Lorg/telegram/ui/Components/EmojiView;)V

    .line 2591
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$16;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$4500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2592
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$16;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$4500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->checkVisibility()V

    :cond_0
    return-void
.end method
