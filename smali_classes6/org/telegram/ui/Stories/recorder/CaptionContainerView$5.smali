.class Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CaptionContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateShowKeyboard(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Z)V
    .locals 0

    .line 508
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 511
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;->val$show:Z

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 512
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 513
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p1, :cond_1

    .line 514
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 517
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->periodButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
