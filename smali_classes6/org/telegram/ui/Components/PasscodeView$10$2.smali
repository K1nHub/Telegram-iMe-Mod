.class Lorg/telegram/ui/Components/PasscodeView$10$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView$10;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PasscodeView$10;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView$10;)V
    .locals 0

    .line 1686
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$10$2;->this$1:Lorg/telegram/ui/Components/PasscodeView$10;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1689
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$10$2;->this$1:Lorg/telegram/ui/Components/PasscodeView$10;

    iget-object p1, p1, Lorg/telegram/ui/Components/PasscodeView$10;->val$onShow:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 1690
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1692
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$10$2;->this$1:Lorg/telegram/ui/Components/PasscodeView$10;

    iget-object p1, p1, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    sget-object v0, Lorg/fork/enums/PasscodeType;->PASSWORD:Lorg/fork/enums/PasscodeType;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1100(Lorg/telegram/ui/Components/PasscodeView;Lorg/fork/enums/PasscodeType;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$10$2;->this$1:Lorg/telegram/ui/Components/PasscodeView$10;

    iget-object p1, p1, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$3100(Lorg/telegram/ui/Components/PasscodeView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$10$2;->this$1:Lorg/telegram/ui/Components/PasscodeView$10;

    iget-object p1, p1, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$1000(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1693
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$10$2;->this$1:Lorg/telegram/ui/Components/PasscodeView$10;

    iget-object p1, p1, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$1000(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1694
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$10$2;->this$1:Lorg/telegram/ui/Components/PasscodeView$10;

    iget-object p1, p1, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$1000(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_1
    return-void
.end method
