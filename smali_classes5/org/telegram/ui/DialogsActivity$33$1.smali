.class Lorg/telegram/ui/DialogsActivity$33$1;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$33;->didSelectTab(Lcom/smedialink/ui/topics/TopicView;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final pos:[I

.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$33;

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$33;Landroid/graphics/Rect;)V
    .locals 0

    .line 6582
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$33$1;->this$1:Lorg/telegram/ui/DialogsActivity$33;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$33$1;->val$rect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 6584
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$33$1;->pos:[I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 6588
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6589
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33$1;->this$1:Lorg/telegram/ui/DialogsActivity$33;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33$1;->this$1:Lorg/telegram/ui/DialogsActivity$33;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6590
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33$1;->this$1:Lorg/telegram/ui/DialogsActivity$33;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    .line 6591
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$33$1;->pos:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 6592
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$33$1;->val$rect:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$33$1;->pos:[I

    aget v3, v2, v0

    const/4 v4, 0x1

    aget v5, v2, v4

    aget v2, v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v2, v6

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$33$1;->pos:[I

    aget v4, v6, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr v4, p1

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 6593
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33$1;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6594
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33$1;->this$1:Lorg/telegram/ui/DialogsActivity$33;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    goto :goto_0

    .line 6597
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 6598
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33$1;->this$1:Lorg/telegram/ui/DialogsActivity$33;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33$1;->this$1:Lorg/telegram/ui/DialogsActivity$33;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6599
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33$1;->this$1:Lorg/telegram/ui/DialogsActivity$33;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_1
    :goto_0
    return v0
.end method
