.class Lorg/telegram/ui/Components/PasscodeView$3;
.super Ljava/lang/Object;
.source "PasscodeView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;Lorg/fork/enums/LockedSection;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;


# direct methods
.method public static synthetic $r8$lambda$rdky0DCJRs0gdgmCE63DfwxErmQ(Lorg/telegram/ui/Components/PasscodeView$3;ZLorg/telegram/ui/Components/MotionBackgroundDrawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PasscodeView$3;->lambda$beforeTextChanged$0(ZLorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$3;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$beforeTextChanged$0(ZLorg/telegram/ui/Components/MotionBackgroundDrawable;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 729
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToNextPosition(Z)V

    goto :goto_0

    .line 731
    :cond_0
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToPrevPosition(Z)V

    .line 733
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$3;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PasscodeView;->access$700(Lorg/telegram/ui/Components/PasscodeView;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 768
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$3;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$1000(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$3;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    sget-object v0, Lorg/fork/enums/PasscodeType;->PIN:Lorg/fork/enums/PasscodeType;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1100(Lorg/telegram/ui/Components/PasscodeView;Lorg/fork/enums/PasscodeType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 769
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$3;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1200(Lorg/telegram/ui/Components/PasscodeView;Z)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 705
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$3;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$500(Lorg/telegram/ui/Components/PasscodeView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p1, :cond_7

    .line 707
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$3;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$500(Lorg/telegram/ui/Components/PasscodeView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 p2, 0x0

    .line 708
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setAnimationProgressProvider(Lorg/telegram/messenger/GenericProvider;)V

    .line 709
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPosAnimationProgress()F

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    if-ne p4, v1, :cond_0

    .line 712
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToNextPosition(Z)V

    move p3, v1

    goto :goto_0

    :cond_0
    if-ne p3, v1, :cond_1

    if-nez p4, :cond_1

    .line 716
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToPrevPosition(Z)V

    move p3, v0

    goto :goto_0

    :cond_1
    move p3, v0

    move v1, p3

    :goto_0
    if-eqz v1, :cond_7

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p4

    if-ltz p2, :cond_2

    .line 725
    iget-object p2, p0, Lorg/telegram/ui/Components/PasscodeView$3;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/PasscodeView;->access$700(Lorg/telegram/ui/Components/PasscodeView;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    goto/16 :goto_4

    .line 727
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/PasscodeView$3;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p2}, Lorg/telegram/ui/Components/PasscodeView;->access$800(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/LinkedList;

    move-result-object p2

    new-instance p4, Lorg/telegram/ui/Components/PasscodeView$3$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p3, p1}, Lorg/telegram/ui/Components/PasscodeView$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PasscodeView$3;ZLorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {p2, p4}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 735
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$3;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$900(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 737
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 738
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 739
    :goto_1
    iget-object p4, p0, Lorg/telegram/ui/Components/PasscodeView$3;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p4}, Lorg/telegram/ui/Components/PasscodeView;->access$800(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/LinkedList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/LinkedList;->size()I

    move-result p4

    if-ge v0, p4, :cond_4

    .line 740
    iget-object p4, p0, Lorg/telegram/ui/Components/PasscodeView$3;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p4}, Lorg/telegram/ui/Components/PasscodeView;->access$800(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/LinkedList;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Runnable;

    .line 741
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$3;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$900(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p3, :cond_3

    .line 744
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 748
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Runnable;

    .line 749
    iget-object p4, p0, Lorg/telegram/ui/Components/PasscodeView$3;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p4}, Lorg/telegram/ui/Components/PasscodeView;->access$800(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/LinkedList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 751
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 752
    iget-object p3, p0, Lorg/telegram/ui/Components/PasscodeView$3;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p3}, Lorg/telegram/ui/Components/PasscodeView;->access$900(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/LinkedList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result p3

    if-ge p2, p3, :cond_6

    .line 753
    iget-object p3, p0, Lorg/telegram/ui/Components/PasscodeView$3;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p3}, Lorg/telegram/ui/Components/PasscodeView;->access$900(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/LinkedList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
