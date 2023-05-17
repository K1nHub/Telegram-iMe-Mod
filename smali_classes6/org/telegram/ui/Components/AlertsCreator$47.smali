.class Lorg/telegram/ui/Components/AlertsCreator$47;
.super Landroid/widget/FrameLayout;
.source "AlertsCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createDeleteMessagesAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$ChatFull;JLorg/telegram/messenger/MessageObject;[Landroid/util/SparseArray;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZILjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cell:Lorg/telegram/ui/Cells/CheckBoxCell;

.field final synthetic val$revokeByDefaultCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/ui/Cells/CheckBoxCell;)V
    .locals 0

    .line 6118
    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$47;->val$revokeByDefaultCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$47;->val$cell:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 6121
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 6122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$47;->val$revokeByDefaultCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$47;->val$revokeByDefaultCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 6123
    iget-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$47;->val$revokeByDefaultCheckBox:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$47;->val$cell:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method
