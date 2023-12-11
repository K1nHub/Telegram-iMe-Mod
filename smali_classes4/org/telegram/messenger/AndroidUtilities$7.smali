.class Lorg/telegram/messenger/AndroidUtilities$7;
.super Lorg/telegram/ui/Cells/TextDetailSettingsCell;
.source "AndroidUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/AndroidUtilities;->showProxyAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ellRef:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 4279
    iput-object p2, p0, Lorg/telegram/messenger/AndroidUtilities$7;->val$ellRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 4282
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 4283
    iget-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$7;->val$ellRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4284
    iget-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$7;->val$ellRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 4290
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 4291
    iget-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$7;->val$ellRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4292
    iget-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$7;->val$ellRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method
