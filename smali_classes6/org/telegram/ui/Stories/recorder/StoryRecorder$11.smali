.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StoryRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateRecording(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

.field final synthetic val$recording:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    .line 2524
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$11;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$11;->val$recording:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2527
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$11;->val$recording:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 2528
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$11;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2530
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$11;->val$recording:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$11;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 2531
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$11;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$9100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method
