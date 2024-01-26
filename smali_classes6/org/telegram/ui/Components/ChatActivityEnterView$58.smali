.class Lorg/telegram/ui/Components/ChatActivityEnterView$58;
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

.field final synthetic val$fromPause:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V
    .locals 0

    .line 8252
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->val$fromPause:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 8255
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8256
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17602(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 8258
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordingStateChanged()V

    .line 8259
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 8260
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 8262
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->controlsView:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    if-eqz p1, :cond_1

    .line 8263
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->showTooltipIfNeed()V

    .line 8265
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz p1, :cond_2

    .line 8266
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setAlpha(F)V

    .line 8268
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->val$fromPause:Z

    if-eqz p1, :cond_5

    .line 8269
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    const/16 v0, 0x8

    if-eqz p1, :cond_3

    .line 8270
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8272
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    .line 8273
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8275
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordingStateChanged()V

    :cond_5
    return-void
.end method
