.class Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;
.super Landroid/text/style/CharacterStyle;
.source "MessageContainsEmojiButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/MessageContainsEmojiButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoldAndAccent"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/MessageContainsEmojiButton;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;->this$0:Lorg/telegram/ui/Components/MessageContainsEmojiButton;

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;Lorg/telegram/ui/Components/MessageContainsEmojiButton$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;-><init>(Lorg/telegram/ui/Components/MessageContainsEmojiButton;)V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    const-string v0, "fonts/rmedium.ttf"

    .line 61
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 62
    invoke-virtual {p1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    .line 63
    iget-object v1, p0, Lorg/telegram/ui/Components/MessageContainsEmojiButton$BoldAndAccent;->this$0:Lorg/telegram/ui/Components/MessageContainsEmojiButton;

    invoke-static {v1}, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->access$000(Lorg/telegram/ui/Components/MessageContainsEmojiButton;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    const-string/jumbo v2, "windowBackgroundWhiteBlueText"

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 64
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    return-void
.end method
