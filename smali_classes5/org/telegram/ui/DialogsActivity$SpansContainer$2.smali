.class Lorg/telegram/ui/DialogsActivity$SpansContainer$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$SpansContainer;

.field final synthetic val$span:Lorg/telegram/ui/Components/GroupCreateSpan;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$SpansContainer;Lorg/telegram/ui/Components/GroupCreateSpan;)V
    .locals 0

    .line 1456
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/DialogsActivity$SpansContainer;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$SpansContainer$2;->val$span:Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1459
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/DialogsActivity$SpansContainer;

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$SpansContainer$2;->val$span:Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1460
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/DialogsActivity$SpansContainer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity$SpansContainer;->access$3502(Lorg/telegram/ui/DialogsActivity$SpansContainer;Landroid/view/View;)Landroid/view/View;

    .line 1461
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/DialogsActivity$SpansContainer;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity$SpansContainer;->access$3202(Lorg/telegram/ui/DialogsActivity$SpansContainer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1462
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/DialogsActivity$SpansContainer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity$SpansContainer;->access$3302(Lorg/telegram/ui/DialogsActivity$SpansContainer;Z)Z

    .line 1463
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/DialogsActivity$SpansContainer;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$SpansContainer;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    .line 1464
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/DialogsActivity$SpansContainer;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$SpansContainer;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1465
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SpansContainer$2;->this$1:Lorg/telegram/ui/DialogsActivity$SpansContainer;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$SpansContainer;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintVisible(ZZ)V

    :cond_0
    return-void
.end method
