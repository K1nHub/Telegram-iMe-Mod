.class Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$6;
.super Ljava/lang/Object;
.source "FilterChatlistActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->options()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;

.field final synthetic val$dimView:Landroid/view/View;

.field final synthetic val$finalContainer:Landroid/widget/FrameLayout;

.field final synthetic val$preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 0

    .line 1248
    iput-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$6;->this$0:Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;

    iput-object p2, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$6;->val$dimView:Landroid/view/View;

    iput-object p3, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$6;->val$finalContainer:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$6;->val$preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 1251
    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$6;->this$0:Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->access$2602(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 1252
    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$6;->val$dimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1253
    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$6;->val$dimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$6$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$6$1;-><init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$6;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
