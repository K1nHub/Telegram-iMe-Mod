.class Lorg/telegram/ui/Components/EmojiPacksAlert$SeparatorView;
.super Landroid/view/View;
.source "EmojiPacksAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiPacksAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeparatorView"
.end annotation


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiPacksAlert;Landroid/content/Context;)V
    .locals 1

    .line 1190
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string p2, "chat_emojiPanelShadowLine"

    .line 1191
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$3900(Lorg/telegram/ui/Components/EmojiPacksAlert;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1192
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result p2

    const/4 v0, -0x1

    invoke-direct {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/16 p2, 0xe

    .line 1193
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1194
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
