.class Lorg/telegram/ui/ChatActivity$99;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->updateBottomOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 24694
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$99;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 24697
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$99;->this$0:Lorg/telegram/ui/ChatActivity;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$45302(Lorg/telegram/ui/ChatActivity;F)F

    .line 24698
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$99;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    .line 24699
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$99;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$16600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 24700
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$99;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$10000(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method
