.class Lorg/telegram/ui/Components/AlertsCreator$11;
.super Landroid/widget/FrameLayout;
.source "AlertsCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createClearDaysDialogAlert(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cell:[Lorg/telegram/ui/Cells/CheckBoxCell;

.field final synthetic val$checkrevokeByDefaultCheckBoxCell:[Lorg/telegram/ui/Cells/CheckBoxCell;


# direct methods
.method constructor <init>(Landroid/content/Context;[Lorg/telegram/ui/Cells/CheckBoxCell;[Lorg/telegram/ui/Cells/CheckBoxCell;)V
    .locals 0

    .line 2397
    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$cell:[Lorg/telegram/ui/Cells/CheckBoxCell;

    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$checkrevokeByDefaultCheckBoxCell:[Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 2400
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2402
    iget-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$cell:[Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$checkrevokeByDefaultCheckBoxCell:[Lorg/telegram/ui/Cells/CheckBoxCell;

    aget-object v0, p1, p2

    if-eqz v0, :cond_0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 2403
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$cell:[Lorg/telegram/ui/Cells/CheckBoxCell;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$checkrevokeByDefaultCheckBoxCell:[Lorg/telegram/ui/Cells/CheckBoxCell;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 2404
    iget-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$cell:[Lorg/telegram/ui/Cells/CheckBoxCell;

    aget-object p1, p1, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$checkrevokeByDefaultCheckBoxCell:[Lorg/telegram/ui/Cells/CheckBoxCell;

    aget-object p2, v0, p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    .line 2406
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$cell:[Lorg/telegram/ui/Cells/CheckBoxCell;

    aget-object v0, p1, p2

    if-eqz v0, :cond_1

    .line 2407
    aget-object p1, p1, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2408
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$11;->val$cell:[Lorg/telegram/ui/Cells/CheckBoxCell;

    aget-object p2, v1, p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :cond_1
    :goto_0
    return-void
.end method
