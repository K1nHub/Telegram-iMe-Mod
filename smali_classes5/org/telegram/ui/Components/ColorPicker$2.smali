.class Lorg/telegram/ui/Components/ColorPicker$2;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ColorPicker;-><init>(Landroid/content/Context;ZLorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ColorPicker;

.field final synthetic val$num:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ColorPicker;Landroid/content/Context;I)V
    .locals 0

    .line 269
    iput-object p1, p0, Lorg/telegram/ui/Components/ColorPicker$2;->this$0:Lorg/telegram/ui/Components/ColorPicker;

    iput p3, p0, Lorg/telegram/ui/Components/ColorPicker$2;->val$num:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 272
    invoke-virtual {p0}, Landroid/widget/EditText;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    return v1

    .line 275
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 276
    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker$2;->this$0:Lorg/telegram/ui/Components/ColorPicker;

    invoke-static {p1}, Lorg/telegram/ui/Components/ColorPicker;->access$000(Lorg/telegram/ui/Components/ColorPicker;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/ColorPicker$2;->val$num:I

    add-int/lit8 v0, v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 277
    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker$2;->this$0:Lorg/telegram/ui/Components/ColorPicker;

    invoke-static {p1}, Lorg/telegram/ui/Components/ColorPicker;->access$000(Lorg/telegram/ui/Components/ColorPicker;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/ColorPicker$2;->val$num:I

    add-int/lit8 v0, v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    goto :goto_0

    .line 279
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker$2;->this$0:Lorg/telegram/ui/Components/ColorPicker;

    invoke-static {p1}, Lorg/telegram/ui/Components/ColorPicker;->access$000(Lorg/telegram/ui/Components/ColorPicker;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/ColorPicker$2;->val$num:I

    add-int/lit8 v0, v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    :goto_0
    return v1
.end method
