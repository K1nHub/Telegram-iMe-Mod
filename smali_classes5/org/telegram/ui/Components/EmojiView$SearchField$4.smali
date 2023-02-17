.class Lorg/telegram/ui/Components/EmojiView$SearchField$4;
.super Lorg/telegram/ui/Components/CloseProgressDrawable2;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$SearchField;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$SearchField;FLorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 1162
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$4;->this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/CloseProgressDrawable2;-><init>(F)V

    const/4 p1, 0x7

    .line 1163
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->setSide(I)V

    return-void
.end method


# virtual methods
.method protected getCurrentColor()I
    .locals 2

    .line 1166
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$4;->this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    const-string v1, "chat_emojiSearchIcon"

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    return v0
.end method
