.class Lorg/telegram/ui/DialogsActivity$61;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->showDoneItem(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Z)V
    .locals 0

    .line 12289
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$61;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$61;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 12292
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$61;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$41202(Lorg/telegram/ui/DialogsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 12293
    iget-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$61;->val$show:Z

    if-eqz p1, :cond_3

    .line 12295
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$61;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$22200(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 12296
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$61;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$22100(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 12298
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$61;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$21900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 12299
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$61;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$21900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 12301
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$61;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$22400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$61;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$22500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12302
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$61;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$22400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 12304
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$61;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$35100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$61;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$41300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12305
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$61;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$35100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 12307
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$61;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$22600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$61;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$22700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12308
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$61;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$22600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 12311
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$61;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$9700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 12312
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$61;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$9700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method
