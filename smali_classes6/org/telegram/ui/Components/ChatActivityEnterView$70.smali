.class Lorg/telegram/ui/Components/ChatActivityEnterView$70;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$origHeight:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V
    .locals 0

    .line 10410
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$70;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$70;->val$origHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 10413
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$70;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16202(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 10414
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$70;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8902(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 10415
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$70;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10416
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$70;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$70;->val$origHeight:I

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10417
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$70;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 10419
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$70;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10420
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$70;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 10421
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$70;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 10422
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$70;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 10424
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$70;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$70;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10425
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$70;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10100(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    invoke-static {p1, v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9100(Lorg/telegram/ui/Components/ChatActivityEnterView;II)V

    .line 10427
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$70;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10428
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$70;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 10429
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$70;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16302(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 10431
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$70;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$70;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12500(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    return-void
.end method
