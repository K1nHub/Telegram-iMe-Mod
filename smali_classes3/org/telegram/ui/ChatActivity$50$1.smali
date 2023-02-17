.class Lorg/telegram/ui/ChatActivity$50$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$50;->onTextSelectionChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$50;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$50;)V
    .locals 0

    .line 10402
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$50$1;->this$1:Lorg/telegram/ui/ChatActivity$50;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 10412
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$50$1;->this$1:Lorg/telegram/ui/ChatActivity$50;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$50;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$36800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setMenuOffsetSuppressed(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 10405
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$50$1;->this$1:Lorg/telegram/ui/ChatActivity$50;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$50;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$36700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setMenuOffsetSuppressed(Z)V

    .line 10406
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$50$1;->this$1:Lorg/telegram/ui/ChatActivity$50;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$50;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$11000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10407
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$50$1;->this$1:Lorg/telegram/ui/ChatActivity$50;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$50;->val$menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/16 v0, 0x30

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->translateXItems(F)V

    return-void
.end method
