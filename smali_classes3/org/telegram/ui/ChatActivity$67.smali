.class Lorg/telegram/ui/ChatActivity$67;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->updateReactionsMentionButton(Z)V
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

    .line 11905
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 11908
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$40402(Lorg/telegram/ui/ChatActivity;F)F

    .line 11909
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
