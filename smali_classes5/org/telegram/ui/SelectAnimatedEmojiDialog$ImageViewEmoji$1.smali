.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$1;
.super Ljava/lang/Object;
.source "SelectAnimatedEmojiDialog.java"

# interfaces
.implements Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V
    .locals 0

    .line 2591
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 2594
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2595
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
