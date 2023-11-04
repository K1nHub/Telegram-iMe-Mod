.class Lorg/telegram/ui/ChatActivity$38$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$38;->checkAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$38;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$38;)V
    .locals 0

    .line 8604
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$38$1;->this$1:Lorg/telegram/ui/ChatActivity$38;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 8607
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$38$1;->this$1:Lorg/telegram/ui/ChatActivity$38;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity$38;->access$25702(Lorg/telegram/ui/ChatActivity$38;I)I

    .line 8608
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$38$1;->this$1:Lorg/telegram/ui/ChatActivity$38;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity$38;->access$25800(Lorg/telegram/ui/ChatActivity$38;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$38$1;->this$1:Lorg/telegram/ui/ChatActivity$38;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity$38;->access$25900(Lorg/telegram/ui/ChatActivity$38;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 8609
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$38$1;->this$1:Lorg/telegram/ui/ChatActivity$38;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity$38;->access$26300(Lorg/telegram/ui/ChatActivity$38;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38$1;->this$1:Lorg/telegram/ui/ChatActivity$38;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$38;->access$26000(Lorg/telegram/ui/ChatActivity$38;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$38$1;->this$1:Lorg/telegram/ui/ChatActivity$38;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity$38;->access$26100(Lorg/telegram/ui/ChatActivity$38;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$38$1;->this$1:Lorg/telegram/ui/ChatActivity$38;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity$38;->access$26200(Lorg/telegram/ui/ChatActivity$38;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 8610
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$38$1;->this$1:Lorg/telegram/ui/ChatActivity$38;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity$38;->access$26400(Lorg/telegram/ui/ChatActivity$38;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8611
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$38$1;->this$1:Lorg/telegram/ui/ChatActivity$38;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity$38;->access$26600(Lorg/telegram/ui/ChatActivity$38;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38$1;->this$1:Lorg/telegram/ui/ChatActivity$38;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$38;->access$26500(Lorg/telegram/ui/ChatActivity$38;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 8614
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$38$1;->this$1:Lorg/telegram/ui/ChatActivity$38;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 8615
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$38$1;->this$1:Lorg/telegram/ui/ChatActivity$38;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p1, :cond_1

    .line 8616
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 8619
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$38$1;->this$1:Lorg/telegram/ui/ChatActivity$38;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$25602(Lorg/telegram/ui/ChatActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
