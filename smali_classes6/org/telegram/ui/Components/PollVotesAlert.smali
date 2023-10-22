.class public Lorg/telegram/ui/Components/PollVotesAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "PollVotesAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PollVotesAlert$Adapter;,
        Lorg/telegram/ui/Components/PollVotesAlert$Button;,
        Lorg/telegram/ui/Components/PollVotesAlert$UserCell;,
        Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;,
        Lorg/telegram/ui/Components/PollVotesAlert$VotesList;
    }
.end annotation


# static fields
.field public static final USER_CELL_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lorg/telegram/ui/Components/PollVotesAlert$UserCell;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actionBarAnimation:Landroid/animation/AnimatorSet;

.field private actionBarShadow:Landroid/view/View;

.field private chatActivity:Lorg/telegram/ui/ChatActivity;

.field private gradientWidth:F

.field private listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadingMore:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/telegram/ui/Components/PollVotesAlert$VotesList;",
            ">;"
        }
    .end annotation
.end field

.field private loadingResults:Z

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field private placeholderGradient:Landroid/graphics/LinearGradient;

.field private placeholderMatrix:Landroid/graphics/Matrix;

.field private placeholderPaint:Landroid/graphics/Paint;

.field private poll:Lorg/telegram/tgnet/TLRPC$Poll;

.field private queries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rect:Landroid/graphics/RectF;

.field private scrollOffsetY:I

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private titleTextView:Landroid/widget/TextView;

.field private totalTranslation:F

.field private voters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/PollVotesAlert$VotesList;",
            ">;"
        }
    .end annotation
.end field

.field private votesPercents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/ui/Components/PollVotesAlert$VotesList;",
            "Lorg/telegram/ui/Components/PollVotesAlert$Button;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DI49HhI83m0oXaEnzTqcS3ksSps(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PollVotesAlert;->lambda$new$2(Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JlbsBgirEz4oQSTYz_nZssUAgSk(Lorg/telegram/ui/Components/PollVotesAlert$Button;Lorg/telegram/ui/Components/PollVotesAlert$Button;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/PollVotesAlert;->lambda$updateButtons$5(Lorg/telegram/ui/Components/PollVotesAlert$Button;Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RBHXP45nhug4340Ynex3aJH17ro(Lorg/telegram/ui/Components/PollVotesAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PollVotesAlert;->updatePlaceholder()V

    return-void
.end method

.method public static synthetic $r8$lambda$VhpuNEK7164zrXpkg4D7Ic-eH4M(Lorg/telegram/ui/Components/PollVotesAlert;[Ljava/lang/Integer;ILorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/PollVotesAlert;->lambda$new$1([Ljava/lang/Integer;ILorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cDk7Pg7XcPuZgcCXchvTNV-6iPA(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/ChatActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PollVotesAlert;->lambda$new$4(Lorg/telegram/ui/ChatActivity;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iWkXegJI2nl1OrLPhBcS9H2SI1Q(Lorg/telegram/ui/Components/PollVotesAlert;[Ljava/lang/Integer;ILorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/PollVotesAlert;->lambda$new$0([Ljava/lang/Integer;ILorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tZfFL9m4POVWJxdPZMpgYWuuaus(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/PollVotesAlert;->lambda$new$3(Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 249
    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert$1;

    const-string v1, "placeholderAlpha"

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PollVotesAlert$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/PollVotesAlert;->USER_CELL_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    .line 495
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v9, 0x1

    invoke-direct {v7, v1, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 89
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->loadingMore:Ljava/util/HashSet;

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->votesPercents:Ljava/util/HashMap;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    .line 101
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderPaint:Landroid/graphics/Paint;

    .line 106
    iput-boolean v9, v7, Lorg/telegram/ui/Components/PollVotesAlert;->loadingResults:Z

    .line 107
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->rect:Landroid/graphics/RectF;

    .line 496
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 497
    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 498
    iput-object v8, v7, Lorg/telegram/ui/Components/PollVotesAlert;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 499
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object v10, v1

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 500
    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    .line 501
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    .line 502
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    long-to-int v0, v2

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 504
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 505
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 506
    new-array v14, v13, [Ljava/lang/Integer;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v13, :cond_5

    .line 509
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;

    .line 510
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    if-nez v0, :cond_0

    move/from16 v17, v6

    move/from16 p2, v13

    goto/16 :goto_5

    .line 513
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;-><init>()V

    .line 514
    iget v1, v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    const/16 v3, 0xf

    if-gt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0xa

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_2

    .line 516
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->votes:Ljava/util/ArrayList;

    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_messagePeerVoteInputOption;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_messagePeerVoteInputOption;-><init>()V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 518
    :cond_2
    iget v2, v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    if-ge v1, v2, :cond_3

    const-string v1, "empty"

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->next_offset:Ljava/lang/String;

    .line 519
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->count:I

    .line 520
    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->option:[B

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;-><init>(Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;[B)V

    .line 521
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;-><init>()V

    .line 524
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 525
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iput v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->id:I

    .line 526
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    if-gt v0, v3, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    const/16 v2, 0xa

    :goto_4
    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->limit:I

    .line 527
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    or-int/2addr v0, v9

    iput v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    .line 528
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->option:[B

    iput-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->option:[B

    .line 530
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v3, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v9, v3

    move v3, v6

    move/from16 p2, v13

    move-object v13, v4

    move-object/from16 v4, p1

    move-object/from16 v16, v5

    move-object v5, v12

    move/from16 v17, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;[Ljava/lang/Integer;ILorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;)V

    invoke-virtual {v13, v15, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v14, v17

    .line 595
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    aget-object v1, v14, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v6, v17, 0x1

    move/from16 v13, p2

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 597
    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PollVotesAlert;->updateButtons()V

    .line 599
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$2;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/PollVotesAlert$2;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 623
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PollVotesAlert;->updatePlaceholder()V

    .line 625
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 626
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 628
    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert$3;

    invoke-direct {v0, v7, v11}, Lorg/telegram/ui/Components/PollVotesAlert$3;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 753
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 754
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v3, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v0, v3, v1, v3, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 756
    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert$4;

    invoke-direct {v0, v7, v11}, Lorg/telegram/ui/Components/PollVotesAlert$4;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 786
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v3, 0x96

    .line 787
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    const-wide/16 v3, 0x15e

    .line 788
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    const-wide/16 v3, 0x0

    .line 789
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 790
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    const/4 v1, 0x0

    .line 791
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 792
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    const v4, 0x3f8ccccd    # 1.1f

    invoke-direct {v3, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 793
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setTranslationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 794
    iget-object v3, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 795
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 796
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/PollVotesAlert$5;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v7, v4, v5, v1}, Lorg/telegram/ui/Components/PollVotesAlert$5;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 802
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 803
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 804
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    .line 805
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x33

    const/4 v4, -0x1

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 806
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-direct {v1, v7, v11}, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 807
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 808
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda6;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 877
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$6;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/PollVotesAlert$6;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 902
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    const/4 v3, 0x1

    .line 903
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 904
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 905
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Landroid/widget/TextView;

    const/16 v1, 0x15

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/4 v5, 0x5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/16 v6, 0xe

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v3, v5, v6, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 906
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 907
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Landroid/widget/TextView;

    new-instance v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 908
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Landroid/widget/TextView;

    iget-object v3, v7, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    const/16 v8, 0x12

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v3, v6, v8, v9}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert$7;

    invoke-direct {v0, v7, v11}, Lorg/telegram/ui/Components/PollVotesAlert$7;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 917
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 918
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 919
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 920
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 921
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 922
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 923
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 924
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 925
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->PollResults:I

    const-string v3, "PollResults"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 926
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v0, :cond_6

    .line 927
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "Answer"

    invoke-static {v6, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    .line 929
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "Vote"

    invoke-static {v6, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 931
    :goto_6
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 932
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/Components/PollVotesAlert$8;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/PollVotesAlert$8;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 941
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    .line 942
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 943
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 944
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/PollVotesAlert$Adapter;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/widget/TextView;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/PollVotesAlert;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PollVotesAlert;->updateLayout(Z)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->scrollOffsetY:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/PollVotesAlert;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingResults:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/tgnet/TLRPC$Poll;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/PollVotesAlert;)F
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->totalTranslation:F

    return p0
.end method

.method static synthetic access$3016(Lorg/telegram/ui/Components/PollVotesAlert;F)F
    .locals 1

    .line 76
    iget v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->totalTranslation:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->totalTranslation:F

    return v0
.end method

.method static synthetic access$3024(Lorg/telegram/ui/Components/PollVotesAlert;F)F
    .locals 1

    .line 76
    iget v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->totalTranslation:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->totalTranslation:F

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/PollVotesAlert;)F
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->gradientWidth:F

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/Matrix;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/LinearGradient;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderGradient:Landroid/graphics/LinearGradient;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/Paint;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$4102(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/HashMap;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->votesPercents:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/PollVotesAlert;I)I
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/ChatActivity;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->chatActivity:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/RectF;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PollVotesAlert;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/view/View;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    return-object p0
.end method

.method private synthetic lambda$new$0([Ljava/lang/Integer;ILorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;)V
    .locals 6

    .line 531
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p3, :cond_d

    .line 533
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;

    .line 534
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->users:Ljava/util/ArrayList;

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 535
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 536
    new-instance p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iget-object p2, p6, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->option:[B

    invoke-direct {p1, p3, p2}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;-><init>(Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;[B)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 540
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, p4

    move p3, p2

    :goto_0
    const/4 p6, 0x1

    if-ge p2, p1, :cond_5

    .line 541
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    .line 542
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, p4

    :goto_1
    if-ge v2, v1, :cond_4

    .line 543
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    .line 544
    iget-object v4, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    iget-object v5, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 545
    iget-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    iput-object v1, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    .line 546
    iget v1, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    iget v2, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    if-ne v1, v2, :cond_1

    iget-object v1, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_1
    move p3, p6

    .line 549
    :cond_2
    iget p6, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    iput p6, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    .line 550
    iget-object p6, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->users:Ljava/util/ArrayList;

    iput-object p6, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->users:Ljava/util/ArrayList;

    .line 551
    iget-object p6, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    iput-object p6, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 556
    :cond_5
    iput-boolean p4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingResults:Z

    .line 557
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_e

    .line 558
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    if-nez p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    if-nez p2, :cond_b

    if-eqz p3, :cond_6

    goto :goto_5

    .line 564
    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 565
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move p3, p4

    :goto_3
    if-ge p3, p1, :cond_9

    .line 567
    iget-object p5, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p5, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 568
    instance-of v0, p5, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    if-nez v0, :cond_7

    goto :goto_4

    .line 571
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p5}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_4

    .line 575
    :cond_8
    check-cast p5, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    .line 576
    invoke-static {p5, p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$4902(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 577
    invoke-virtual {p5, p6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 578
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    .line 579
    invoke-static {p5, v0}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$4902(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 581
    :cond_9
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 582
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 583
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 p2, 0xb4

    .line 584
    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 585
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 587
    :cond_a
    iput-boolean p4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingResults:Z

    goto :goto_6

    :cond_b
    :goto_5
    if-eqz p3, :cond_c

    .line 560
    invoke-direct {p0}, Lorg/telegram/ui/Components/PollVotesAlert;->updateButtons()V

    .line 562
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    goto :goto_6

    .line 592
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_e
    :goto_6
    return-void
.end method

.method private synthetic lambda$new$1([Ljava/lang/Integer;ILorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 530
    new-instance p7, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda1;

    move-object v0, p7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;[Ljava/lang/Integer;ILorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;)V

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;)V
    .locals 2

    .line 841
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 844
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingMore:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 846
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;

    .line 847
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 848
    iget-object p3, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 849
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->next_offset:Ljava/lang/String;

    iput-object p2, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    const/4 p1, 0x0

    .line 850
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PollVotesAlert;->animateSectionUpdates(Landroid/view/View;)V

    .line 851
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->update(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 840
    new-instance p4, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/ui/ChatActivity;Landroid/view/View;I)V
    .locals 5

    if-eqz p1, :cond_c

    .line 809
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 812
    :cond_0
    instance-of v0, p2, Lorg/telegram/ui/Cells/TextCell;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 813
    iget-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result p2

    sub-int/2addr p2, v2

    .line 814
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result p3

    sub-int/2addr p3, v2

    if-lez p3, :cond_5

    if-gez p2, :cond_1

    goto/16 :goto_0

    .line 818
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    .line 819
    invoke-virtual {p2}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCount()I

    move-result v0

    if-ne p3, v0, :cond_5

    iget-object p3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingMore:Ljava/util/HashSet;

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 822
    :cond_2
    iget-boolean p3, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsed:Z

    const/16 v0, 0x32

    if-eqz p3, :cond_4

    iget p3, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsedCount:I

    iget-object v3, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p3, v3, :cond_4

    .line 823
    iget p1, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsedCount:I

    add-int/2addr p1, v0

    iget-object p3, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsedCount:I

    .line 824
    iget-object p3, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p1, p3, :cond_3

    .line 825
    iput-boolean v1, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsed:Z

    :cond_3
    const/4 p1, 0x0

    .line 827
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PollVotesAlert;->animateSectionUpdates(Landroid/view/View;)V

    .line 828
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->update(Z)V

    return-void

    .line 831
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingMore:Ljava/util/HashSet;

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 832
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;-><init>()V

    .line 833
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 834
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->id:I

    .line 835
    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->limit:I

    .line 836
    iget v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    or-int/2addr v0, v2

    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    .line 837
    iget-object v1, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->option:[B

    or-int/lit8 v0, v0, 0x2

    .line 838
    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    .line 839
    iget-object v0, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->offset:Ljava/lang/String;

    .line 840
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v0, p3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_3

    :cond_5
    :goto_0
    return-void

    .line 854
    :cond_6
    instance-of p3, p2, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    if-eqz p3, :cond_c

    .line 855
    check-cast p2, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    .line 856
    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$4700(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    if-nez p3, :cond_7

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$4800(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p3

    if-nez p3, :cond_7

    return-void

    .line 859
    :cond_7
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 860
    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$4700(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 861
    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$4700(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string v0, "user_id"

    invoke-virtual {p3, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 863
    :cond_8
    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$4800(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-string v0, "chat_id"

    invoke-virtual {p3, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 865
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 866
    new-instance v0, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v0, p3}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 867
    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$4700(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 868
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 869
    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$4700(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long p2, v3, p2

    if-nez p2, :cond_9

    move v1, v2

    :cond_9
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    goto :goto_2

    .line 871
    :cond_a
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 872
    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$4800(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long p2, v3, p2

    if-nez p2, :cond_b

    move v1, v2

    :cond_b
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    .line 874
    :goto_2
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_c
    :goto_3
    return-void
.end method

.method private static synthetic lambda$updateButtons$5(Lorg/telegram/ui/Components/PollVotesAlert$Button;Lorg/telegram/ui/Components/PollVotesAlert$Button;)I
    .locals 2

    .line 996
    invoke-static {p0}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$3900(Lorg/telegram/ui/Components/PollVotesAlert$Button;)F

    move-result v0

    invoke-static {p1}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$3900(Lorg/telegram/ui/Components/PollVotesAlert$Button;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 998
    :cond_0
    invoke-static {p0}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$3900(Lorg/telegram/ui/Components/PollVotesAlert$Button;)F

    move-result p0

    invoke-static {p1}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$3900(Lorg/telegram/ui/Components/PollVotesAlert$Button;)F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static showForPoll(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 481
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/PollVotesAlert;-><init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    .line 485
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateButtons()V
    .locals 16

    move-object/from16 v0, p0

    .line 959
    iget-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert;->votesPercents:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 963
    iget-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 964
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 967
    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v5, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v6, v3, :cond_4

    .line 968
    iget-object v11, v0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    .line 969
    new-instance v12, Lorg/telegram/ui/Components/PollVotesAlert$Button;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lorg/telegram/ui/Components/PollVotesAlert$Button;-><init>(Lorg/telegram/ui/Components/PollVotesAlert$1;)V

    .line 970
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    iget-object v13, v0, Lorg/telegram/ui/Components/PollVotesAlert;->votesPercents:Ljava/util/HashMap;

    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 973
    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_3

    .line 974
    iget-object v15, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;

    .line 975
    iget-object v4, v11, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    iget-object v10, v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->option:[B

    invoke-static {v4, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 976
    iget v4, v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    invoke-static {v12, v4}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$3802(Lorg/telegram/ui/Components/PollVotesAlert$Button;I)I

    const/high16 v4, 0x42c80000    # 100.0f

    .line 977
    iget v10, v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    int-to-float v10, v10

    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    mul-float/2addr v10, v4

    invoke-static {v12, v10}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$3902(Lorg/telegram/ui/Components/PollVotesAlert$Button;F)F

    .line 978
    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$3900(Lorg/telegram/ui/Components/PollVotesAlert$Button;)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v12, v4}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4002(Lorg/telegram/ui/Components/PollVotesAlert$Button;I)I

    .line 979
    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4000(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v12, v4}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$3924(Lorg/telegram/ui/Components/PollVotesAlert$Button;F)F

    if-nez v8, :cond_0

    .line 982
    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4000(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v4

    move v8, v4

    goto :goto_2

    .line 983
    :cond_0
    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4000(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4000(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v4

    if-eq v8, v4, :cond_1

    const/4 v7, 0x1

    .line 986
    :cond_1
    :goto_2
    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4000(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v4

    sub-int/2addr v5, v4

    .line 987
    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4000(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v4

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_3

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_4
    if-eqz v7, :cond_5

    if-eqz v5, :cond_5

    .line 995
    sget-object v1, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda2;

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1003
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v1, :cond_5

    .line 1004
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/PollVotesAlert$Button;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4012(Lorg/telegram/ui/Components/PollVotesAlert$Button;I)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method private updateLayout(Z)V
    .locals 11

    .line 1024
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-gtz p1, :cond_0

    .line 1025
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->scrollOffsetY:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 1026
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    .line 1029
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1030
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 1031
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    const/4 v2, 0x7

    .line 1032
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 1033
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-lt p1, v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    const/16 v1, 0xc

    .line 1036
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, 0x1

    if-gt p1, v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 1037
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    :cond_3
    if-nez v1, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1038
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :cond_5
    move-object v5, v4

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1039
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_6

    .line 1040
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1041
    iput-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    .line 1043
    :cond_6
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xb4

    .line 1044
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1045
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-eqz v1, :cond_7

    move v10, v8

    goto :goto_3

    :cond_7
    move v10, v9

    :goto_3
    aput v10, v7, v0

    .line 1046
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    move v8, v9

    :goto_4
    aput v8, v7, v0

    .line 1047
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v2

    .line 1045
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1048
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PollVotesAlert$9;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1059
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1061
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1062
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v2, 0xb

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 1063
    iget v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->scrollOffsetY:I

    if-eq v1, p1, :cond_a

    .line 1064
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->scrollOffsetY:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 1065
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_a
    return-void
.end method

.method private updatePlaceholder()V
    .locals 11

    .line 1070
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    return-void

    .line 1073
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 1074
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 1075
    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v0

    .line 1076
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1077
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v3, 0x1f4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v6, v3

    iput v6, p0, Lorg/telegram/ui/Components/PollVotesAlert;->gradientWidth:F

    const/4 v7, 0x0

    const/4 v3, 0x3

    new-array v8, v3, [I

    const/4 v9, 0x0

    aput v1, v8, v9

    const/4 v9, 0x1

    aput v0, v8, v9

    const/4 v0, 0x2

    aput v1, v8, v0

    new-array v9, v3, [F

    fill-array-data v9, :array_0

    sget-object v10, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderGradient:Landroid/graphics/LinearGradient;

    .line 1078
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1079
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderMatrix:Landroid/graphics/Matrix;

    .line 1080
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v0}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e3851ec    # 0.18f
        0x3eb851ec    # 0.36f
    .end array-data
.end method


# virtual methods
.method public animateSectionUpdates(Landroid/view/View;)V
    .locals 11

    const/4 v0, -0x2

    move v1, v0

    .line 1308
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    if-ne v1, v0, :cond_0

    move-object v2, p1

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1309
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1310
    :goto_1
    instance-of v3, v2, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    if-eqz v3, :cond_4

    sget v3, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    if-eqz v4, :cond_4

    .line 1311
    move-object v4, v2

    check-cast v4, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    .line 1312
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    const/4 v3, 0x0

    .line 1313
    iget-object v5, p0, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_2
    if-ge v3, v5, :cond_4

    .line 1314
    iget-object v6, p0, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;

    .line 1315
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;->option:[B

    iget-object v8, v2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1316
    iget-object v7, p0, Lorg/telegram/ui/Components/PollVotesAlert;->votesPercents:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/PollVotesAlert$Button;

    if-nez v7, :cond_2

    goto :goto_3

    .line 1320
    :cond_2
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;->text:Ljava/lang/String;

    iget-object v3, v2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/PollVotesAlert;->calcPercent([B)I

    move-result v7

    iget v8, v2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCollapsed()I

    move-result v9

    const/4 v10, 0x1

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->setText(Ljava/lang/String;IIIZ)V

    .line 1321
    sget v3, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v4, v3, v2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    goto :goto_4

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1327
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->relayoutPinnedHeader()V

    .line 1328
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public calcPercent([B)I
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    move v2, v1

    move v3, v2

    .line 1292
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1293
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    if-eqz v4, :cond_1

    .line 1295
    iget v5, v4, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    add-int/2addr v2, v5

    .line 1296
    iget-object v5, v4, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-static {v5, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1297
    iget v4, v4, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-gtz v2, :cond_3

    return v0

    :cond_3
    int-to-float p1, v3

    int-to-float v0, v2

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    .line 1304
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismissInternal()V
    .locals 5

    .line 1016
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1017
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1019
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1333
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    new-instance v11, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda5;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;)V

    .line 1337
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1338
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v10, 0x1

    new-array v3, v10, [Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Lorg/telegram/ui/Components/PollVotesAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v20, 0x0

    aput-object v4, v3, v20

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v12, v2

    move-object/from16 v17, v3

    move/from16 v19, v29

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1339
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 v28, v29

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    const/16 v17, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1341
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 v28, v38

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1342
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    move-object v12, v2

    move/from16 v19, v38

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBTITLECOLOR:I

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Landroid/widget/TextView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1350
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v10, [Ljava/lang/Class;

    const-class v2, Landroid/view/View;

    aput-object v2, v5, v20

    const/4 v4, 0x0

    move-object v2, v12

    move-object v9, v11

    move v13, v10

    move/from16 v10, v29

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v13, [Ljava/lang/Class;

    const-class v2, Landroid/view/View;

    aput-object v2, v5, v20

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    move-object v2, v12

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1353
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    aput-object v5, v4, v20

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v25

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    const/16 v28, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move/from16 v29, v6

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1354
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    aput-object v7, v4, v20

    const-string v7, "middleTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v29, v4

    move/from16 v34, v6

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1355
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    aput-object v7, v4, v20

    const-string v7, "righTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v30

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v29, v4

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    or-int v41, v4, v6

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    aput-object v6, v4, v20

    sget v46, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v39, v2

    move-object/from16 v40, v3

    move-object/from16 v42, v4

    invoke-direct/range {v39 .. v46}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    aput-object v6, v4, v20

    const-string v6, "nameTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v34

    const/16 v32, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v33, v4

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1360
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v20

    sget-object v25, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1362
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCell;

    aput-object v6, v4, v20

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v33

    sget v37, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    const/16 v31, 0x0

    const/16 v34, 0x0

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v32, v4

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

    aput-object v5, v4, v20

    const-string v5, "imageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v25

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    const/16 v28, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
