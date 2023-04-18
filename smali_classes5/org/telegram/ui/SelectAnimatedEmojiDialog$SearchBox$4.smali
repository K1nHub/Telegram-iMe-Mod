.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$4;
.super Lorg/telegram/ui/Components/CloseProgressDrawable2;
.source "SelectAnimatedEmojiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;FLorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 4125
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$4;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/CloseProgressDrawable2;-><init>(F)V

    const/4 p1, 0x7

    .line 4126
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->setSide(I)V

    return-void
.end method


# virtual methods
.method protected getCurrentColor()I
    .locals 2

    .line 4129
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$4;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    const-string v1, "chat_emojiSearchIcon"

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    return v0
.end method
