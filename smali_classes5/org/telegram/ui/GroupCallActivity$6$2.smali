.class Lorg/telegram/ui/GroupCallActivity$6$2;
.super Ljava/lang/Object;
.source "GroupCallActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity$6;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ignoreTextChange:Z

.field final synthetic val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity$6;Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 2056
    iput-object p2, p0, Lorg/telegram/ui/GroupCallActivity$6$2;->val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 2072
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$6$2;->ignoreTextChange:Z

    if-eqz v0, :cond_0

    return-void

    .line 2075
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    .line 2076
    iput-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$6$2;->ignoreTextChange:Z

    .line 2077
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2078
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6$2;->val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    .line 2079
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6$2;->val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->performHapticFeedback(II)Z

    const/4 p1, 0x0

    .line 2080
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCallActivity$6$2;->ignoreTextChange:Z

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
