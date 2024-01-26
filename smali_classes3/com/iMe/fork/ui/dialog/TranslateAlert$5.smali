.class Lcom/iMe/fork/ui/dialog/TranslateAlert$5;
.super Landroid/widget/TextView;
.source "TranslateAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/TranslateAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ZLcom/iMe/fork/ui/dialog/TranslateAlert$OnLinkPress;Ljava/lang/Runnable;Lcom/iMe/model/translation/TranslationArgs;Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/content/Context;)V
    .locals 0

    .line 895
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$5;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 903
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 904
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 905
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$5;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$1500(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$5;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$1500(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 906
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 898
    invoke-static {}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$1400()I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 5

    const v0, 0x1020021

    if-ne p1, v0, :cond_0

    .line 912
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 916
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 917
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 918
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 916
    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "label"

    .line 914
    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 921
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 922
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$5;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$1600(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->TextCopied:I

    const-string v1, "TextCopied"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 923
    invoke-virtual {p0}, Landroid/widget/TextView;->clearFocus()V

    const/4 p1, 0x1

    return p1

    .line 926
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method
