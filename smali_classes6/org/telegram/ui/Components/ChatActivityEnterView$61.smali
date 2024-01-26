.class Lorg/telegram/ui/Components/ChatActivityEnterView$61;
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

    .line 8563
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->val$finalParent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->val$finalOldLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 8566
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->val$finalParent:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 8567
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 8568
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->val$finalParent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->val$finalOldLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8570
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 8571
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 8572
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 8573
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 8574
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 8575
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 8576
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 8578
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v0, 0x0

    iput v0, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButtonScale:F

    iput v0, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButtonAlpha:F

    .line 8579
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4100(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 8581
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/BotCommandsMenuView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8582
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/BotCommandsMenuView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 8583
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/BotCommandsMenuView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 8584
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/BotCommandsMenuView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 8587
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->controlsView:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->onceVisible:Z

    if-eqz v0, :cond_2

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-nez p1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "voiceoncehint"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_2

    .line 8588
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$61;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->controlsView:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->showHintView()V

    :cond_2
    return-void
.end method
