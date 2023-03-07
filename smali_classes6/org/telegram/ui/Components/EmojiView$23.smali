.class Lorg/telegram/ui/Components/EmojiView$23;
.super Landroid/widget/FrameLayout;
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
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 0

    .line 2987
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 2990
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2991
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$11602(Lorg/telegram/ui/Components/EmojiView;Z)Z

    .line 2992
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$200(Lorg/telegram/ui/Components/EmojiView;Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 2997
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2998
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$11602(Lorg/telegram/ui/Components/EmojiView;Z)Z

    .line 2999
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$23;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$200(Lorg/telegram/ui/Components/EmojiView;Z)V

    return-void
.end method
