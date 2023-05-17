.class Lorg/telegram/ui/Components/AlertsCreator$7;
.super Landroid/widget/FrameLayout;
.source "AlertsCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createBotLaunchAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_messages_botApp;Lorg/telegram/tgnet/TLRPC$User;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cell:[Lorg/telegram/ui/Cells/CheckBoxCell;


# direct methods
.method constructor <init>(Landroid/content/Context;[Lorg/telegram/ui/Cells/CheckBoxCell;)V
    .locals 0

    .line 1891
    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$7;->val$cell:[Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 1894
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1895
    iget-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$7;->val$cell:[Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    if-eqz p1, :cond_0

    .line 1896
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$7;->val$cell:[Lorg/telegram/ui/Cells/CheckBoxCell;

    aget-object p2, v1, p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    add-int/2addr v0, p2

    const/4 p2, 0x7

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method
