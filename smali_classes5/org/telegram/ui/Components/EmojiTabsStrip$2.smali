.class Lorg/telegram/ui/Components/EmojiTabsStrip$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EmojiTabsStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiTabsStrip;->updateEmojiPacks(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

.field final synthetic val$emojipackTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$2;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$2;->val$emojipackTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 442
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$2;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$200(Lorg/telegram/ui/Components/EmojiTabsStrip;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$2;->val$emojipackTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$2;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
