.class Lorg/telegram/ui/PasscodeActivity$6;
.super Ljava/lang/Object;
.source "PasscodeActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PasscodeActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PasscodeActivity;

.field final synthetic val$isPasswordShown:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PasscodeActivity;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 889
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    iput-object p2, p0, Lorg/telegram/ui/PasscodeActivity$6;->val$isPasswordShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 898
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1200(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-nez v0, :cond_2

    .line 899
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v3, 0x3dcccccd    # 0.1f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1000(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_1

    .line 900
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity$6;->val$isPasswordShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 901
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p1}, Lorg/telegram/ui/PasscodeActivity;->access$1000(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->callOnClick()Z

    .line 903
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p1}, Lorg/telegram/ui/PasscodeActivity;->access$1000(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1, v1, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    goto :goto_0

    .line 904
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p1}, Lorg/telegram/ui/PasscodeActivity;->access$1000(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 905
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p1}, Lorg/telegram/ui/PasscodeActivity;->access$1000(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1, v2, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 909
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p1}, Lorg/telegram/ui/PasscodeActivity;->access$1300(Lorg/telegram/ui/PasscodeActivity;)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 910
    iget-object p1, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    iget-object v0, p1, Lorg/telegram/ui/PasscodeActivity;->walletCreatePasscodePresenter:Lcom/iMe/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;

    invoke-static {p1}, Lorg/telegram/ui/PasscodeActivity;->access$500(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;->isValidPasswordLength(Ljava/lang/String;)Z

    move-result p1

    .line 911
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1400(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    if-eq p1, v1, :cond_4

    .line 912
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0, p1, v2}, Lorg/telegram/ui/PasscodeActivity;->access$1500(Lorg/telegram/ui/PasscodeActivity;ZZ)V

    :cond_4
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
