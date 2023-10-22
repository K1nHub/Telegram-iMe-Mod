.class Lorg/telegram/ui/ChatActivity$71;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->hideInfoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$topViewFinal:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)V
    .locals 0

    .line 11263
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$71;->val$topViewFinal:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 11266
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$30602(Lorg/telegram/ui/ChatActivity;F)F

    .line 11267
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$33000(Lorg/telegram/ui/ChatActivity;)Landroid/animation/Animator;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 11268
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->val$topViewFinal:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 11270
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$71;->val$topViewFinal:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 11272
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$33102(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatActionCell;)Lorg/telegram/ui/Cells/ChatActionCell;

    .line 11273
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$33002(Lorg/telegram/ui/ChatActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    :cond_1
    return-void
.end method
