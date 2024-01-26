.class Lorg/telegram/ui/DialogsActivity$6;
.super Lorg/telegram/ui/Components/MessagePreviewView;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->openForwardingPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$focusedEditText:Landroid/widget/EditText;


# direct methods
.method public static synthetic $r8$lambda$5FG6mJ62lC-nySW5jX2gPc7daAU(Lorg/telegram/ui/DialogsActivity$6;Lorg/telegram/messenger/MessagePreviewParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$6;->lambda$didOpenEditorPressed$2(Lorg/telegram/messenger/MessagePreviewParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T3ewhBPR55IdYFOBBNQDubST1-8(Lorg/telegram/ui/DialogsActivity$6;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$6;->lambda$onFullDismiss$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$V7xsZX-ojoDunzC9Ko7wPMdZHeo(Landroid/widget/EditText;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/DialogsActivity$6;->lambda$onDismiss$1(Landroid/widget/EditText;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagePreviewParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;IZLandroid/widget/EditText;)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    .line 1270
    iput-object v0, v10, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, p11

    iput-object v0, v10, Lorg/telegram/ui/DialogsActivity$6;->val$focusedEditText:Landroid/widget/EditText;

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

.method private synthetic lambda$didOpenEditorPressed$2(Lorg/telegram/messenger/MessagePreviewParams;)V
    .locals 1

    .line 1332
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/DialogsActivity;->access$1702(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/messenger/MessagePreviewParams;)Lorg/telegram/messenger/MessagePreviewParams;

    .line 1333
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$2300(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method private static synthetic lambda$onDismiss$1(Landroid/widget/EditText;)V
    .locals 1

    .line 1298
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1299
    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    .line 1300
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onFullDismiss$0()V
    .locals 2

    .line 1286
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->freezeEmojiView(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected didOpenEditorPressed()V
    .locals 6

    .line 1328
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/MessagePreviewParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1331
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/MessagePreviewParams;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/DialogsActivity$6$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/ui/DialogsActivity$6$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$6;)V

    invoke-static {v3, v4, v1, v5}, Lorg/telegram/ui/ChatActivity;->newInstanceInForwardingEditor(JLorg/telegram/messenger/MessagePreviewParams;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1335
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    return-void
.end method

.method protected didSendPressed()V
    .locals 1

    const/4 v0, 0x1

    .line 1308
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    .line 1309
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method

.method protected onDismiss(Z)V
    .locals 2

    .line 1295
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$1802(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView;

    .line 1296
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$6;->val$focusedEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1297
    new-instance p1, Lorg/telegram/ui/DialogsActivity$6$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lorg/telegram/ui/DialogsActivity$6$$ExternalSyntheticLambda1;-><init>(Landroid/widget/EditText;)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method protected onFullDismiss(Z)V
    .locals 2

    .line 1281
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/MessagePreviewParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/MessagePreviewParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagePreviewParams;->attach(Lorg/telegram/ui/Components/MessagePreviewView;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1285
    new-instance p1, Lorg/telegram/ui/DialogsActivity$6$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/DialogsActivity$6$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DialogsActivity$6;)V

    const-wide/16 v0, 0xf

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method protected onTransitionAnimationProgress(ZF)V
    .locals 0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-nez p1, :cond_1

    .line 1315
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$2000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1316
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1318
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 1320
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1322
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method protected removeForward()V
    .locals 1

    .line 1274
    invoke-super {p0}, Lorg/telegram/ui/Components/MessagePreviewView;->removeForward()V

    const/4 v0, 0x1

    .line 1275
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    .line 1276
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    return-void
.end method
