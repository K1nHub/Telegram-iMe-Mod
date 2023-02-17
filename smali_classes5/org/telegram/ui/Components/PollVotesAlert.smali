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

    .line 247
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

    .line 455
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v9, 0x1

    invoke-direct {v7, v1, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 87
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->loadingMore:Ljava/util/HashSet;

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->votesPercents:Ljava/util/HashMap;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    .line 99
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderPaint:Landroid/graphics/Paint;

    .line 104
    iput-boolean v9, v7, Lorg/telegram/ui/Components/PollVotesAlert;->loadingResults:Z

    .line 105
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->rect:Landroid/graphics/RectF;

    .line 456
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 457
    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 458
    iput-object v8, v7, Lorg/telegram/ui/Components/PollVotesAlert;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 459
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object v10, v1

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 460
    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    .line 461
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    .line 462
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    long-to-int v0, v2

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 464
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 465
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 466
    new-array v14, v13, [Ljava/lang/Integer;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v13, :cond_5

    .line 469
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;

    .line 470
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    if-nez v0, :cond_0

    move/from16 v17, v6

    move/from16 p2, v13

    goto/16 :goto_5

    .line 473
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;-><init>()V

    .line 474
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

    .line 476
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->votes:Ljava/util/ArrayList;

    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_messageUserVoteInputOption;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_messageUserVoteInputOption;-><init>()V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 478
    :cond_2
    iget v2, v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    if-ge v1, v2, :cond_3

    const-string v1, "empty"

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->next_offset:Ljava/lang/String;

    .line 479
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->count:I

    .line 480
    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->option:[B

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;-><init>(Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;[B)V

    .line 481
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;-><init>()V

    .line 484
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 485
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iput v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->id:I

    .line 486
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    if-gt v0, v3, :cond_4

    const/16 v2, 0xf

    goto :goto_4

    :cond_4
    const/16 v2, 0xa

    :goto_4
    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->limit:I

    .line 487
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    or-int/2addr v0, v9

    iput v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    .line 488
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->option:[B

    iput-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->option:[B

    .line 490
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

    .line 555
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    aget-object v1, v14, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v6, v17, 0x1

    move/from16 v13, p2

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 557
    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PollVotesAlert;->updateButtons()V

    .line 559
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$2;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/PollVotesAlert$2;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 583
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PollVotesAlert;->updatePlaceholder()V

    .line 585
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 586
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "dialogBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 588
    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert$3;

    invoke-direct {v0, v7, v11}, Lorg/telegram/ui/Components/PollVotesAlert$3;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 713
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 714
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v3, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v0, v3, v1, v3, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 716
    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert$4;

    invoke-direct {v0, v7, v11}, Lorg/telegram/ui/Components/PollVotesAlert$4;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 746
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v3, 0x96

    .line 747
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    const-wide/16 v3, 0x15e

    .line 748
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    const-wide/16 v3, 0x0

    .line 749
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 750
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    const/4 v1, 0x0

    .line 751
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 752
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    const v4, 0x3f8ccccd    # 1.1f

    invoke-direct {v3, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 753
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setTranslationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 754
    iget-object v3, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 755
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 756
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/PollVotesAlert$5;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v7, v4, v5, v1}, Lorg/telegram/ui/Components/PollVotesAlert$5;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 762
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 763
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 764
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    .line 765
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x33

    const/4 v4, -0x1

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-direct {v1, v7, v11}, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 767
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string v1, "dialogScrollGlow"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 768
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda6;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 828
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$6;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/PollVotesAlert$6;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 853
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    const/4 v3, 0x1

    .line 854
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 855
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 856
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

    .line 857
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Landroid/widget/TextView;

    const-string v1, "dialogTextBlack"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 858
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Landroid/widget/TextView;

    new-instance v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
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

    .line 861
    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert$7;

    invoke-direct {v0, v7, v11}, Lorg/telegram/ui/Components/PollVotesAlert$7;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 868
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 869
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 870
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 871
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "dialogButtonSelector"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 872
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 873
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "player_actionBarSubtitle"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 874
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 875
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 876
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->PollResults:I

    const-string v3, "PollResults"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 877
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v0, :cond_6

    .line 878
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

    .line 880
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "Vote"

    invoke-static {v6, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 882
    :goto_6
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 883
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/Components/PollVotesAlert$8;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/PollVotesAlert$8;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 892
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    .line 893
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 894
    iget-object v0, v7, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    const-string v1, "dialogShadowLine"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 895
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

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/PollVotesAlert$Adapter;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/widget/TextView;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/PollVotesAlert;Z)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PollVotesAlert;->updateLayout(Z)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->scrollOffsetY:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/PollVotesAlert;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingResults:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/tgnet/TLRPC$Poll;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/PollVotesAlert;)F
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->totalTranslation:F

    return p0
.end method

.method static synthetic access$3016(Lorg/telegram/ui/Components/PollVotesAlert;F)F
    .locals 1

    .line 74
    iget v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->totalTranslation:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->totalTranslation:F

    return v0
.end method

.method static synthetic access$3024(Lorg/telegram/ui/Components/PollVotesAlert;F)F
    .locals 1

    .line 74
    iget v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->totalTranslation:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->totalTranslation:F

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/PollVotesAlert;)F
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->gradientWidth:F

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/Matrix;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/LinearGradient;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderGradient:Landroid/graphics/LinearGradient;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/Paint;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$4102(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/HashMap;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->votesPercents:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/PollVotesAlert;Ljava/lang/String;)I
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/ChatActivity;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->chatActivity:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/RectF;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PollVotesAlert;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PollVotesAlert;)I
    .locals 0

    .line 74
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/view/View;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    return-object p0
.end method

.method private synthetic lambda$new$0([Ljava/lang/Integer;ILorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;)V
    .locals 6

    .line 491
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p3, :cond_d

    .line 493
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;

    .line 494
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->users:Ljava/util/ArrayList;

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 495
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 496
    new-instance p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iget-object p2, p6, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->option:[B

    invoke-direct {p1, p3, p2}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;-><init>(Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;[B)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 500
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    const/4 p6, 0x1

    if-ge p2, p1, :cond_5

    .line 501
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    .line 502
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    .line 503
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    .line 504
    iget-object v4, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    iget-object v5, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 505
    iget-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    iput-object v1, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    .line 506
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
    const/4 p3, 0x1

    .line 509
    :cond_2
    iget p6, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    iput p6, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    .line 510
    iget-object p6, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->users:Ljava/util/ArrayList;

    iput-object p6, v3, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->users:Ljava/util/ArrayList;

    .line 511
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

    .line 516
    :cond_5
    iput-boolean p4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingResults:Z

    .line 517
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_e

    .line 518
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    if-nez p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    if-nez p2, :cond_b

    if-eqz p3, :cond_6

    goto :goto_5

    .line 524
    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 525
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    :goto_3
    if-ge p3, p1, :cond_9

    .line 527
    iget-object p5, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p5, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 528
    instance-of v0, p5, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    if-nez v0, :cond_7

    goto :goto_4

    .line 531
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p5}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_4

    .line 535
    :cond_8
    check-cast p5, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    .line 536
    invoke-static {p5, p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$4802(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 537
    invoke-virtual {p5, p6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 538
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    .line 539
    invoke-static {p5, v0}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$4802(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 541
    :cond_9
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 542
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 543
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 p2, 0xb4

    .line 544
    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 545
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 547
    :cond_a
    iput-boolean p4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingResults:Z

    goto :goto_6

    :cond_b
    :goto_5
    if-eqz p3, :cond_c

    .line 520
    invoke-direct {p0}, Lorg/telegram/ui/Components/PollVotesAlert;->updateButtons()V

    .line 522
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    goto :goto_6

    .line 552
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_e
    :goto_6
    return-void
.end method

.method private synthetic lambda$new$1([Ljava/lang/Integer;ILorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 490
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

    .line 801
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 804
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingMore:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 806
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;

    .line 807
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 808
    iget-object p3, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 809
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->next_offset:Ljava/lang/String;

    iput-object p2, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    const/4 p1, 0x0

    .line 810
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PollVotesAlert;->animateSectionUpdates(Landroid/view/View;)V

    .line 811
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->update(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 800
    new-instance p4, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/ui/ChatActivity;Landroid/view/View;I)V
    .locals 6

    if-eqz p1, :cond_9

    .line 769
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 772
    :cond_0
    instance-of v0, p2, Lorg/telegram/ui/Cells/TextCell;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 773
    iget-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result p2

    sub-int/2addr p2, v2

    .line 774
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result p3

    sub-int/2addr p3, v2

    if-lez p3, :cond_5

    if-gez p2, :cond_1

    goto/16 :goto_0

    .line 778
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    .line 779
    invoke-virtual {p2}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCount()I

    move-result v0

    if-ne p3, v0, :cond_5

    iget-object p3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingMore:Ljava/util/HashSet;

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 782
    :cond_2
    iget-boolean p3, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsed:Z

    const/16 v0, 0x32

    if-eqz p3, :cond_4

    iget p3, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsedCount:I

    iget-object v3, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p3, v3, :cond_4

    .line 783
    iget p1, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsedCount:I

    add-int/2addr p1, v0

    iget-object p3, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsedCount:I

    .line 784
    iget-object p3, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p1, p3, :cond_3

    .line 785
    iput-boolean v1, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsed:Z

    :cond_3
    const/4 p1, 0x0

    .line 787
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PollVotesAlert;->animateSectionUpdates(Landroid/view/View;)V

    .line 788
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listAdapter:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->update(Z)V

    return-void

    .line 791
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->loadingMore:Ljava/util/HashSet;

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 792
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;-><init>()V

    .line 793
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 794
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->id:I

    .line 795
    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->limit:I

    .line 796
    iget v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    or-int/2addr v0, v2

    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    .line 797
    iget-object v1, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->option:[B

    or-int/lit8 v0, v0, 0x2

    .line 798
    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->flags:I

    .line 799
    iget-object v0, p2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getPollVotes;->offset:Ljava/lang/String;

    .line 800
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v0, p3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_1

    :cond_5
    :goto_0
    return-void

    .line 814
    :cond_6
    instance-of p3, p2, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    if-eqz p3, :cond_9

    .line 815
    check-cast p2, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    .line 816
    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$4700(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    if-nez p3, :cond_7

    return-void

    .line 819
    :cond_7
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    .line 820
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 821
    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$4700(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string/jumbo v5, "user_id"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 822
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 823
    new-instance v3, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    if-eqz p3, :cond_8

    .line 824
    iget-wide v4, p3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->access$4700(Lorg/telegram/ui/Components/PollVotesAlert$UserCell;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v0, v4, p2

    if-nez v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    invoke-virtual {v3, v1}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    .line 825
    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_9
    :goto_1
    return-void
.end method

.method private static synthetic lambda$updateButtons$5(Lorg/telegram/ui/Components/PollVotesAlert$Button;Lorg/telegram/ui/Components/PollVotesAlert$Button;)I
    .locals 2

    .line 947
    invoke-static {p0}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$3900(Lorg/telegram/ui/Components/PollVotesAlert$Button;)F

    move-result v0

    invoke-static {p1}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$3900(Lorg/telegram/ui/Components/PollVotesAlert$Button;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 949
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

    .line 441
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/PollVotesAlert;-><init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    .line 445
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateButtons()V
    .locals 16

    move-object/from16 v0, p0

    .line 910
    iget-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert;->votesPercents:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 914
    iget-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 915
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 918
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

    .line 919
    iget-object v11, v0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    .line 920
    new-instance v12, Lorg/telegram/ui/Components/PollVotesAlert$Button;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lorg/telegram/ui/Components/PollVotesAlert$Button;-><init>(Lorg/telegram/ui/Components/PollVotesAlert$1;)V

    .line 921
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    iget-object v13, v0, Lorg/telegram/ui/Components/PollVotesAlert;->votesPercents:Ljava/util/HashMap;

    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 924
    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_3

    .line 925
    iget-object v15, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;

    .line 926
    iget-object v4, v11, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    iget-object v10, v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->option:[B

    invoke-static {v4, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 927
    iget v4, v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    invoke-static {v12, v4}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$3802(Lorg/telegram/ui/Components/PollVotesAlert$Button;I)I

    const/high16 v4, 0x42c80000    # 100.0f

    .line 928
    iget v10, v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    int-to-float v10, v10

    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    mul-float v10, v10, v4

    invoke-static {v12, v10}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$3902(Lorg/telegram/ui/Components/PollVotesAlert$Button;F)F

    .line 929
    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$3900(Lorg/telegram/ui/Components/PollVotesAlert$Button;)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v12, v4}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4002(Lorg/telegram/ui/Components/PollVotesAlert$Button;I)I

    .line 930
    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4000(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v12, v4}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$3924(Lorg/telegram/ui/Components/PollVotesAlert$Button;F)F

    if-nez v8, :cond_0

    .line 933
    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4000(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v4

    move v8, v4

    goto :goto_2

    .line 934
    :cond_0
    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4000(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4000(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v4

    if-eq v8, v4, :cond_1

    const/4 v7, 0x1

    .line 937
    :cond_1
    :goto_2
    invoke-static {v12}, Lorg/telegram/ui/Components/PollVotesAlert$Button;->access$4000(Lorg/telegram/ui/Components/PollVotesAlert$Button;)I

    move-result v4

    sub-int/2addr v5, v4

    .line 938
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

    .line 946
    sget-object v1, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda2;

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 954
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v1, :cond_5

    .line 955
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

    .line 975
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-gtz p1, :cond_0

    .line 976
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->scrollOffsetY:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 977
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    .line 980
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 981
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 982
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    const/4 v2, 0x7

    .line 983
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 984
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

    .line 987
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, 0x1

    if-gt p1, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 988
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

    .line 989
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

    .line 990
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_6

    .line 991
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 992
    iput-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    .line 994
    :cond_6
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xb4

    .line 995
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 996
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-eqz v1, :cond_7

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    :goto_3
    aput v10, v7, v0

    .line 997
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    :goto_4
    aput v8, v7, v0

    .line 998
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v2

    .line 996
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 999
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/PollVotesAlert$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PollVotesAlert$9;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1010
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1012
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1013
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v2, 0xb

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 1014
    iget v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->scrollOffsetY:I

    if-eq v1, p1, :cond_a

    .line 1015
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->scrollOffsetY:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 1016
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_a
    return-void
.end method

.method private updatePlaceholder()V
    .locals 11

    .line 1021
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "dialogBackground"

    .line 1024
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "dialogBackgroundGray"

    .line 1025
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 1026
    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v0

    .line 1027
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1028
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

    .line 1029
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1030
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->placeholderMatrix:Landroid/graphics/Matrix;

    .line 1031
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

    const/4 v1, -0x2

    .line 1264
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

    .line 1265
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1266
    :goto_1
    instance-of v3, v2, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    if-eqz v3, :cond_4

    sget v3, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    if-eqz v4, :cond_4

    .line 1267
    move-object v4, v2

    check-cast v4, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    .line 1268
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    const/4 v3, 0x0

    .line 1269
    iget-object v5, p0, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_2
    if-ge v3, v5, :cond_4

    .line 1270
    iget-object v6, p0, Lorg/telegram/ui/Components/PollVotesAlert;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;

    .line 1271
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;->option:[B

    iget-object v8, v2, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1272
    iget-object v7, p0, Lorg/telegram/ui/Components/PollVotesAlert;->votesPercents:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/PollVotesAlert$Button;

    if-nez v7, :cond_2

    goto :goto_3

    .line 1276
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

    .line 1277
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

    .line 1283
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->relayoutPinnedHeader()V

    .line 1284
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
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1248
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1249
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert;->voters:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    if-eqz v4, :cond_1

    .line 1251
    iget v5, v4, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    add-int/2addr v2, v5

    .line 1252
    iget-object v5, v4, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-static {v5, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1253
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

    mul-float p1, p1, v0

    .line 1260
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

    .line 967
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert;->queries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 968
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

    .line 970
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1291
    new-instance v11, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda5;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;)V

    .line 1293
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "key_sheet_scrollUp"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v10, 0x1

    new-array v3, v10, [Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Lorg/telegram/ui/Components/PollVotesAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v20, 0x0

    aput-object v4, v3, v20

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const-string v19, "dialogBackground"

    move-object v12, v2

    move-object/from16 v17, v3

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v28, "dialogBackground"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v17, 0x0

    const-string v19, "dialogScrollGlow"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v28, "dialogTextBlack"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v19, "dialogTextBlack"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1299
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBTITLECOLOR:I

    const-string v28, "player_actionBarSubtitle"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1300
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v19, "dialogTextBlack"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->titleTextView:Landroid/widget/TextView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v28, "dialogTextBlack"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/PollVotesAlert;->actionBarShadow:Landroid/view/View;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v19, "dialogShadowLine"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v10, [Ljava/lang/Class;

    const-class v2, Landroid/view/View;

    aput-object v2, v5, v20

    const/4 v4, 0x0

    const-string v13, "dialogBackground"

    move-object v2, v12

    move-object v9, v11

    const/4 v14, 0x1

    move-object v10, v13

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v14, [Ljava/lang/Class;

    const-class v2, Landroid/view/View;

    aput-object v2, v5, v20

    const-string v10, "dialogBackgroundGray"

    move-object v2, v12

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    aput-object v5, v4, v20

    const-string/jumbo v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v25

    const/16 v28, 0x0

    const-string v29, "key_graySectionText"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v32, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    aput-object v6, v4, v20

    const-string v6, "middleTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-string v38, "key_graySectionText"

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v33, v4

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    aput-object v6, v4, v20

    const-string/jumbo v6, "righTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v25

    const-string v29, "key_graySectionText"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    or-int v8, v3, v4

    new-array v9, v14, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    aput-object v3, v9, v20

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "graySection"

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    aput-object v6, v4, v20

    const-string v6, "nameTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v25

    const/16 v23, 0x0

    const-string v29, "dialogTextBlack"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1316
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v9, v14, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v9, v20

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    const-string v13, "divider"

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCell;

    aput-object v6, v4, v20

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v29, "windowBackgroundWhiteBlueText4"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/Components/PollVotesAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v8, v14, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/TextCell;

    aput-object v3, v8, v20

    const-string v3, "imageView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v10, 0x0

    const-string/jumbo v13, "switchTrackChecked"

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
