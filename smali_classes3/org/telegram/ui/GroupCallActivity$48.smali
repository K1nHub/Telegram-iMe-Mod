.class Lorg/telegram/ui/GroupCallActivity$48;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GroupCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;->updateLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;Z)V
    .locals 0

    .line 6132
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$48;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/GroupCallActivity$48;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 6135
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$48;->this$0:Lorg/telegram/ui/GroupCallActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/GroupCallActivity;->subtitleYAnimator:Landroid/animation/ObjectAnimator;

    .line 6136
    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$7100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$48;->val$show:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
