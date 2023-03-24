.class Lorg/telegram/ui/ChatActivity$74;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->setPagedownLoading(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$loading:Z

.field final synthetic val$startedLoading:[Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Z[Z)V
    .locals 0

    .line 11700
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$74;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$74;->val$loading:Z

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$74;->val$startedLoading:[Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 11703
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$74;->val$loading:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 11704
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$74;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$33900(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11705
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$74;->val$startedLoading:[Z

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    if-nez p1, :cond_1

    .line 11706
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$74;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$34000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/CircularProgressDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CircularProgressDrawable;->reset()V

    .line 11707
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$74;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$34100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 11710
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$74;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$34100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
