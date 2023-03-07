.class Lorg/telegram/messenger/AndroidUtilities$2;
.super Landroid/text/style/CharacterStyle;
.source "AndroidUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 624
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    const-string v0, "fonts/rmedium.ttf"

    .line 627
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 628
    invoke-virtual {p1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    const-string v1, "windowBackgroundWhiteBlueText"

    .line 629
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 630
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    return-void
.end method
