.class Lorg/fork/ui/view/PinnedPlayerView$2;
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

    .line 200
    iput-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView$2;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    iput-object p3, p0, Lorg/fork/ui/view/PinnedPlayerView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createTextView()Landroid/widget/TextView;
    .locals 3

    .line 203
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView$2;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 204
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView$2;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    const-string v2, "player_actionBarTitle"

    invoke-static {v1, v2}, Lorg/fork/ui/view/PinnedPlayerView;->access$700(Lorg/fork/ui/view/PinnedPlayerView;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41880000    # 17.0f

    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v2, "fonts/rmedium.ttf"

    .line 206
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 207
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 208
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-object v0
.end method
