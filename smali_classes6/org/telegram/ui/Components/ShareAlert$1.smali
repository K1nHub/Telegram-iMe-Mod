.class Lorg/telegram/ui/Components/ShareAlert$1;
.super Lorg/telegram/ui/Components/MessagePreviewView;
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

.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagePreviewParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;IZLandroid/widget/EditText;)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    .line 227
    iput-object v0, v10, Lorg/telegram/ui/Components/ShareAlert$1;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    move-object/from16 v0, p11

    iput-object v0, v10, Lorg/telegram/ui/Components/ShareAlert$1;->val$focusedEditText:Landroid/widget/EditText;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/MessagePreviewView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagePreviewParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;IZ)V

    return-void
.end method

.method private static synthetic lambda$onDismiss$0(Landroid/widget/EditText;)V
    .locals 1

    .line 236
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    .line 238
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected didSendPressed()V
    .locals 2

    const/4 v0, 0x1

    .line 246
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$1;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->sendInternal(Z)V

    return-void
.end method

.method protected onDismiss(Z)V
    .locals 2

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$1;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setAllowNestedScroll(Z)V

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$1;->val$focusedEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 235
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

    .line 253
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$1;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 254
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$1;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$1;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_0
    return-void
.end method
