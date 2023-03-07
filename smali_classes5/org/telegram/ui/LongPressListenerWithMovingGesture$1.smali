.class Lorg/telegram/ui/LongPressListenerWithMovingGesture$1;
.super Ljava/lang/Object;
.source "LongPressListenerWithMovingGesture.java"

# interfaces
.implements Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LongPressListenerWithMovingGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LongPressListenerWithMovingGesture;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LongPressListenerWithMovingGesture;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture$1;->this$0:Lorg/telegram/ui/LongPressListenerWithMovingGesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 22
    iget-object v0, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture$1;->this$0:Lorg/telegram/ui/LongPressListenerWithMovingGesture;

    iget-object v0, v0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->view:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 24
    iget-object v0, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture$1;->this$0:Lorg/telegram/ui/LongPressListenerWithMovingGesture;

    iget-object v0, v0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    if-ne v0, v2, :cond_0

    .line 26
    iget-object v0, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture$1;->this$0:Lorg/telegram/ui/LongPressListenerWithMovingGesture;

    iget-object v0, v0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture$1;->this$0:Lorg/telegram/ui/LongPressListenerWithMovingGesture;

    iget-object v0, v0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 29
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture$1;->this$0:Lorg/telegram/ui/LongPressListenerWithMovingGesture;

    iget-object v0, v0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/view/View;->drawableHotspotChanged(FF)V

    :cond_1
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 70
    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture$1;->this$0:Lorg/telegram/ui/LongPressListenerWithMovingGesture;

    iget-object v0, p1, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1}, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->onLongPress()V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 57
    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture$1;->this$0:Lorg/telegram/ui/LongPressListenerWithMovingGesture;

    iget-object p1, p1, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->view:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 2

    .line 37
    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture$1;->this$0:Lorg/telegram/ui/LongPressListenerWithMovingGesture;

    iget-object p1, p1, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->view:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 39
    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture$1;->this$0:Lorg/telegram/ui/LongPressListenerWithMovingGesture;

    iget-object p1, p1, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 40
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture$1;->this$0:Lorg/telegram/ui/LongPressListenerWithMovingGesture;

    iget-object p1, p1, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture$1;->this$0:Lorg/telegram/ui/LongPressListenerWithMovingGesture;

    iget-object p1, p1, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 44
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture$1;->this$0:Lorg/telegram/ui/LongPressListenerWithMovingGesture;

    invoke-static {p1}, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->access$000(Lorg/telegram/ui/LongPressListenerWithMovingGesture;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture$1;->this$0:Lorg/telegram/ui/LongPressListenerWithMovingGesture;

    iget-boolean v0, p1, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->subItemClicked:Z

    if-nez v0, :cond_1

    .line 45
    invoke-static {p1}, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->access$000(Lorg/telegram/ui/LongPressListenerWithMovingGesture;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    .line 46
    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture$1;->this$0:Lorg/telegram/ui/LongPressListenerWithMovingGesture;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->subItemClicked:Z

    :cond_1
    return-void
.end method
