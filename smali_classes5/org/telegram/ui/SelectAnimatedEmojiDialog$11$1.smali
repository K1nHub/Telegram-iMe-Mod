.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$11$1;
.super Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;
.source "SelectAnimatedEmojiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog$11;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$11;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$11;Landroid/content/Context;I)V
    .locals 0

    .line 745
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$11$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$11;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    .line 748
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$11$1;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$11;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$11;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$502(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)Z

    return-void
.end method
