.class Lorg/telegram/ui/Components/Paint/Views/TextPaintView$2;
.super Ljava/lang/Object;
.source "TextPaintView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILjava/lang/CharSequence;Lorg/telegram/ui/Components/Paint/Swatch;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private beforeCursorPosition:I

.field private text:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 110
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$2;->beforeCursorPosition:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 125
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->access$000(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->access$000(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getLineCount()I

    move-result p1

    const/16 v0, 0x9

    if-le p1, v0, :cond_0

    .line 128
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->access$000(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$2;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->access$000(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$2;->beforeCursorPosition:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 132
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->access$100(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)V

    .line 134
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->access$000(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 114
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$2;->text:Ljava/lang/String;

    .line 115
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$2;->beforeCursorPosition:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
