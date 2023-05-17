.class Lorg/telegram/ui/DialogsActivity$59;
.super Landroid/widget/FrameLayout;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->performSelectedDialogsAction(Ljava/util/ArrayList;IZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$checkBoxCell:Lorg/telegram/ui/Cells/CheckBoxCell;

.field final synthetic val$revokeByDefaultCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/ui/Cells/CheckBoxCell;)V
    .locals 0

    .line 11189
    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$59;->val$checkBoxCell:Lorg/telegram/ui/Cells/CheckBoxCell;

    iput-object p4, p0, Lorg/telegram/ui/DialogsActivity$59;->val$revokeByDefaultCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 11192
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 11193
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$59;->val$checkBoxCell:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$59;->val$revokeByDefaultCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$59;->val$revokeByDefaultCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p2, v0

    const/4 v0, 0x7

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 11194
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$59;->val$checkBoxCell:Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$59;->val$revokeByDefaultCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$59;->val$revokeByDefaultCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method
