.class Lorg/telegram/ui/Components/PasscodeView$11$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView$11;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PasscodeView$11;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView$11;)V
    .locals 0

    .line 1829
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$11$2;->this$1:Lorg/telegram/ui/Components/PasscodeView$11;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1832
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$11$2;->this$1:Lorg/telegram/ui/Components/PasscodeView$11;

    iget-object p1, p1, Lorg/telegram/ui/Components/PasscodeView$11;->val$onShow:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 1833
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1835
    :cond_0
    sget p1, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$11$2;->this$1:Lorg/telegram/ui/Components/PasscodeView$11;

    iget-object p1, p1, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$1700(Lorg/telegram/ui/Components/PasscodeView;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$11$2;->this$1:Lorg/telegram/ui/Components/PasscodeView$11;

    iget-object p1, p1, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$1600(Lorg/telegram/ui/Components/PasscodeView;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$11$2;->this$1:Lorg/telegram/ui/Components/PasscodeView$11;

    iget-object p1, p1, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$1700(Lorg/telegram/ui/Components/PasscodeView;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$11$2;->this$1:Lorg/telegram/ui/Components/PasscodeView$11;

    iget-object p1, p1, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$1700(Lorg/telegram/ui/Components/PasscodeView;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeType()I

    move-result p1

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$11$2;->this$1:Lorg/telegram/ui/Components/PasscodeView$11;

    iget-object p1, p1, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$3400(Lorg/telegram/ui/Components/PasscodeView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$11$2;->this$1:Lorg/telegram/ui/Components/PasscodeView$11;

    iget-object p1, p1, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$1500(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1836
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$11$2;->this$1:Lorg/telegram/ui/Components/PasscodeView$11;

    iget-object p1, p1, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$1500(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1837
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$11$2;->this$1:Lorg/telegram/ui/Components/PasscodeView$11;

    iget-object p1, p1, Lorg/telegram/ui/Components/PasscodeView$11;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$1500(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_3
    return-void
.end method
