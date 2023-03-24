.class Lorg/telegram/ui/Components/EditTextEmoji$2;
.super Lorg/telegram/ui/Components/EditTextCaption;
.source "EditTextEmoji.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EditTextEmoji;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EditTextEmoji;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EditTextEmoji;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onLineCountChanged(II)V
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/EditTextEmoji;->onLineCountChanged(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->showPopup(I)V

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardInternal()V

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 132
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 133
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    .line 135
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 139
    :cond_2
    :try_start_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 141
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v1
.end method
