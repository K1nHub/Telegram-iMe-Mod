.class Lorg/telegram/ui/Components/EmojiView$10;
.super Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 2244
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public ignoreView(Landroid/view/View;Z)V
    .locals 1

    .line 2260
    instance-of v0, p1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v0, :cond_0

    .line 2261
    check-cast p1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iput-boolean p2, p1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->ignoring:Z

    :cond_0
    return-void
.end method

.method public onEndAnimation()V
    .locals 2

    .line 2254
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$7502(Lorg/telegram/ui/Components/EmojiView;Z)Z

    .line 2255
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->updateEmojiDrawables()V

    return-void
.end method

.method public onPreAnimation()V
    .locals 2

    .line 2248
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->updateEmojiDrawables()V

    .line 2249
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$10;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$7502(Lorg/telegram/ui/Components/EmojiView;Z)Z

    return-void
.end method
