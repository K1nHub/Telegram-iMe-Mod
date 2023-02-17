.class Lorg/telegram/ui/CodeFieldContainer$2;
.super Ljava/lang/Object;
.source "CodeFieldContainer.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
.method constructor <init>(Lorg/telegram/ui/CodeFieldContainer;II)V
    .locals 0

    .line 193
    iput-object p1, p0, Lorg/telegram/ui/CodeFieldContainer$2;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iput p2, p0, Lorg/telegram/ui/CodeFieldContainer$2;->val$num:I

    iput p3, p0, Lorg/telegram/ui/CodeFieldContainer$2;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/CodeFieldContainer$2;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iget-boolean v0, v0, Lorg/telegram/ui/CodeFieldContainer;->ignoreOnTextChange:Z

    if-eqz v0, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    .line 209
    iget v2, p0, Lorg/telegram/ui/CodeFieldContainer$2;->val$num:I

    if-le v0, v1, :cond_3

    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    iget-object v4, p0, Lorg/telegram/ui/CodeFieldContainer$2;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iput-boolean v1, v4, Lorg/telegram/ui/CodeFieldContainer;->ignoreOnTextChange:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 213
    :goto_0
    iget v6, p0, Lorg/telegram/ui/CodeFieldContainer$2;->val$length:I

    iget v7, p0, Lorg/telegram/ui/CodeFieldContainer$2;->val$num:I

    sub-int/2addr v6, v7

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_2

    if-nez v5, :cond_1

    add-int/lit8 v6, v5, 0x1

    .line 215
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v0, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 218
    iget-object v6, p0, Lorg/telegram/ui/CodeFieldContainer$2;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v6, v6, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    iget v7, p0, Lorg/telegram/ui/CodeFieldContainer$2;->val$num:I

    add-int/2addr v7, v5

    aget-object v6, v6, v7

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 221
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/CodeFieldContainer$2;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iput-boolean v4, p1, Lorg/telegram/ui/CodeFieldContainer;->ignoreOnTextChange:Z

    .line 225
    :cond_3
    iget p1, p0, Lorg/telegram/ui/CodeFieldContainer$2;->val$length:I

    sub-int/2addr p1, v1

    if-eq v2, p1, :cond_4

    add-int/lit8 p1, v2, 0x1

    iget-object v1, p0, Lorg/telegram/ui/CodeFieldContainer$2;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v1

    if-ge p1, v3, :cond_4

    .line 226
    aget-object v3, v1, p1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 227
    iget-object v1, p0, Lorg/telegram/ui/CodeFieldContainer$2;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 229
    :cond_4
    iget p1, p0, Lorg/telegram/ui/CodeFieldContainer$2;->val$length:I

    add-int/lit8 v1, p1, -0x1

    if-eq v2, v1, :cond_5

    const/4 v1, 0x2

    sub-int/2addr p1, v1

    if-ne v2, p1, :cond_6

    if-lt v0, v1, :cond_6

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/CodeFieldContainer$2;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/CodeFieldContainer$2;->val$length:I

    if-ne p1, v0, :cond_6

    .line 230
    iget-object p1, p0, Lorg/telegram/ui/CodeFieldContainer$2;->this$0:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/CodeFieldContainer;->processNextPressed()V

    :cond_6
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
