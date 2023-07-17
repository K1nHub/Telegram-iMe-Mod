.class Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->onTextSelectionChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;

.field final synthetic val$menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;Lorg/telegram/ui/ActionBar/ActionBarMenu;)V
    .locals 0

    .line 3507
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$1;->val$menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3518
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setMenuOffsetSuppressed(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 3510
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setMenuOffsetSuppressed(Z)V

    .line 3511
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7500(Lorg/telegram/ui/ChatActivity;)V

    .line 3512
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 3513
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$1;->val$menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/16 v0, 0x30

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->translateXItems(F)V

    return-void
.end method
