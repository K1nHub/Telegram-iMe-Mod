.class Lorg/telegram/ui/ChatActivity$108;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->updatePinnedMessageView(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$animateButton:Z

.field final synthetic val$animateImage:Lorg/telegram/ui/Components/BackupImageView;

.field final synthetic val$animateName:Z

.field final synthetic val$animateText:Z

.field final synthetic val$buttonTextView:Lorg/telegram/ui/ChatActivity$PinnedMessageButton;

.field final synthetic val$messageTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field final synthetic val$nameTextView:Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;ZZLorg/telegram/ui/Components/BackupImageView;Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;Lorg/telegram/ui/ActionBar/SimpleTextView;ZLorg/telegram/ui/ChatActivity$PinnedMessageButton;)V
    .locals 0

    .line 24770
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$108;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$108;->val$animateName:Z

    iput-boolean p3, p0, Lorg/telegram/ui/ChatActivity$108;->val$animateText:Z

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$108;->val$animateImage:Lorg/telegram/ui/Components/BackupImageView;

    iput-object p5, p0, Lorg/telegram/ui/ChatActivity$108;->val$nameTextView:Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;

    iput-object p6, p0, Lorg/telegram/ui/ChatActivity$108;->val$messageTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iput-boolean p7, p0, Lorg/telegram/ui/ChatActivity$108;->val$animateButton:Z

    iput-object p8, p0, Lorg/telegram/ui/ChatActivity$108;->val$buttonTextView:Lorg/telegram/ui/ChatActivity$PinnedMessageButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 24774
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$108;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$31600(Lorg/telegram/ui/ChatActivity;)[Landroid/animation/AnimatorSet;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 24775
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$108;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46200(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    aget-object p1, p1, v1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 24780
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$108;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$31600(Lorg/telegram/ui/ChatActivity;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 24781
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$108;->val$animateName:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$108;->val$animateText:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$108;->val$animateImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 24819
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$108;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$31600(Lorg/telegram/ui/ChatActivity;)[Landroid/animation/AnimatorSet;

    move-result-object p1

    const/4 v0, 0x0

    aput-object v0, p1, v1

    goto/16 :goto_1

    .line 24782
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$108;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$31600(Lorg/telegram/ui/ChatActivity;)[Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v0, p1, v1

    .line 24783
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$108;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$31600(Lorg/telegram/ui/ChatActivity;)[Landroid/animation/AnimatorSet;

    move-result-object p1

    aget-object p1, p1, v1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 24784
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$108;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$31600(Lorg/telegram/ui/ChatActivity;)[Landroid/animation/AnimatorSet;

    move-result-object p1

    aget-object p1, p1, v1

    const-wide/16 v2, 0x168

    invoke-virtual {p1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 24785
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24786
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$108;->val$animateName:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 24787
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$108;->val$nameTextView:Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v1, [F

    aput v2, v5, v3

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24789
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$108;->val$animateText:Z

    if-eqz v0, :cond_3

    .line 24790
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$108;->val$messageTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v1, [F

    aput v2, v5, v3

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24792
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$108;->val$animateButton:Z

    if-eqz v0, :cond_4

    .line 24793
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$108;->val$buttonTextView:Lorg/telegram/ui/ChatActivity$PinnedMessageButton;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v1, [F

    aput v2, v5, v3

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24795
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$108;->val$animateImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_5

    .line 24796
    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v1, [F

    aput v2, v5, v3

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24798
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$108;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$31600(Lorg/telegram/ui/ChatActivity;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    aget-object v0, v0, v1

    new-instance v2, Lorg/telegram/ui/ChatActivity$108$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$108$1;-><init>(Lorg/telegram/ui/ChatActivity$108;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24816
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$108;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$31600(Lorg/telegram/ui/ChatActivity;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 24817
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$108;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$31600(Lorg/telegram/ui/ChatActivity;)[Landroid/animation/AnimatorSet;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    :goto_1
    return-void
.end method
