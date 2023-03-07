.class Lorg/telegram/ui/Components/ChatActivityEnterView$50;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$finalOldLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$finalParent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 7318
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->val$finalParent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->val$finalOldLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 7321
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->val$finalParent:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 7322
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 7323
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->val$finalParent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->val$finalOldLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7325
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 7326
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 7327
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 7328
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 7329
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 7330
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 7331
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 7333
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 7334
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 7335
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 7336
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/BotCommandsMenuView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7337
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/BotCommandsMenuView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 7338
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/BotCommandsMenuView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 7339
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$50;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/BotCommandsMenuView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    return-void
.end method
