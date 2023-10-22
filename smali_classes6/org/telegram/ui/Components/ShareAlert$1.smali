.class Lorg/telegram/ui/Components/ShareAlert$1;
.super Lorg/telegram/ui/Components/ForwardingPreviewView;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;->openForwardingPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;

.field final synthetic val$focusedEditText:Landroid/widget/EditText;


# direct methods
.method public static synthetic $r8$lambda$NxukuIDfWHKlkrWrtQGs84s_AsA(Landroid/widget/EditText;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ShareAlert$1;->lambda$onDismiss$0(Landroid/widget/EditText;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;Lorg/telegram/messenger/ForwardingMessagesParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;Landroid/widget/EditText;)V
    .locals 7

    .line 223
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$1;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iput-object p8, p0, Lorg/telegram/ui/Components/ShareAlert$1;->val$focusedEditText:Landroid/widget/EditText;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ForwardingPreviewView;-><init>(Landroid/content/Context;Lorg/telegram/messenger/ForwardingMessagesParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;)V

    return-void
.end method

.method private static synthetic lambda$onDismiss$0(Landroid/widget/EditText;)V
    .locals 1

    .line 232
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    .line 234
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected didSendPressed()V
    .locals 2

    const/4 v0, 0x1

    .line 242
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->dismiss(Z)V

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$1;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->sendInternal(Z)V

    return-void
.end method

.method protected onDismiss(Z)V
    .locals 2

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$1;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setAllowNestedScroll(Z)V

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$1;->val$focusedEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 231
    new-instance p1, Lorg/telegram/ui/Components/ShareAlert$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/ShareAlert$1$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method protected onTransitionAnimationProgress(ZF)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-nez p1, :cond_0

    .line 249
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$1;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 250
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$1;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$1;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_0
    return-void
.end method
