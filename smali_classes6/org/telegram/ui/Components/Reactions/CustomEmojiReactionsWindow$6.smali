.class Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;
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

    .line 412
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;->val$enter:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 416
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$400(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    .line 417
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$500(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    .line 418
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;->val$enter:Z

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$600(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)V

    .line 419
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 420
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 422
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;->val$enter:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    iput v3, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 424
    iput-boolean v3, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionFinished:Z

    .line 425
    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    .line 427
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v0, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCustomEmojiEnterProgress(F)V

    .line 428
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;->val$enter:Z

    if-nez p1, :cond_3

    .line 429
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setSkipDraw(Z)V

    .line 430
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->removeView()V

    .line 431
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->gc()V

    .line 432
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCustomEmojiReactionsBackground(Z)V

    :cond_3
    return-void
.end method
