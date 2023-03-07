.class Lorg/telegram/ui/DialogsActivity$36;
.super Landroid/widget/FrameLayout;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V
    .locals 0

    .line 6924
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$36;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 6968
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6969
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$36;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$900(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AccDescrShareInChats"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 6970
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 6971
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 6972
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 6956
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 6957
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$36;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$32100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6958
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$36;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$32200(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .line 6940
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 6941
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$36;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$32100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6942
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$36;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$32200(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .line 6948
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 6949
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$36;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$32100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6950
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$36;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$32200(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 6932
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6933
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$36;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$32100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6934
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$36;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$32200(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
