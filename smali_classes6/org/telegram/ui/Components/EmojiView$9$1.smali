.class Lorg/telegram/ui/Components/EmojiView$9$1;
.super Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$9;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$9;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$9;Landroid/content/Context;I)V
    .locals 0

    .line 1998
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$9$1;->this$1:Lorg/telegram/ui/Components/EmojiView$9;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    .line 2001
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$9$1;->this$1:Lorg/telegram/ui/Components/EmojiView$9;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$7102(Lorg/telegram/ui/Components/EmojiView;Z)Z

    return-void
.end method
