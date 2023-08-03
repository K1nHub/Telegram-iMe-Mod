.class Lorg/telegram/ui/ProfileActivity$30;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    .line 4995
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 5003
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$17900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4300(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x40ffffff    # 7.9999995f

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_actionBarSelectorBlue:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 5004
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->clearForeground()V

    .line 5005
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ProfileActivity;->access$8402(Lorg/telegram/ui/ProfileActivity;Z)Z

    .line 5006
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$30;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ProfileActivity;->access$3800(Lorg/telegram/ui/ProfileActivity;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
