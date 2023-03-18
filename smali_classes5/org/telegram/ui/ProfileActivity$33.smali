.class Lorg/telegram/ui/ProfileActivity$33;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->showStatusSelect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field final synthetic val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;


# direct methods
.method public static synthetic $r8$lambda$trfsxNoo7fZJxPuDC-Kyh0DRDUQ(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ProfileActivity$33;->lambda$onEmojiSelected$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    .line 5104
    iput-object v0, v8, Lorg/telegram/ui/ProfileActivity$33;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v0, p9

    iput-object v0, v8, Lorg/telegram/ui/ProfileActivity$33;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method

.method private static synthetic lambda$onEmojiSelected$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 5140
    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    return-void
.end method


# virtual methods
.method protected onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V
    .locals 5

    .line 5107
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_updateEmojiStatus;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateEmojiStatus;-><init>()V

    if-nez p2, :cond_0

    .line 5109
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;-><init>()V

    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_account_updateEmojiStatus;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 5111
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;-><init>()V

    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_account_updateEmojiStatus;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 5112
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->document_id:J

    .line 5113
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_account_updateEmojiStatus;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    iput p4, p3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->until:I

    goto :goto_0

    .line 5115
    :cond_1
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;-><init>()V

    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_account_updateEmojiStatus;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 5116
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    .line 5118
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/ProfileActivity$33;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p3}, Lorg/telegram/ui/ProfileActivity;->access$18200(Lorg/telegram/ui/ProfileActivity;)I

    move-result p3

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$33;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p4}, Lorg/telegram/ui/ProfileActivity;->access$18100(Lorg/telegram/ui/ProfileActivity;)I

    move-result p4

    invoke-static {p4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, p4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 5120
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_account_updateEmojiStatus;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 5121
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$33;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$18300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->updateEmojiStatusUntilUpdate(JLorg/telegram/tgnet/TLRPC$EmojiStatus;)V

    .line 5122
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$33;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$18400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->userEmojiStatusUpdated:I

    new-array v3, p4, [Ljava/lang/Object;

    aput-object p3, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 5124
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/ProfileActivity$33;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p3}, Lorg/telegram/ui/ProfileActivity;->access$18500(Lorg/telegram/ui/ProfileActivity;)I

    move-result p3

    invoke-static {p3}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result p3

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_6

    .line 5126
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$33;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$13000(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    if-eqz p2, :cond_4

    if-nez p3, :cond_3

    goto :goto_2

    .line 5130
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$33;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$13000(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)V

    goto :goto_3

    .line 5128
    :cond_4
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$33;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$13000(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$33;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$18600(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    .line 5135
    iget-object p3, p0, Lorg/telegram/ui/ProfileActivity$33;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p3}, Lorg/telegram/ui/ProfileActivity;->access$18700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;

    move-result-object p3

    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromCustomEmoji(Ljava/lang/Long;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->animateChange(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 5137
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$33;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->access$18800(Lorg/telegram/ui/ProfileActivity;)V

    .line 5138
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$33;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->access$18900(Lorg/telegram/ui/ProfileActivity;)V

    .line 5139
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$33;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->access$19000(Lorg/telegram/ui/ProfileActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    sget-object p3, Lorg/telegram/ui/ProfileActivity$33$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/ui/ProfileActivity$33$$ExternalSyntheticLambda0;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 5144
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$33;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    aget-object p1, p1, v0

    if-eqz p1, :cond_8

    .line 5145
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$33;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->access$13102(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    .line 5146
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$33;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    :cond_8
    return-void
.end method
