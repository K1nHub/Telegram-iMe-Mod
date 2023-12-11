.class Lorg/telegram/ui/ChatActivity$50;
.super Lorg/telegram/ui/EmojiAnimationsOverlay;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/RecyclerListView;IJI)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    .line 9409
    iput-object v0, v8, Lorg/telegram/ui/ChatActivity$50;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-wide v5, p6

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/EmojiAnimationsOverlay;-><init>(Lorg/telegram/ui/ChatActivity;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/RecyclerListView;IJI)V

    return-void
.end method


# virtual methods
.method public onAllEffectsEnd()V
    .locals 2

    .line 9412
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$50;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->updateMessagesVisiblePart(Z)V

    return-void
.end method
