.class Lorg/fork/ui/view/PinnedPlayerView$3;
.super Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;
.source "PinnedPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/view/PinnedPlayerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/LaunchActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/view/PinnedPlayerView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/fork/ui/view/PinnedPlayerView;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView$3;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    iput-object p3, p0, Lorg/fork/ui/view/PinnedPlayerView$3;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createTextView()Landroid/widget/TextView;
    .locals 5

    .line 217
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView$3;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 218
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView$3;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    const-string v2, "player_time"

    invoke-static {v1, v2}, Lorg/fork/ui/view/PinnedPlayerView;->access$700(Lorg/fork/ui/view/PinnedPlayerView;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    .line 219
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 220
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 221
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v2, 0x6

    .line 222
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 223
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView$3;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    const-string v2, "listSelectorSDK21"

    invoke-static {v1, v2}, Lorg/fork/ui/view/PinnedPlayerView;->access$700(Lorg/fork/ui/view/PinnedPlayerView;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
