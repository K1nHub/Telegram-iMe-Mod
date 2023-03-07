.class Lorg/telegram/ui/CodeFieldContainer$1;
.super Lorg/telegram/ui/CodeNumberField;
.source "CodeFieldContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CodeFieldContainer;->setNumbersCount(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CodeFieldContainer;

.field final synthetic val$length:I

.field final synthetic val$num:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/CodeFieldContainer;Landroid/content/Context;II)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/telegram/ui/CodeFieldContainer$1;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iput p3, p0, Lorg/telegram/ui/CodeFieldContainer$1;->val$num:I

    iput p4, p0, Lorg/telegram/ui/CodeFieldContainer$1;->val$length:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/CodeNumberField;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 118
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    return v1

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 122
    iget v2, p0, Lorg/telegram/ui/CodeFieldContainer$1;->val$num:I

    iget-object v3, p0, Lorg/telegram/ui/CodeFieldContainer$1;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v3, v3, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    return v1

    .line 125
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_a

    const-string p1, ""

    const/16 v3, 0x43

    if-ne v0, v3, :cond_2

    .line 126
    iget-object v4, p0, Lorg/telegram/ui/CodeFieldContainer$1;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v4, v4, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    iget v5, p0, Lorg/telegram/ui/CodeFieldContainer$1;->val$num:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/CodeFieldContainer$1;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    iget v1, p0, Lorg/telegram/ui/CodeFieldContainer$1;->val$num:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/CodeNumberField;->startExitAnimation()V

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/CodeFieldContainer$1;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    iget v1, p0, Lorg/telegram/ui/CodeFieldContainer$1;->val$num:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return v2

    :cond_2
    if-ne v0, v3, :cond_5

    .line 130
    iget-object v3, p0, Lorg/telegram/ui/CodeFieldContainer$1;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v3, v3, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    iget v4, p0, Lorg/telegram/ui/CodeFieldContainer$1;->val$num:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-nez v3, :cond_5

    iget v3, p0, Lorg/telegram/ui/CodeFieldContainer$1;->val$num:I

    if-lez v3, :cond_5

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/CodeFieldContainer$1;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    add-int/lit8 v4, v3, -0x1

    aget-object v4, v0, v4

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 132
    :goto_0
    iget v0, p0, Lorg/telegram/ui/CodeFieldContainer$1;->val$num:I

    if-ge v1, v0, :cond_4

    add-int/lit8 v3, v0, -0x1

    if-ne v1, v3, :cond_3

    .line 134
    iget-object v3, p0, Lorg/telegram/ui/CodeFieldContainer$1;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v3, v3, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v3, v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 136
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/CodeFieldContainer$1;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/CodeFieldContainer$1;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/telegram/ui/CodeNumberField;->startExitAnimation()V

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/CodeFieldContainer$1;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    iget v1, p0, Lorg/telegram/ui/CodeFieldContainer$1;->val$num:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return v2

    :cond_5
    const/4 p1, 0x7

    if-lt v0, p1, :cond_9

    const/16 v1, 0x10

    if-gt v0, v1, :cond_9

    sub-int/2addr v0, p1

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/CodeFieldContainer$1;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    iget v1, p0, Lorg/telegram/ui/CodeFieldContainer$1;->val$num:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/CodeFieldContainer$1;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    iget v1, p0, Lorg/telegram/ui/CodeFieldContainer$1;->val$num:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 146
    iget p1, p0, Lorg/telegram/ui/CodeFieldContainer$1;->val$num:I

    iget v0, p0, Lorg/telegram/ui/CodeFieldContainer$1;->val$length:I

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_6

    .line 147
    iget-object p1, p0, Lorg/telegram/ui/CodeFieldContainer$1;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/CodeFieldContainer;->processNextPressed()V

    goto :goto_2

    .line 149
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/CodeFieldContainer$1;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    add-int/2addr p1, v2

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :goto_2
    return v2

    .line 153
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/CodeFieldContainer$1;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    iget v1, p0, Lorg/telegram/ui/CodeFieldContainer$1;->val$num:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/CodeFieldContainer$1;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    iget v1, p0, Lorg/telegram/ui/CodeFieldContainer$1;->val$num:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/CodeNumberField;->startExitAnimation()V

    .line 156
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/CodeFieldContainer$1;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    iget v1, p0, Lorg/telegram/ui/CodeFieldContainer$1;->val$num:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return v2

    .line 161
    :cond_a
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    return p1
.end method
