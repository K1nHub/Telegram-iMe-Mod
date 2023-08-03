.class Lorg/telegram/ui/DialogsActivity$SpansContainer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$SpansContainer;->addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$SpansContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$SpansContainer;)V
    .locals 0

    .line 1440
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$SpansContainer$1;->this$1:Lorg/telegram/ui/DialogsActivity$SpansContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1443
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SpansContainer$1;->this$1:Lorg/telegram/ui/DialogsActivity$SpansContainer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity$SpansContainer;->access$3002(Lorg/telegram/ui/DialogsActivity$SpansContainer;Landroid/view/View;)Landroid/view/View;

    .line 1444
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SpansContainer$1;->this$1:Lorg/telegram/ui/DialogsActivity$SpansContainer;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity$SpansContainer;->access$3102(Lorg/telegram/ui/DialogsActivity$SpansContainer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1445
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SpansContainer$1;->this$1:Lorg/telegram/ui/DialogsActivity$SpansContainer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity$SpansContainer;->access$3202(Lorg/telegram/ui/DialogsActivity$SpansContainer;Z)Z

    .line 1446
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$SpansContainer$1;->this$1:Lorg/telegram/ui/DialogsActivity$SpansContainer;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$SpansContainer;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$2900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    return-void
.end method
