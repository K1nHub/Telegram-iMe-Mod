.class Lorg/telegram/ui/Components/PasscodeView$2;
.super Ljava/lang/Object;
.source "PasscodeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PasscodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$200(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 119
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$300(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$400(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 126
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 127
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_1

    .line 129
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$300(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$500(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 130
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 131
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 133
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    invoke-static {v3, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v5, -0x1

    .line 137
    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 138
    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    int-to-long v5, v2

    .line 139
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 140
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x64

    goto :goto_2

    .line 144
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PasscodeView;->access$602(Lorg/telegram/ui/Components/PasscodeView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 145
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$2;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x41200000    # 10.0f
    .end array-data
.end method
