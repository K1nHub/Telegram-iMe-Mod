.class Lorg/telegram/ui/LoginActivity$11;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity;->onFieldError(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$timeoutCallbackRef:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public static synthetic $r8$lambda$Fzq-nvSYW9m7TGr-2E68sOSVb2s(Lorg/telegram/ui/LoginActivity$11;Landroid/widget/EditText;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$11;->lambda$beforeTextChanged$0(Landroid/widget/EditText;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/widget/EditText;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 1387
    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$11;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$11;->val$timeoutCallbackRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$beforeTextChanged$0(Landroid/widget/EditText;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    .line 1391
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1392
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1393
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1390
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$11;->val$editText:Landroid/widget/EditText;

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$11;->val$timeoutCallbackRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p3, Lorg/telegram/ui/LoginActivity$11$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/LoginActivity$11$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$11;Landroid/widget/EditText;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
