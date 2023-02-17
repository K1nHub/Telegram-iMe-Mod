.class Lorg/telegram/ui/Components/EmojiView$15;
.super Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Z)V
    .locals 0

    .line 2476
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public scrollToPositionWithOffset(II)V
    .locals 0

    .line 2479
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method
