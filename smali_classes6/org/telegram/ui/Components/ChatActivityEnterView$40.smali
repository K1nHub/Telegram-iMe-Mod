.class Lorg/telegram/ui/Components/ChatActivityEnterView$40;
.super Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->createMessageEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field clickMaybe:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field touchX:F

.field touchY:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 5250
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private fixHandlesColor()V
    .locals 2

    .line 5293
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 5304
    invoke-super {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onAttachedToWindow()V

    .line 5305
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isSheet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5306
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setWindowView(Landroid/view/View;)V

    goto :goto_0

    .line 5308
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setWindowView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 5256
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuIsShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 5258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->touchX:F

    .line 5259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->touchY:F

    const/4 p1, 0x1

    .line 5260
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->clickMaybe:Z

    goto :goto_0

    .line 5261
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->clickMaybe:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 5262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->touchX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->touchY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    :cond_1
    const/4 p1, 0x0

    .line 5263
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->clickMaybe:Z

    goto :goto_0

    .line 5266
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->clickMaybe:Z

    if-eqz p1, :cond_4

    .line 5267
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5268
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->fixHandlesColor()V

    .line 5269
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onKeyboardRequested()V

    .line 5271
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 5272
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 5273
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 5277
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->clickMaybe:Z

    return p1

    .line 5279
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    .line 5280
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 5281
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->fixHandlesColor()V

    .line 5282
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onKeyboardRequested()V

    .line 5285
    :cond_6
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOffsetY(F)V
    .locals 0

    .line 5298
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->setOffsetY(F)V

    .line 5299
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$40;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
