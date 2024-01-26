.class Lorg/telegram/ui/Components/EmojiView$SearchField$5;
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

    .line 1181
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$5;->this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/CloseProgressDrawable2;-><init>(F)V

    const/4 p1, 0x7

    .line 1182
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->setSide(I)V

    return-void
.end method


# virtual methods
.method protected getCurrentColor()I
    .locals 2

    .line 1185
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchIcon:I

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$5;->this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    return v0
.end method
