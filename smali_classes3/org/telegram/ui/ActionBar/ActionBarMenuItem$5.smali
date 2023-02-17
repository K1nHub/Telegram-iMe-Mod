.class Lorg/telegram/ui/ActionBar/ActionBarMenuItem$5;
.super Ljava/lang/Object;
.source "ActionBarMenuItem.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->onFiltersChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field final synthetic val$selectedAccount:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V
    .locals 0

    .line 1025
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iput p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$5;->val$selectedAccount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 1

    .line 1038
    iget p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$5;->val$selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$200(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    .line 1033
    iget p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$5;->val$selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$200(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 3

    .line 1028
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$5;->val$selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$200(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$202(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)I

    return-void
.end method
