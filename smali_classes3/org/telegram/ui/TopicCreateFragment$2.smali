.class Lorg/telegram/ui/TopicCreateFragment$2;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "TopicCreateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicCreateFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field keyboardWasShown:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/TopicCreateFragment;Landroid/content/Context;)V
    .locals 0

    .line 267
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .line 271
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    .line 272
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/TopicCreateFragment$2;->keyboardWasShown:Z

    if-nez v0, :cond_0

    .line 273
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const/16 v2, 0xc8

    .line 274
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const-string v3, "kbd_height"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    .line 275
    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 277
    iput-boolean v0, p0, Lorg/telegram/ui/TopicCreateFragment$2;->keyboardWasShown:Z

    .line 278
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 280
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
