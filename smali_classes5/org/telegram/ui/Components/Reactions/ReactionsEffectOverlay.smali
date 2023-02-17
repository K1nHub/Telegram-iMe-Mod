.class public Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;
.super Ljava/lang/Object;
.source "ReactionsEffectOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;,
        Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;
    }
.end annotation


# static fields
.field public static currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

.field public static currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

.field private static lastHapticTime:J

.field private static uniqPrefix:I


# instance fields
.field animateInProgress:F

.field animateOutProgress:F

.field private final animationType:I

.field avatars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;",
            ">;"
        }
    .end annotation
.end field

.field private cell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private final container:Landroid/widget/FrameLayout;

.field private decorView:Landroid/view/ViewGroup;

.field private dismissProgress:F

.field private dismissed:Z

.field private final effectImageView:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

.field private final emojiImageView:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

.field private final emojiStaticImageView:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

.field private finished:Z

.field private final groupId:J

.field private holderView:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

.field private lastDrawnToX:F

.field private lastDrawnToY:F

.field loc:[I

.field private final messageId:I

.field private final reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field startTime:J

.field private started:Z

.field private useWindow:Z

.field private wasScrolled:Z

.field private windowManager:Landroid/view/WindowManager;

.field windowView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;II)V
    .locals 34

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v0, p3

    move-object/from16 v12, p4

    move-object/from16 v1, p5

    move-object/from16 v11, p8

    move/from16 v10, p9

    move/from16 v9, p10

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x2

    new-array v2, v8, [I

    .line 65
    iput-object v2, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    const/4 v7, 0x0

    .line 75
    iput-object v7, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->holderView:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    .line 88
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->messageId:I

    .line 89
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v2

    iput-wide v2, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->groupId:J

    .line 90
    iput-object v11, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 91
    iput v9, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animationType:I

    .line 93
    iput-object v12, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 94
    invoke-virtual {v12, v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getReactionButton(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    move-result-object v2

    .line 96
    instance-of v3, v15, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_0

    move-object v3, v15

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    move-object v5, v3

    goto :goto_0

    :cond_0
    move-object v5, v7

    :goto_0
    if-eqz v0, :cond_2

    const/4 v3, 0x0

    .line 98
    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 99
    iget-object v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v4, :cond_1

    .line 100
    iget-object v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v4, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object v8, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    iget-object v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iput-object v0, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->holderView:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x2

    goto :goto_1

    :cond_2
    :goto_2
    const-wide/16 v17, 0x0

    const/4 v8, 0x1

    if-ne v9, v8, :cond_d

    .line 109
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 111
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz v8, :cond_3

    .line 112
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    goto :goto_3

    :cond_3
    move-object v8, v7

    :goto_3
    if-eqz v8, :cond_d

    if-eqz v5, :cond_d

    .line 114
    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v19

    cmp-long v21, v19, v17

    if-gez v21, :cond_d

    const/4 v6, 0x0

    .line 115
    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_d

    .line 116
    iget-object v3, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->unread:Z

    if-eqz v0, :cond_c

    .line 120
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 121
    new-instance v3, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v3}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    .line 122
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v7, v21

    check-cast v7, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v21, v8

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    cmp-long v24, v7, v17

    if-gez v24, :cond_5

    .line 124
    invoke-static/range {p9 .. p9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    neg-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_5

    .line 128
    :cond_4
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 129
    invoke-virtual {v3, v7, v0}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 131
    :cond_5
    invoke-static/range {p9 .. p9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    if-nez v7, :cond_6

    :goto_5
    move-object/from16 v30, v4

    goto/16 :goto_a

    .line 135
    :cond_6
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 136
    invoke-virtual {v3, v7, v0}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    .line 139
    :goto_6
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;

    const/4 v7, 0x0

    invoke-direct {v0, v13, v7}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;)V

    .line 140
    iput-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v3, 0x3f000000    # 0.5f

    .line 141
    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->fromX:F

    .line 142
    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->fromY:F

    const v3, 0x3e99999a    # 0.3f

    .line 143
    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v8

    rem-int/lit8 v8, v8, 0x64

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v8, v10

    const v23, 0x3dcccccd    # 0.1f

    mul-float v8, v8, v23

    add-float/2addr v8, v3

    iput v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->jumpY:F

    .line 144
    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v3

    rem-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    const v8, 0x3ecccccd    # 0.4f

    mul-float v3, v3, v8

    const v22, 0x3f4ccccd    # 0.8f

    add-float v3, v3, v22

    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->randomScale:F

    .line 145
    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v3

    rem-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    int-to-float v3, v3

    div-float/2addr v3, v10

    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->randomRotation:F

    const/high16 v3, 0x43c80000    # 400.0f

    .line 146
    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v23

    rem-int/lit8 v23, v23, 0x64

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    const/high16 v23, 0x43480000    # 200.0f

    mul-float v7, v7, v23

    add-float/2addr v7, v3

    float-to-int v3, v7

    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->leftTime:I

    .line 148
    iget-object v3, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const v7, 0x3f19999a    # 0.6f

    const v23, 0x3e4ccccd    # 0.2f

    if-eqz v3, :cond_7

    .line 149
    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v3

    rem-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v7

    div-float/2addr v3, v10

    add-float v3, v3, v23

    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->toX:F

    .line 150
    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v3

    rem-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v8

    div-float/2addr v3, v10

    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->toY:F

    move-object/from16 v30, v4

    goto/16 :goto_9

    :cond_7
    const/4 v3, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_7
    const/16 v8, 0xa

    if-ge v3, v8, :cond_b

    .line 156
    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v8

    rem-int/lit8 v8, v8, 0x64

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v7

    div-float/2addr v8, v10

    add-float v8, v8, v23

    .line 157
    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v29

    rem-int/lit8 v29, v29, 0x64

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    const v28, 0x3ecccccd    # 0.4f

    mul-float v7, v7, v28

    div-float/2addr v7, v10

    add-float v7, v7, v23

    const/high16 v29, 0x4f000000

    move-object/from16 v30, v4

    const/4 v10, 0x0

    .line 159
    :goto_8
    iget-object v4, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_9

    .line 160
    iget-object v4, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;

    iget v4, v4, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->toX:F

    sub-float/2addr v4, v8

    move/from16 v31, v8

    .line 161
    iget-object v8, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;

    iget v8, v8, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->toY:F

    sub-float/2addr v8, v7

    mul-float v4, v4, v4

    mul-float v8, v8, v8

    add-float/2addr v4, v8

    cmpg-float v8, v4, v29

    if-gez v8, :cond_8

    move/from16 v29, v4

    :cond_8
    add-int/lit8 v10, v10, 0x1

    move/from16 v8, v31

    goto :goto_8

    :cond_9
    move/from16 v31, v8

    cmpl-float v4, v29, v27

    if-lez v4, :cond_a

    move/from16 v26, v7

    move/from16 v27, v29

    move/from16 v25, v31

    :cond_a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v30

    const v7, 0x3f19999a    # 0.6f

    const/high16 v10, 0x42c80000    # 100.0f

    goto :goto_7

    :cond_b
    move-object/from16 v30, v4

    move/from16 v3, v25

    .line 173
    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->toX:F

    move/from16 v3, v26

    .line 174
    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->toY:F

    .line 177
    :goto_9
    iget-object v3, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_c
    move-object/from16 v30, v4

    move-object/from16 v21, v8

    :goto_a
    add-int/lit8 v6, v6, 0x1

    move/from16 v10, p9

    move-object/from16 v8, v21

    move-object/from16 v4, v30

    const/4 v7, 0x0

    goto/16 :goto_4

    .line 183
    :cond_d
    iget-object v0, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->holderView:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-nez v0, :cond_f

    const/4 v3, 0x0

    cmpl-float v4, p6, v3

    if-eqz v4, :cond_e

    cmpl-float v4, p7, v3

    if-eqz v4, :cond_e

    goto :goto_b

    :cond_e
    const/4 v8, 0x0

    goto :goto_c

    :cond_f
    :goto_b
    const/4 v8, 0x1

    :goto_c
    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_11

    .line 185
    iget-object v0, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 186
    iget-object v0, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    const/4 v2, 0x0

    aget v4, v0, v2

    int-to-float v2, v4

    const/4 v4, 0x1

    .line 187
    aget v0, v0, v4

    int-to-float v0, v0

    .line 188
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getScaleX()F

    move-result v6

    mul-float v4, v4, v6

    .line 190
    instance-of v6, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v6, :cond_10

    .line 191
    move-object v6, v1

    check-cast v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 192
    iget v6, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->bigReactionSelectedProgress:F

    const/4 v7, 0x0

    cmpl-float v10, v6, v7

    if-lez v10, :cond_10

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v6, v6, v3

    add-float/2addr v6, v4

    .line 194
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v6

    .line 195
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v4, v6

    div-float/2addr v6, v3

    sub-float/2addr v2, v6

    .line 196
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v4, v1

    sub-float/2addr v0, v1

    :cond_10
    move/from16 v16, v0

    move v10, v2

    move v2, v4

    goto :goto_e

    :cond_11
    if-eqz v0, :cond_12

    .line 203
    iget-object v1, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 204
    iget-object v0, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    iget-object v1, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->holderView:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    .line 205
    iget-object v1, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->holderView:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    .line 206
    iget-object v2, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->holderView:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->holderView:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v4

    mul-float v2, v2, v4

    :goto_d
    move v10, v0

    move/from16 v16, v1

    :goto_e
    const/4 v6, 0x0

    :goto_f
    const/4 v7, 0x2

    goto :goto_10

    :cond_12
    if-eqz v2, :cond_13

    .line 208
    iget-object v0, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 209
    iget-object v0, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, v12, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    add-int/2addr v0, v1

    iget v1, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    add-float/2addr v0, v1

    .line 210
    iget-object v1, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    const/4 v4, 0x1

    aget v1, v1, v4

    iget-object v4, v12, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v4, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    add-int/2addr v1, v4

    iget v4, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget-object v4, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v4

    add-float/2addr v1, v4

    .line 211
    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v2

    goto :goto_d

    .line 213
    :cond_13
    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 214
    iget-object v0, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    const/4 v6, 0x0

    aget v1, v0, v6

    int-to-float v1, v1

    add-float v1, v1, p6

    const/4 v2, 0x1

    .line 215
    aget v0, v0, v2

    int-to-float v0, v0

    add-float v0, v0, p7

    move/from16 v16, v0

    move v10, v1

    const/4 v2, 0x0

    goto :goto_f

    :goto_10
    if-ne v9, v7, :cond_14

    const/16 v0, 0x22

    .line 222
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v1, v0

    mul-float v1, v1, v3

    .line 223
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    move v3, v0

    const/4 v4, 0x1

    goto :goto_12

    :cond_14
    const/4 v4, 0x1

    if-ne v9, v4, :cond_15

    const/16 v0, 0x50

    .line 225
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 226
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->sizeForAroundReaction()I

    move-result v1

    goto :goto_11

    :cond_15
    const/16 v0, 0x15e

    .line 228
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 229
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->sizeForBigReaction()I

    move-result v1

    :goto_11
    move v3, v0

    :goto_12
    shr-int/lit8 v0, v3, 0x1

    shr-int/lit8 v15, v1, 0x1

    int-to-float v4, v0

    div-float v19, v2, v4

    const/4 v2, 0x0

    .line 236
    iput v2, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateInProgress:F

    .line 237
    iput v2, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateOutProgress:F

    .line 239
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v14}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->container:Landroid/widget/FrameLayout;

    .line 240
    new-instance v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;

    move/from16 p5, v0

    move-object v0, v2

    move/from16 p6, v15

    move v15, v1

    move-object/from16 v1, p0

    move/from16 v20, v15

    move-object v15, v2

    move-object/from16 v2, p1

    move/from16 v32, v3

    move-object/from16 v3, p2

    move-object/from16 v33, v4

    const/16 v21, 0x1

    move-object/from16 v4, p4

    move/from16 v6, p5

    const/16 v22, 0x0

    const/16 v23, 0x2

    move/from16 v7, p10

    move/from16 v9, v19

    move/from16 v11, v16

    move-object/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/ChatActivity;IIZFFFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    iput-object v15, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    .line 514
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    invoke-direct {v0, v13, v14}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;Landroid/content/Context;)V

    iput-object v0, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->effectImageView:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    .line 515
    new-instance v8, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    invoke-direct {v8, v13, v14}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;Landroid/content/Context;)V

    iput-object v8, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->emojiImageView:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    .line 516
    new-instance v9, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    invoke-direct {v9, v13, v14}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;Landroid/content/Context;)V

    iput-object v9, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->emojiStaticImageView:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-object/from16 v1, p8

    .line 518
    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 519
    invoke-static/range {p9 .. p9}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    move-object v10, v7

    goto :goto_13

    :cond_16
    move-object/from16 v10, v22

    :goto_13
    if-nez v10, :cond_18

    .line 521
    iget-wide v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    cmp-long v4, v2, v17

    if-eqz v4, :cond_17

    goto :goto_14

    :cond_17
    const/4 v11, 0x1

    .line 625
    iput-boolean v11, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissed:Z

    goto/16 :goto_1e

    :cond_18
    :goto_14
    const/4 v11, 0x1

    if-eqz v10, :cond_21

    const-string v1, "_"

    move/from16 v12, p10

    const/4 v14, 0x2

    if-eq v12, v14, :cond_1e

    if-ne v12, v11, :cond_19

    .line 524
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLiteMode()Lorg/telegram/messenger/SharedConfig$LiteMode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/SharedConfig$LiteMode;->enabled()Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_19
    if-nez v12, :cond_1d

    :cond_1a
    if-ne v12, v11, :cond_1b

    .line 525
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_15

    :cond_1b
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->effect_animation:Lorg/telegram/tgnet/TLRPC$Document;

    :goto_15
    if-ne v12, v11, :cond_1c

    .line 526
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->getFilterForAroundAnimation()Ljava/lang/String;

    move-result-object v3

    goto :goto_16

    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v4, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_16
    move-object/from16 v25, v3

    .line 527
    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->uniqPrefix:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->uniqPrefix:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    .line 528
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v29}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    .line 530
    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 531
    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2, v15}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    goto :goto_17

    :cond_1d
    const/4 v15, 0x0

    .line 534
    :goto_17
    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 535
    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    invoke-virtual {v2, v15, v15}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 536
    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_18

    :cond_1e
    const/4 v15, 0x0

    :cond_1f
    :goto_18
    if-ne v12, v14, :cond_20

    .line 541
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->appear_animation:Lorg/telegram/tgnet/TLRPC$Document;

    .line 542
    invoke-virtual {v8}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->uniqPrefix:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->uniqPrefix:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    .line 543
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v4, p6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_1c

    :cond_20
    move/from16 v4, p6

    if-nez v12, :cond_29

    .line 545
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    .line 546
    invoke-virtual {v8}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->uniqPrefix:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->uniqPrefix:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    .line 547
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_1c

    :cond_21
    move/from16 v12, p10

    const/4 v14, 0x2

    const/4 v15, 0x0

    if-nez v12, :cond_22

    .line 551
    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-wide v3, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    move/from16 v5, p9

    invoke-direct {v2, v11, v5, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->setAnimatedReactionDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    goto :goto_19

    :cond_22
    move/from16 v5, p9

    if-ne v12, v14, :cond_23

    .line 553
    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-wide v3, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {v2, v14, v5, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->setAnimatedReactionDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    :cond_23
    :goto_19
    if-eqz v12, :cond_24

    if-ne v12, v11, :cond_29

    .line 556
    :cond_24
    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-wide v3, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {v2, v14, v5, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    .line 558
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->shouldDrawWithoutBackground()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 559
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "chat_outReactionButtonBackground"

    goto :goto_1a

    :cond_25
    const-string v1, "chat_inReactionButtonBackground"

    goto :goto_1a

    .line 560
    :cond_26
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "chat_outReactionButtonTextSelected"

    goto :goto_1a

    :cond_27
    const-string v1, "chat_inReactionButtonTextSelected"

    .line 561
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    .line 557
    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 563
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-nez v12, :cond_28

    const/4 v6, 0x1

    goto :goto_1b

    :cond_28
    const/4 v6, 0x0

    .line 564
    :goto_1b
    invoke-static {v2, v6, v11}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->createFrom(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;ZZ)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->setAnimatedEmojiEffect(Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;)V

    .line 565
    iget-object v1, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v15}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 569
    :cond_29
    :goto_1c
    invoke-virtual {v8}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, v15}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 570
    invoke-virtual {v8}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, v15}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 572
    invoke-virtual {v8}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    if-eqz v1, :cond_2b

    if-ne v12, v14, :cond_2a

    .line 574
    invoke-virtual {v8}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    invoke-virtual {v8}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-virtual {v1, v2, v15}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    goto :goto_1d

    .line 576
    :cond_2a
    invoke-virtual {v8}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    invoke-virtual {v1, v15, v15}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 577
    invoke-virtual {v8}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_2b
    :goto_1d
    move/from16 v2, p5

    move/from16 v1, v32

    sub-int v3, v1, v2

    shr-int/lit8 v4, v3, 0x1

    if-ne v12, v11, :cond_2c

    move v3, v4

    :cond_2c
    move-object/from16 v5, v33

    .line 588
    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 589
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v2, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 590
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 591
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 592
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eq v12, v11, :cond_2e

    if-eqz v10, :cond_2d

    .line 596
    invoke-virtual {v9}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v21

    iget-object v6, v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->center_icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v22

    const/16 v24, 0x0

    const/16 v27, 0x1

    const-string v23, "40_40_lastreactframe"

    const-string/jumbo v25, "webp"

    move-object/from16 v26, v10

    invoke-virtual/range {v21 .. v27}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 598
    :cond_2d
    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 599
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v2, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 600
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 601
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 602
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 605
    :cond_2e
    iget-object v2, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 606
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 607
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 608
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    neg-int v6, v4

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 609
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    neg-int v7, v3

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 612
    iget-object v2, v13, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 613
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 614
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 616
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 617
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 618
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 619
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v3

    .line 622
    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setPivotX(F)V

    int-to-float v0, v4

    .line 623
    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    :goto_1e
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissed:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->emojiStaticImageView:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Landroid/widget/FrameLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->container:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->emojiImageView:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->wasScrolled:Z

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->finished:Z

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->removeCurrentView()V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)I
    .locals 0

    .line 39
    iget p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animationType:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)F
    .locals 0

    .line 39
    iget p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissProgress:F

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;F)F
    .locals 0

    .line 39
    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissProgress:F

    return p1
.end method

.method static synthetic access$216(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;F)F
    .locals 1

    .line 39
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissProgress:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissProgress:F

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->started:Z

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->holderView:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)I
    .locals 0

    .line 39
    iget p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->messageId:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)F
    .locals 0

    .line 39
    iget p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->lastDrawnToX:F

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;F)F
    .locals 0

    .line 39
    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->lastDrawnToX:F

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)F
    .locals 0

    .line 39
    iget p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->lastDrawnToY:F

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;F)F
    .locals 0

    .line 39
    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->lastDrawnToY:F

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->effectImageView:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    return-object p0
.end method

.method public static dismissAll()V
    .locals 2

    .line 842
    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 843
    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissed:Z

    .line 845
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    if-eqz v0, :cond_1

    .line 846
    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissed:Z

    :cond_1
    return-void
.end method

.method public static getFilterForAroundAnimation()Ljava/lang/String;
    .locals 2

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->sizeForAroundReaction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->sizeForAroundReaction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_nolimit_pcache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isPlaying(IJLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Z
    .locals 7

    .line 736
    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animationType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_3

    .line 737
    :cond_0
    iget-wide v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->groupId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    cmp-long v4, p1, v2

    if-eqz v4, :cond_2

    :cond_1
    iget p1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->messageId:I

    if-ne p0, p1, :cond_3

    :cond_2
    iget-object p0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static onScrolled(I)V
    .locals 3

    .line 824
    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    if-eqz v0, :cond_0

    .line 825
    iget v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->lastDrawnToY:F

    int-to-float v2, p0

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->lastDrawnToY:F

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 827
    iput-boolean p0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->wasScrolled:Z

    :cond_0
    return-void
.end method

.method public static removeCurrent(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    if-nez v0, :cond_0

    .line 722
    sget-object v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    goto :goto_1

    :cond_0
    sget-object v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    :goto_1
    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    .line 725
    invoke-direct {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->removeCurrentView()V

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    .line 727
    iput-boolean v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissed:Z

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    .line 731
    sput-object p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    .line 732
    sput-object p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    return-void
.end method

.method private removeCurrentView()V
    .locals 2

    .line 635
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->useWindow:Z

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 638
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->decorView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;II)V
    .locals 16

    move-object/from16 v11, p0

    move/from16 v12, p8

    if-eqz p2, :cond_8

    if-eqz p6, :cond_8

    if-eqz v11, :cond_8

    .line 646
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 649
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "view_animations"

    const/4 v13, 0x1

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v14, 0x2

    if-eq v12, v14, :cond_2

    if-nez v12, :cond_3

    :cond_2
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 654
    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;II)V

    .line 657
    :cond_3
    new-instance v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v0, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;II)V

    if-ne v12, v13, :cond_4

    .line 659
    sput-object v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    goto :goto_0

    .line 661
    :cond_4
    sput-object v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    :goto_0
    const/4 v0, 0x0

    .line 665
    instance-of v1, v11, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_6

    .line 666
    move-object v1, v11

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v12, :cond_5

    if-ne v12, v14, :cond_6

    .line 667
    :cond_5
    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v13, 0x0

    .line 672
    :goto_1
    iput-boolean v13, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->useWindow:Z

    if-eqz v13, :cond_7

    .line 674
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x1

    .line 675
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x3e8

    .line 676
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const v1, 0x10118

    .line 677
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x3

    .line 678
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 680
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iput-object v1, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowManager:Landroid/view/WindowManager;

    .line 681
    iget-object v2, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 683
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->decorView:Landroid/view/ViewGroup;

    .line 684
    iget-object v1, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 686
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    .line 687
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_8
    :goto_3
    return-void
.end method

.method public static sizeForAroundReaction()I
    .locals 2

    const/16 v0, 0x28

    .line 837
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    .line 838
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static sizeForBigReaction()I
    .locals 3

    const/16 v0, 0x15e

    .line 833
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static startAnimation()V
    .locals 5

    .line 694
    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 695
    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->started:Z

    .line 696
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->startTime:J

    .line 697
    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animationType:I

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->lastHapticTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->lastHapticTime:J

    .line 699
    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    goto :goto_0

    .line 702
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->startShortAnimation()V

    .line 703
    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    if-eqz v0, :cond_1

    .line 704
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static startShortAnimation()V
    .locals 5

    .line 710
    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->started:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 711
    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->started:Z

    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->startTime:J

    .line 713
    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animationType:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->lastHapticTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->lastHapticTime:J

    .line 715
    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method
