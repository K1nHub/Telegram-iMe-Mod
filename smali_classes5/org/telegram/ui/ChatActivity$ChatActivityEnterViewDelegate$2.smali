.class Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$2;
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

    .line 3474
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$2;->val$menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3483
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 3484
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$2;->val$menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->translateXItems(F)V

    .line 3486
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setMenuOffsetSuppressed(Z)V

    .line 3487
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;

    iput-boolean v0, p1, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->isEditTextItemVisibilitySuppressed:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 3477
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setMenuOffsetSuppressed(Z)V

    .line 3478
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;

    iput-boolean v0, p1, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->isEditTextItemVisibilitySuppressed:Z

    return-void
.end method
