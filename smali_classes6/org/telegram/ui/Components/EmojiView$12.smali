.class Lorg/telegram/ui/Components/EmojiView$12;
.super Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
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

    .line 2075
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$12;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 2085
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$12;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$7102(Lorg/telegram/ui/Components/EmojiView;Z)Z

    .line 2087
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 2078
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$12;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$8000(Lorg/telegram/ui/Components/EmojiView;)V

    .line 2079
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
