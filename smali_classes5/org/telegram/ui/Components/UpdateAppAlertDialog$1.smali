.class Lorg/telegram/ui/Components/UpdateAppAlertDialog$1;
.super Landroid/widget/FrameLayout;
.source "UpdateAppAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/UpdateAppAlertDialog;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Landroid/content/Context;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$1;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$1;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->access$300(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$1;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->access$400(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 173
    iget-object v1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$1;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->access$500(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$1;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->access$500(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$1;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->access$300(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$1;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->access$300(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 159
    iget-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$1;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p1, 0x1

    return p1

    .line 162
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$1;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 152
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 153
    iget-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$1;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->access$200(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)V

    return-void
.end method
