.class public Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;
.super Landroid/widget/FrameLayout;
.source "ChatSelectionReactionMenuOverlay.java"


# instance fields
.field private currentOffsetY:F

.field private currentPrimaryObject:Lorg/telegram/messenger/MessageObject;

.field private hiddenByScroll:Z

.field private isVisible:Z

.field private lastUpdate:J

.field private mPadding:I

.field private mSidePadding:I

.field private messageSet:Z

.field private parentFragment:Lorg/telegram/ui/ChatActivity;

.field private pos:[I

.field private reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field private selectedMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private toOffsetY:F

.field private translationOffsetY:F


# direct methods
.method public static synthetic $r8$lambda$8XywKlEjbyTO9bCjAK66Vpc-cyg(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->lambda$animateVisible$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->selectedMessages:Ljava/util/List;

    const/16 p2, 0x16

    .line 39
    iput p2, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->mPadding:I

    const/16 p2, 0x18

    .line 40
    iput p2, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->mSidePadding:I

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 139
    iput-object p2, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->pos:[I

    const/16 p2, 0x8

    .line 52
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 54
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->parentFragment:Lorg/telegram/ui/ChatActivity;

    const/4 p2, 0x0

    .line 56
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 57
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 59
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getChatListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$1;-><init>(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->currentPrimaryObject:Lorg/telegram/messenger/MessageObject;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->currentPrimaryObject:Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;)Lorg/telegram/ui/Components/ReactionsContainerLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout;
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;)Lorg/telegram/ui/ChatActivity;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method private animateVisible(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 336
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->findPrimaryObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->currentPrimaryObject:Lorg/telegram/messenger/MessageObject;

    .line 337
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->checkCreateReactionsLayout()V

    .line 338
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->invalidatePosition(Z)V

    .line 340
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 341
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 342
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->messageSet:Z

    .line 343
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->currentPrimaryObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 344
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->startEnterAnimation(Z)V

    goto :goto_0

    .line 346
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->messageSet:Z

    .line 347
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTransitionProgress(F)V

    goto :goto_0

    .line 350
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->messageSet:Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 351
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 352
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 358
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$4;-><init>(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 369
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private checkCreateReactionsLayout()V
    .locals 7

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-nez v0, :cond_2

    .line 69
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$2;

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v5

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$2;-><init>(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, 0x4

    .line 109
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget v3, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->mSidePadding:I

    :goto_0
    add-int/2addr v2, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->mSidePadding:I

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    add-int/2addr v1, v5

    iget v5, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->mPadding:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v2, v3, v1, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    new-instance v1, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$3;-><init>(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setDelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, -0x2

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->mPadding:I

    add-int/lit8 v2, v2, 0x46

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private findPrimaryObject()Lorg/telegram/messenger/MessageObject;
    .locals 6

    .line 275
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->isVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->selectedMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->selectedMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 278
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 279
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ChatActivity;->getGroup(J)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v1

    .line 281
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 282
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 283
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private isMessageTypeAllowed(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    .line 295
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isPhoto(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private synthetic lambda$animateVisible$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 353
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public invalidatePosition()V
    .locals 1

    const/4 v0, 0x1

    .line 136
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->invalidatePosition(Z)V

    return-void
.end method

.method public invalidatePosition(Z)V
    .locals 11

    .line 141
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->isVisible:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->currentPrimaryObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-nez v0, :cond_0

    goto/16 :goto_e

    :cond_0
    const-wide/16 v0, 0x10

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->lastUpdate:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->lastUpdate:J

    .line 147
    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->currentOffsetY:F

    iget v3, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->toOffsetY:F

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_3

    long-to-float v0, v0

    const/high16 v1, 0x435c0000    # 220.0f

    div-float/2addr v0, v1

    cmpl-float v1, v3, v2

    if-lez v1, :cond_1

    add-float/2addr v2, v0

    .line 150
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->currentOffsetY:F

    goto :goto_0

    :cond_1
    cmpg-float v1, v3, v2

    if-gez v1, :cond_2

    sub-float/2addr v2, v0

    .line 152
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->currentOffsetY:F

    .line 154
    :cond_2
    :goto_0
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 157
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->pos:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 159
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->pos:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    int-to-float v3, v3

    .line 160
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 161
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->pos:[I

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v3, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getPullingDownOffset()F

    move-result v1

    sub-float/2addr v3, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 163
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1b

    .line 164
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 165
    instance-of v6, v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v6, :cond_1a

    .line 166
    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 168
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    .line 169
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->currentPrimaryObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    if-ne v7, v8, :cond_1a

    .line 170
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v4

    .line 171
    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v6, :cond_8

    .line 172
    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMirrorX(Z)V

    .line 173
    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v7, 0x4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_5

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    iget v9, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->mSidePadding:I

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v9, 0x0

    :goto_3
    add-int/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->mPadding:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v10, :cond_7

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    iget v10, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->mSidePadding:I

    :goto_5
    add-int/2addr v7, v10

    iget v10, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->mPadding:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v6, v8, v9, v7, v10}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 175
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 178
    :goto_6
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 179
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v6

    .line 180
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v7, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    iget v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    sub-int/2addr v7, v6

    goto :goto_7

    .line 182
    :cond_a
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    .line 185
    :goto_7
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v6

    add-float/2addr v6, v3

    const/16 v3, 0x4a

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v6, v3

    const/16 v3, 0xe

    .line 186
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/16 v8, 0xda

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v0, v8

    int-to-float v0, v0

    .line 187
    iget-object v8, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->getFragmentContextView()Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 188
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_b

    .line 189
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v3, v8

    :cond_b
    int-to-float v8, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v8, v9

    sub-float v9, v3, v9

    cmpl-float v9, v6, v9

    if-lez v9, :cond_c

    cmpg-float v9, v6, v0

    if-gez v9, :cond_c

    const/4 v7, 0x0

    .line 196
    iput v7, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->toOffsetY:F

    const/4 v7, 0x0

    :goto_8
    const/4 v8, 0x1

    goto :goto_a

    :cond_c
    sub-float v8, v3, v8

    const/16 v9, 0x5c

    .line 197
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    cmpg-float v8, v6, v8

    if-ltz v8, :cond_e

    cmpl-float v8, v6, v0

    if-lez v8, :cond_d

    goto :goto_9

    :cond_d
    const/16 v8, 0x38

    .line 202
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    iput v7, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->translationOffsetY:F

    const/high16 v7, 0x3f800000    # 1.0f

    .line 204
    iput v7, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->toOffsetY:F

    const/4 v7, 0x1

    goto :goto_8

    :cond_e
    :goto_9
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_a
    if-nez p1, :cond_f

    .line 207
    iget p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->toOffsetY:F

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->currentOffsetY:F

    .line 210
    :cond_f
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v9, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->currentOffsetY:F

    invoke-virtual {p1, v9}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p1

    iget v9, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->translationOffsetY:F

    mul-float p1, p1, v9

    add-float/2addr v6, p1

    .line 211
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-nez p1, :cond_10

    return-void

    .line 214
    :cond_10
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isFlippedVertically()Z

    move-result p1

    if-eq v7, p1, :cond_11

    .line 215
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setFlippedVertically(Z)V

    .line 216
    new-instance p1, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 218
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p1

    if-eq v8, p1, :cond_12

    .line 219
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 220
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    if-eqz v8, :cond_12

    .line 222
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 223
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->messageSet:Z

    if-nez p1, :cond_12

    .line 224
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->messageSet:Z

    .line 225
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->currentPrimaryObject:Lorg/telegram/messenger/MessageObject;

    iget-object v8, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 229
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v6, v3, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 230
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTranslationX(F)V

    .line 233
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 234
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v0

    const/16 v3, 0x20

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v0, v6

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 235
    invoke-virtual {v5, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v5

    sub-int/2addr v7, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v5, 0x28

    .line 237
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    .line 238
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    sub-int/2addr v6, v3

    sub-int/2addr v6, v0

    if-ge v6, v5, :cond_14

    if-eqz v4, :cond_13

    .line 241
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x0

    goto :goto_b

    .line 244
    :cond_13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    sub-int/2addr v0, v1

    sub-int/2addr v0, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v0, 0x0

    :cond_14
    :goto_b
    if-eqz v4, :cond_15

    const/4 v4, 0x5

    goto :goto_c

    :cond_15
    const/4 v4, 0x3

    .line 249
    :goto_c
    iget v5, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v4, v5, :cond_16

    .line 250
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, 0x1

    .line 253
    :cond_16
    iget v4, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eq v0, v4, :cond_17

    .line 254
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v1, 0x1

    .line 257
    :cond_17
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eq v3, v0, :cond_18

    .line 258
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_d

    :cond_18
    move v2, v1

    :goto_d
    if-eqz v2, :cond_19

    .line 262
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_19
    return-void

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 269
    :cond_1b
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 270
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    :cond_1c
    :goto_e
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->hiddenByScroll:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setHiddenByScroll(Z)V
    .locals 0

    .line 374
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->hiddenByScroll:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 377
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->animateVisible(Z)V

    :cond_0
    return-void
.end method

.method public setSelectedMessages(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .line 299
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->selectedMessages:Ljava/util/List;

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsNone;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 305
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v3, 0x0

    move-wide v5, v3

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    .line 311
    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->isMessageTypeAllowed(Lorg/telegram/messenger/MessageObject;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 317
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v5

    const/4 v0, 0x1

    goto :goto_0

    .line 318
    :cond_3
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_4

    cmp-long v7, v5, v3

    if-nez v7, :cond_1

    :cond_4
    :goto_1
    const/4 v1, 0x0

    .line 325
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->isVisible:Z

    if-eq v1, p1, :cond_6

    .line 326
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->isVisible:Z

    .line 327
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->hiddenByScroll:Z

    .line 328
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->animateVisible(Z)V

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    .line 330
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->findPrimaryObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->currentPrimaryObject:Lorg/telegram/messenger/MessageObject;

    :cond_7
    :goto_2
    return-void
.end method
