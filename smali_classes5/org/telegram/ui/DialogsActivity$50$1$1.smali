.class Lorg/telegram/ui/DialogsActivity$50$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$50$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/DialogsActivity$50$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$50$1;)V
    .locals 0

    .line 8288
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$50$1$1;->this$2:Lorg/telegram/ui/DialogsActivity$50$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 8291
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 8292
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$50$1$1;->this$2:Lorg/telegram/ui/DialogsActivity$50$1;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$50$1;->this$1:Lorg/telegram/ui/DialogsActivity$50;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$50;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$36900(Lorg/telegram/ui/DialogsActivity;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0xc8

    .line 8293
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 8294
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
