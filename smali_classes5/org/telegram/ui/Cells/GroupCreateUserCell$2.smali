.class Lorg/telegram/ui/Cells/GroupCreateUserCell$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GroupCreateUserCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/GroupCreateUserCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/GroupCreateUserCell;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell$2;->this$0:Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 208
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell$2;->this$0:Lorg/telegram/ui/Cells/GroupCreateUserCell;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->access$002(Lorg/telegram/ui/Cells/GroupCreateUserCell;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
