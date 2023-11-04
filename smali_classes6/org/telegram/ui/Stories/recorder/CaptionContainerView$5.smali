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

    .line 602
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 605
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;->val$show:Z

    if-nez p1, :cond_0

    .line 606
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->applyButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 607
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p1, :cond_0

    .line 608
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 611
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;->val$show:Z

    if-eqz p1, :cond_1

    .line 612
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    .line 614
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$5;->val$show:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->afterUpdateShownKeyboard(Z)V

    return-void
.end method
