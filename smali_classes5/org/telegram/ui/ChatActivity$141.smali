.class Lorg/telegram/ui/ChatActivity$141;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->showActionBarSearchTags(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Z)V
    .locals 0

    .line 34228
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$141;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$141;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 34231
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$141;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$141;->val$show:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$52902(Lorg/telegram/ui/ChatActivity;F)F

    .line 34232
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$141;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, p1, Lorg/telegram/ui/ChatActivity;->actionBarSearchTags:Lorg/telegram/ui/Components/SearchTagsList;

    if-eqz v0, :cond_1

    .line 34233
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$53000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackgroundColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BlurredFrameLayout;->setBackgroundColor(I)V

    .line 34234
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$141;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, p1, Lorg/telegram/ui/ChatActivity;->actionBarSearchTags:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$52900(Lorg/telegram/ui/ChatActivity;)F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SearchTagsList;->setShown(F)V

    .line 34235
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$141;->val$show:Z

    if-nez p1, :cond_1

    .line 34236
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$141;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->actionBarSearchTags:Lorg/telegram/ui/Components/SearchTagsList;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 34240
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$141;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$53102(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 34241
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$141;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$38400(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method
