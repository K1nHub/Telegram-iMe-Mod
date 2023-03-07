.class Lorg/telegram/ui/DialogsActivity$51;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/Bulletin$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 8959
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic allowLayoutChanges()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$allowLayoutChanges(Lorg/telegram/ui/Components/Bulletin$Delegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic getBottomOffset(I)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$getBottomOffset(Lorg/telegram/ui/Components/Bulletin$Delegate;I)I

    move-result p1

    return p1
.end method

.method public getTopOffset(I)I
    .locals 2

    .line 8983
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$39300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$39400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$39500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$5300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$5300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FragmentContextView;->isCallTypeVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$5300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$5500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogsHintCell;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$5500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogsHintCell;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$5500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogsHintCell;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :cond_3
    add-int/2addr p1, v0

    return p1
.end method

.method public onBottomOffsetChange(F)V
    .locals 2

    .line 8962
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$27900(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$27900(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8965
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/DialogsActivity;->access$32902(Lorg/telegram/ui/DialogsActivity;F)F

    .line 8966
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$32900(Lorg/telegram/ui/DialogsActivity;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 8967
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$32902(Lorg/telegram/ui/DialogsActivity;F)F

    .line 8969
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$23500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8970
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$23800(Lorg/telegram/ui/DialogsActivity;)V

    :cond_2
    return-void
.end method

.method public synthetic onHide(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$onHide(Lorg/telegram/ui/Components/Bulletin$Delegate;Lorg/telegram/ui/Components/Bulletin;)V

    return-void
.end method

.method public onShow(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 2

    .line 8976
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$27900(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$27900(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 8977
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$27900(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    aget-object p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method
