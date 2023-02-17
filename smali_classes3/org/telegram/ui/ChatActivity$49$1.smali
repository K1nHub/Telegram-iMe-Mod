.class Lorg/telegram/ui/ChatActivity$49$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$49;->checkAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$49;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$49;)V
    .locals 0

    .line 10125
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$49$1;->this$1:Lorg/telegram/ui/ChatActivity$49;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 10128
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$49$1;->this$1:Lorg/telegram/ui/ChatActivity$49;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity$49;->access$34202(Lorg/telegram/ui/ChatActivity$49;I)I

    .line 10129
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$49$1;->this$1:Lorg/telegram/ui/ChatActivity$49;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity$49;->access$34300(Lorg/telegram/ui/ChatActivity$49;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$49$1;->this$1:Lorg/telegram/ui/ChatActivity$49;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity$49;->access$34400(Lorg/telegram/ui/ChatActivity$49;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 10130
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$49$1;->this$1:Lorg/telegram/ui/ChatActivity$49;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity$49;->access$34800(Lorg/telegram/ui/ChatActivity$49;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$49$1;->this$1:Lorg/telegram/ui/ChatActivity$49;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$49;->access$34500(Lorg/telegram/ui/ChatActivity$49;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$49$1;->this$1:Lorg/telegram/ui/ChatActivity$49;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity$49;->access$34600(Lorg/telegram/ui/ChatActivity$49;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$49$1;->this$1:Lorg/telegram/ui/ChatActivity$49;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity$49;->access$34700(Lorg/telegram/ui/ChatActivity$49;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 10131
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$49$1;->this$1:Lorg/telegram/ui/ChatActivity$49;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity$49;->access$34900(Lorg/telegram/ui/ChatActivity$49;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10132
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$49$1;->this$1:Lorg/telegram/ui/ChatActivity$49;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity$49;->access$35100(Lorg/telegram/ui/ChatActivity$49;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$49$1;->this$1:Lorg/telegram/ui/ChatActivity$49;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$49;->access$35000(Lorg/telegram/ui/ChatActivity$49;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 10135
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$49$1;->this$1:Lorg/telegram/ui/ChatActivity$49;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$49;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 10136
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$49$1;->this$1:Lorg/telegram/ui/ChatActivity$49;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$49;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p1, :cond_1

    .line 10137
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 10140
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$49$1;->this$1:Lorg/telegram/ui/ChatActivity$49;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$49;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$34002(Lorg/telegram/ui/ChatActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
