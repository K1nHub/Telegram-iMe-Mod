.class Lorg/telegram/ui/PeerColorActivity$6;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.source "PeerColorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PeerColorActivity;->showSelectStatusDialog(Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PeerColorActivity;

.field final synthetic val$cell:Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;

.field final synthetic val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IILorg/telegram/ui/PeerColorActivity$SetReplyIconCell;[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    .line 705
    iput-object v0, v10, Lorg/telegram/ui/PeerColorActivity$6;->this$0:Lorg/telegram/ui/PeerColorActivity;

    move-object/from16 v0, p11

    iput-object v0, v10, Lorg/telegram/ui/PeerColorActivity$6;->val$cell:Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;

    move-object/from16 v0, p12

    iput-object v0, v10, Lorg/telegram/ui/PeerColorActivity$6;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    return-void
.end method


# virtual methods
.method protected getScrimDrawableTranslationY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V
    .locals 0

    .line 708
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$6;->this$0:Lorg/telegram/ui/PeerColorActivity;

    if-nez p2, :cond_0

    const-wide/16 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :goto_0
    invoke-static {p1, p2, p3}, Lorg/telegram/ui/PeerColorActivity;->access$1102(Lorg/telegram/ui/PeerColorActivity;J)J

    .line 709
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$6;->val$cell:Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 710
    invoke-virtual {p1, p2}, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->update(Z)V

    .line 712
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$6;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$1000(Lorg/telegram/ui/PeerColorActivity;)V

    .line 713
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$6;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    if-eqz p1, :cond_2

    .line 714
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$6;->this$0:Lorg/telegram/ui/PeerColorActivity;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lorg/telegram/ui/PeerColorActivity;->access$1402(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    .line 715
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$6;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    :cond_2
    return-void
.end method
