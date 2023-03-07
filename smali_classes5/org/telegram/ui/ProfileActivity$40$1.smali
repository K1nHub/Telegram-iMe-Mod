.class Lorg/telegram/ui/ProfileActivity$40$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$40;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$40;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$40;)V
    .locals 0

    .line 5944
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$40$1;->this$1:Lorg/telegram/ui/ProfileActivity$40;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 5947
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40$1;->this$1:Lorg/telegram/ui/ProfileActivity$40;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->access$19702(Lorg/telegram/ui/ProfileActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method
