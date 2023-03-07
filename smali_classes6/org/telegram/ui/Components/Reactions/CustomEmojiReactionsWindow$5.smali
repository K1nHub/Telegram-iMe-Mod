.class Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CustomEmojiReactionsWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->createTransition(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

.field final synthetic val$enter:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)V
    .locals 0

    .line 298
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;->val$enter:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 301
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$500(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    .line 302
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;->val$enter:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput v3, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionFinished:Z

    .line 305
    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->resetBackgroundBitmaps()V

    .line 306
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->onCustomEmojiWindowOpened()V

    .line 307
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 309
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v0, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCustomEmojiEnterProgress(F)V

    .line 310
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;->val$enter:Z

    if-eqz p1, :cond_2

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$600(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)V

    .line 313
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;->val$enter:Z

    if-nez p1, :cond_3

    .line 314
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setSkipDraw(Z)V

    .line 316
    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;->val$enter:Z

    if-nez p1, :cond_4

    .line 317
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->removeView()V

    :cond_4
    return-void
.end method
