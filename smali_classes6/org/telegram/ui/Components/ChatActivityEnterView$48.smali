.class Lorg/telegram/ui/Components/ChatActivityEnterView$48;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->hideRecordedAudioPanel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 6744
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 6747
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 6748
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6750
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    if-eqz p1, :cond_1

    .line 6751
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6753
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6754
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6756
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6757
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6759
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6760
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6762
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5802(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 6763
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordingStateChanged()V

    .line 6764
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$16700(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 6765
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 6766
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$48;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setSendButtonInvisible()V

    :cond_5
    return-void
.end method
