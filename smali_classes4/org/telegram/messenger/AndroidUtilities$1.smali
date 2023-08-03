.class Lorg/telegram/messenger/AndroidUtilities$1;
.super Landroid/text/style/ClickableSpan;
.source "AndroidUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$colorKey:I

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(ILjava/lang/Runnable;)V
    .locals 0

    .line 603
    iput p1, p0, Lorg/telegram/messenger/AndroidUtilities$1;->val$colorKey:I

    iput-object p2, p0, Lorg/telegram/messenger/AndroidUtilities$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 616
    iget-object p1, p0, Lorg/telegram/messenger/AndroidUtilities$1;->val$runnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 617
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 607
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    .line 608
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 609
    iget v0, p0, Lorg/telegram/messenger/AndroidUtilities$1;->val$colorKey:I

    if-ltz v0, :cond_0

    .line 610
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :cond_0
    return-void
.end method
