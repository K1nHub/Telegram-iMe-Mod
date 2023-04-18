.class Lorg/telegram/ui/Components/EmojiView$11;
.super Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 2247
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$11;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 2257
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$11;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$7402(Lorg/telegram/ui/Components/EmojiView;Z)Z

    .line 2259
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 2250
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$11;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$8500(Lorg/telegram/ui/Components/EmojiView;)V

    .line 2251
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
