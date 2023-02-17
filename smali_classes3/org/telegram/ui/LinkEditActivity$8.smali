.class Lorg/telegram/ui/LinkEditActivity$8;
.super Ljava/lang/Object;
.source "LinkEditActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LinkEditActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LinkEditActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LinkEditActivity;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lorg/telegram/ui/LinkEditActivity$8;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 437
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 438
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity$8;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/LinkEditActivity;->access$300(Lorg/telegram/ui/LinkEditActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/LinkEditActivity$8;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/LinkEditActivity;->access$300(Lorg/telegram/ui/LinkEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    .line 439
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity$8;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/LinkEditActivity;->access$300(Lorg/telegram/ui/LinkEditActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    .line 440
    iget-object v1, p0, Lorg/telegram/ui/LinkEditActivity$8;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/LinkEditActivity;->access$300(Lorg/telegram/ui/LinkEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 441
    iget-object v1, p0, Lorg/telegram/ui/LinkEditActivity$8;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/LinkEditActivity;->access$300(Lorg/telegram/ui/LinkEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-ltz p1, :cond_0

    .line 443
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity$8;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/LinkEditActivity;->access$300(Lorg/telegram/ui/LinkEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 445
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity$8;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/LinkEditActivity;->access$300(Lorg/telegram/ui/LinkEditActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

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
