.class Lorg/telegram/ui/DialogsActivity$67;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->setFloatingProgressVisible(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Z)V
    .locals 0

    .line 13331
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$67;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$67;->val$visible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 13340
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$67;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$41600(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 13341
    iget-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$67;->val$visible:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 13342
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$67;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$25500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13343
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$67;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$25500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 13346
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$67;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$25500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13347
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$67;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$41500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13350
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$67;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$41602(Lorg/telegram/ui/DialogsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 13334
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$67;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$41500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13335
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$67;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$25500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
