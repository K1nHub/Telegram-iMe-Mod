.class public Lorg/telegram/ui/TopicsFragment;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "TopicsFragment.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/ChatActivityInterface;
.implements Lorg/telegram/ui/RightSlidingDialogContainer$BaseFragmentWithFullscreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/TopicsFragment$Item;,
        Lorg/telegram/ui/TopicsFragment$OnTopicSelectedListener;,
        Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;,
        Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;,
        Lorg/telegram/ui/TopicsFragment$TopicDialogCell;,
        Lorg/telegram/ui/TopicsFragment$Adapter;,
        Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;,
        Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;
    }
.end annotation


# static fields
.field private static settingsPreloaded:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field adapter:Lorg/telegram/ui/TopicsFragment$Adapter;

.field private addMemberSubMenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private allowSwipeDuringCurrentTouch:Z

.field animateSearchWithScale:Z

.field animatedUpdateEnabled:Z

.field avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

.field private blurredView:Landroid/view/View;

.field private bottomButtonType:I

.field private bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

.field private bottomOverlayContainer:Landroid/widget/FrameLayout;

.field private bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

.field private bottomPannelVisible:Z

.field canShowCreateTopic:Z

.field private canShowHiddenArchive:Z

.field private canShowProgress:Z

.field chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field final chatId:J

.field private closeReportSpam:Landroid/widget/ImageView;

.field private closeTopic:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private createTopicSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private deleteChatSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private dialogChangeFinished:I

.field private dialogInsertFinished:I

.field private dialogRemoveFinished:I

.field dialogsActivity:Lorg/telegram/ui/DialogsActivity;

.field private disableActionBarScrolling:Z

.field private emptyView:Landroid/view/View;

.field excludeTopics:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

.field floatingButtonContainer:Landroid/widget/FrameLayout;

.field private floatingButtonHideProgress:F

.field private floatingButtonTranslation:F

.field private floatingHidden:Z

.field private final floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field forumTopics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/TopicsFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field private forumTopicsListFrozen:Z

.field fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

.field private frozenForumTopicsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/TopicsFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field fullscreenView:Landroid/widget/FrameLayout;

.field private generalTopicViewMoving:Landroid/view/View;

.field private groupCall:Lorg/telegram/messenger/ChatObject$Call;

.field private hiddenCount:I

.field private hiddenShown:Z

.field private hideItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field isSlideBackTransition:Z

.field private itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private itemTouchHelperCallback:Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;

.field itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field private lastItemsCount:I

.field layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private loadingTopics:Z

.field private mute:Z

.field private muteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field onTopicSelectedListener:Lorg/telegram/ui/TopicsFragment$OnTopicSelectedListener;

.field private openedForForward:Z

.field private opnendForSelect:Z

.field private other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private parentAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field public parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

.field private pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

.field private pinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

.field private pullViewState:I

.field private readItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

.field private removeFragmentOnTransitionEnd:Z

.field private reordering:Z

.field private restartTopic:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private scrollToTop:Z

.field private searchAnimationProgress:F

.field searchAnimator:Landroid/animation/ValueAnimator;

.field private searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchTabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

.field public searching:Z

.field private selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

.field private selectedTopicForTablet:I

.field selectedTopics:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private showItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field slideBackTransitionAnimator:Landroid/animation/ValueAnimator;

.field slideFragmentProgress:F

.field private startArchivePullingTime:J

.field themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

.field private topView:Landroid/widget/FrameLayout;

.field private final topicsController:Lorg/telegram/messenger/TopicsController;

.field topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private transitionAnimationGlobalIndex:I

.field private transitionAnimationIndex:I

.field transitionPadding:F

.field private unpinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private updateAnimated:Z

.field private waitingForScrollFinished:Z


# direct methods
.method public static synthetic $r8$lambda$-Ej51wTrWY-GMhBF-c6eDrweobo(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->lambda$joinToGroup$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$2fqJw6DHPWA0Rp6xgJN7S0VQ7Gc(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->lambda$getThemeDescriptions$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$63Me9p-6jY-10aYrj_89lMB7cA4(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->lambda$createView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6HJLlPAuxoK_WcJIoUEJfMZUV50(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->lambda$showChatPreview$12(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7cG3wfvFXJznYAxhbd9opcKLPRo(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->lambda$onFragmentCreate$18(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BIZBvesEyxCY6FHkdR3yNNpMoBY(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;[Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/TopicsFragment;->lambda$showChatPreview$9(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;[Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nu7_DtKilLWYM7dFLYDXLT5j3Hk(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PFBIKW_pegeAtGazSeKMCRIMSFE(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->lambda$createView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PqzJvzEEp7ipmddnFLWc-0ndbM8(Lorg/telegram/ui/TopicsFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->lambda$animateToSearchView$13(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RQ0rSyIkeyn4R1XJoAFZR_C55fw(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->lambda$showChatPreview$8(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TCcloE2UuFZkkw04sgBKCC0hOLo()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/TopicsFragment;->lambda$onDialogAnimationFinished$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$XouhzqSHVBLnRKtgT45riSKSRgA(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->lambda$createView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YUBesP6r-lXmj9Cf0fbHi1A9tXE(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->lambda$joinToGroup$15(Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aBhulGIyAaZKKJpkqf8CqNH_8kU(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateTopView()V

    return-void
.end method

.method public static synthetic $r8$lambda$cEk6_G8S4YX9HN9DjuVi7MDJiSA(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;IFF)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/TopicsFragment;->lambda$createView$3(Landroid/view/View;IFF)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eu4CjNDcbwSUZdfgRT3doboo_V8(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->lambda$showChatPreview$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$f1KPwE2VdtfMbbiKjYJpUIqdz7Q(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->lambda$createView$2(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iLquu0nxa-UXCh5TLMJxKhK03EE(Lorg/telegram/ui/TopicsFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->lambda$hideFloatingButton$19(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jdPn2clvvS_T3cC9pmCMURmQpjg(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/TopicsFragment;->lambda$chekActionMode$16(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sqLmTwgaNlcQmBBwZT7EfnGqtTU(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->lambda$onFragmentCreate$17(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tc8GM3OCdXB_bgippiI96i4oKqk(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->lambda$showChatPreview$10(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y3Z02_kVMQ8JbofaTrD9iHGFOZU(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->lambda$createView$1(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 2484
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/ui/TopicsFragment;->settingsPreloaded:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6

    .line 291
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 153
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    .line 156
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->frozenForumTopicsList:Ljava/util/ArrayList;

    .line 164
    new-instance p1, Lorg/telegram/ui/TopicsFragment$Adapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/TopicsFragment$Adapter;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/ui/TopicsFragment$1;)V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->adapter:Lorg/telegram/ui/TopicsFragment$Adapter;

    const/4 p1, 0x0

    .line 168
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->hiddenCount:I

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->hiddenShown:Z

    .line 179
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->floatingHidden:Z

    .line 180
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 183
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->animatedUpdateEnabled:Z

    .line 219
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->bottomPannelVisible:Z

    const/4 v1, 0x0

    .line 220
    iput v1, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    .line 227
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    .line 250
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->mute:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 275
    iput v1, p0, Lorg/telegram/ui/TopicsFragment;->slideFragmentProgress:F

    .line 2255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 292
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "chat_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    .line 293
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v4, "for_select"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/telegram/ui/TopicsFragment;->opnendForSelect:Z

    .line 294
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v4, "forward_to"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/telegram/ui/TopicsFragment;->openedForForward:Z

    .line 295
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    .line 296
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "topics_end_reached_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->canShowProgress:Z

    .line 297
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object v0

    neg-long v1, v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/fork/controller/RecentChatsController;->updateCreationDate(JZ)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->clearSelectedTopics()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/TopicsFragment;Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->deleteTopics(Ljava/util/HashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->hiddenCount:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->hiddenShown:Z

    return p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/TopicsFragment;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->hiddenShown:Z

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->pullViewState:I

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/TopicsFragment;I)I
    .locals 0

    .line 135
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->pullViewState:I

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/TopicsFragment;)Landroid/view/View;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->generalTopicViewMoving:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->generalTopicViewMoving:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->searchTabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/TopicsFragment;ZZ)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    return-void
.end method

.method static synthetic access$2202(Lorg/telegram/ui/TopicsFragment;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->scrollToTop:Z

    return p1
.end method

.method static synthetic access$2302(Lorg/telegram/ui/TopicsFragment;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->updateAnimated:Z

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/TopicsController;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->mute:Z

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/NotificationsController;
    .locals 0

    .line 135
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/TopicsFragment;Z)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->animateToSearchView(Z)V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/TopicsFragment;Z)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->openProfile(Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/TopicsFragment;)F
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->checkForLoadMore()V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/TopicsFragment;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/PullForegroundDrawable;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/TopicsFragment;)J
    .locals 2

    .line 135
    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->startArchivePullingTime:J

    return-wide v0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/TopicsFragment;J)J
    .locals 0

    .line 135
    iput-wide p1, p0, Lorg/telegram/ui/TopicsFragment;->startArchivePullingTime:J

    return-wide p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->canShowHiddenArchive:Z

    return p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/TopicsFragment;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->canShowHiddenArchive:Z

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/TopicsFragment;ZZ)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->hideFloatingButton(ZZ)V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->bottomButtonType:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->joinToGroup()V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateTopView()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/TopicsFragment;)Landroid/view/View;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/TopicsFragment;)Landroid/view/View;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->dialogRemoveFinished:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->dialogInsertFinished:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->dialogChangeFinished:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->lastItemsCount:I

    return p0
.end method

.method static synthetic access$4502(Lorg/telegram/ui/TopicsFragment;I)I
    .locals 0

    .line 135
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->lastItemsCount:I

    return p1
.end method

.method static synthetic access$4600(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->forumTopicsListFrozen:Z

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/TopicsFragment;)Landroidx/recyclerview/widget/DefaultItemAnimator;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->onDialogAnimationFinished()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/TopicsFragment;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->disableActionBarScrolling:Z

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/TopicsFragment;)Landroid/view/View;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->emptyView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5102(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->emptyView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->waitingForScrollFinished:Z

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->itemTouchHelperCallback:Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;

    return-object p0
.end method

.method static synthetic access$5702(Lorg/telegram/ui/TopicsFragment;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->allowSwipeDuringCurrentTouch:Z

    return p1
.end method

.method static synthetic access$5800(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/TopicsFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->topView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/NotificationsController;
    .locals 0

    .line 135
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/NotificationsController;
    .locals 0

    .line 135
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/NotificationsController;
    .locals 0

    .line 135
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/TopicsFragment;F)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->updateSearchProgress(F)V

    return-void
.end method

.method static synthetic access$6400(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/TopicsFragment;Z)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->updateCreateTopicButton(Z)V

    return-void
.end method

.method static synthetic access$6700(Lorg/telegram/ui/TopicsFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/TopicsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->frozenForumTopicsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->reordering:Z

    return p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->showChatPreview(Lorg/telegram/ui/Cells/DialogCell;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    return p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 135
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 135
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method private animateToSearchView(Z)V
    .locals 5

    .line 1944
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->searching:Z

    .line 1945
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1946
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1947
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1949
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchTabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1950
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->createTabsView(ZI)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchTabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    .line 1951
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_1

    const-string v2, "windowBackgroundWhite"

    .line 1952
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1954
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->fullscreenView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->searchTabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/4 v3, -0x1

    const/16 v4, 0x2c

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1956
    iget v2, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    aput v2, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    aput v3, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    .line 1957
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-static {v0, v1, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1958
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v0, :cond_4

    xor-int/lit8 v3, p1, 0x1

    .line 1959
    iput-boolean v3, v0, Lorg/telegram/ui/RightSlidingDialogContainer;->enabled:Z

    :cond_4
    if-nez p1, :cond_5

    .line 1961
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->animateSearchWithScale:Z

    .line 1962
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1963
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_6

    .line 1965
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 1967
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 1968
    invoke-direct {p0, v1}, Lorg/telegram/ui/TopicsFragment;->updateCreateTopicButton(Z)V

    .line 1970
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/TopicsFragment$23;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/TopicsFragment$23;-><init>(Lorg/telegram/ui/TopicsFragment;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1985
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1986
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1987
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1989
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    new-array v2, v4, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private checkForLoadMore()V
    .locals 3

    .line 2679
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->endIsReached(J)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2682
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 2683
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->adapter:Lorg/telegram/ui/TopicsFragment$Adapter;

    invoke-virtual {v1}, Lorg/telegram/ui/TopicsFragment$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    if-lt v0, v1, :cond_2

    .line 2684
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->loadTopics(J)V

    .line 2686
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->checkLoading()V

    :cond_3
    :goto_0
    return-void
.end method

.method private checkLoading()V
    .locals 4

    .line 1928
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->isLoading(J)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->loadingTopics:Z

    .line 1929
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v0, v1, :cond_1

    .line 1930
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-boolean v2, p0, Lorg/telegram/ui/TopicsFragment;->loadingTopics:Z

    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 1932
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    if-eqz v0, :cond_2

    .line 1933
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty()V

    .line 1935
    :cond_2
    invoke-direct {p0, v1}, Lorg/telegram/ui/TopicsFragment;->updateCreateTopicButton(Z)V

    return-void
.end method

.method private chekActionMode()V
    .locals 10

    .line 2220
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeIsExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2223
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode(ZLjava/lang/String;)Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 2225
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v1, :cond_1

    .line 2226
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2227
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->drawBlur:Z

    .line 2229
    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v3, 0x12

    .line 2230
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 2231
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2232
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string v3, "actionBarActionModeDefaultIcon"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 2233
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x48

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2234
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget-object v3, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda11;->INSTANCE:Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda11;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x4

    .line 2236
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_pin:I

    const/16 v4, 0x36

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v1, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->pinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x5

    .line 2237
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_unpin:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v1, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->unpinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x6

    .line 2238
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_mute:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v1, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->muteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x7

    .line 2239
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sget v6, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v7, "Delete"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v3, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xc

    .line 2240
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_archive_hide:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sget v6, Lorg/telegram/messenger/R$string;->Hide:I

    const-string v7, "Hide"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v3, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->hideItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    .line 2241
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 v1, 0xd

    .line 2242
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_archive_show:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sget v7, Lorg/telegram/messenger/R$string;->Show:I

    const-string v8, "Show"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->showItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2243
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2245
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sget v5, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v6, "AccDescrMoreOptions"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v1, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2246
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_markread:I

    sget v2, Lorg/telegram/messenger/R$string;->MarkAsRead:I

    const-string v4, "MarkAsRead"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->readItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 2247
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x9

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_topic_close:I

    sget v3, Lorg/telegram/messenger/R$string;->CloseTopic:I

    const-string v4, "CloseTopic"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->closeTopic:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 2248
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xa

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_topic_restart:I

    sget v3, Lorg/telegram/messenger/R$string;->RestartTopic:I

    const-string v4, "RestartTopic"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->restartTopic:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-void
.end method

.method private clearSelectedTopics()V
    .locals 1

    .line 2073
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2074
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 2075
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 2076
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->updateReordering()V

    return-void
.end method

.method private deleteTopics(Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1738
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1739
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v1

    const-string v2, "DeleteTopics"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1740
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1741
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1742
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v4, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v4, v5, v7}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v2

    .line 1743
    sget v4, Lorg/telegram/messenger/R$string;->DeleteSelectedTopic:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    aput-object v2, v3, v6

    const-string v2, "DeleteSelectedTopic"

    invoke-static {v2, v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1745
    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->DeleteSelectedTopics:I

    const-string v3, "DeleteSelectedTopics"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1747
    :goto_0
    sget v2, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v3, "Delete"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/TopicsFragment$20;

    invoke-direct {v3, p0, p1, v1, p2}, Lorg/telegram/ui/TopicsFragment$20;-><init>(Lorg/telegram/ui/TopicsFragment;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1764
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p2, "Cancel"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/TopicsFragment$21;

    invoke-direct {p2, p0}, Lorg/telegram/ui/TopicsFragment$21;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1770
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1771
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 p2, -0x1

    .line 1772
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const-string p2, "dialogTextRed2"

    .line 1774
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private hideFloatingButton(ZZ)V
    .locals 6

    .line 3044
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->floatingHidden:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 3047
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->floatingHidden:Z

    .line 3048
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_3

    .line 3050
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 3051
    iget v5, p0, Lorg/telegram/ui/TopicsFragment;->floatingButtonHideProgress:F

    aput v5, v4, v1

    iget-boolean v5, p0, Lorg/telegram/ui/TopicsFragment;->floatingHidden:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    aput v0, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3052
    new-instance v3, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v2, [Landroid/animation/Animator;

    aput-object v0, v3, v1

    .line 3056
    invoke-virtual {p2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x12c

    .line 3057
    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3058
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3059
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 3061
    :goto_2
    iput v0, p0, Lorg/telegram/ui/TopicsFragment;->floatingButtonHideProgress:F

    .line 3063
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateFloatingButtonOffset()V

    .line 3065
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    xor-int/2addr p1, v2

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method private joinToGroup()V
    .locals 10

    .line 2055
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    new-instance v8, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v8, p0}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    new-instance v9, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda16;

    invoke-direct {v9, p0}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/MessagesController;->addUserToChat(JLorg/telegram/tgnet/TLRPC$User;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/lang/Runnable;Lorg/telegram/messenger/MessagesController$ErrorDelegate;)V

    .line 2068
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeSearchByActiveAction:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2069
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    return-void
.end method

.method private synthetic lambda$animateToSearchView$13(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1962
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->updateSearchProgress(F)V

    return-void
.end method

.method private static synthetic lambda$chekActionMode$16(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)V
    .locals 0

    .line 654
    iget-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->searching:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 655
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->openProfile(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 0

    .line 663
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->openParentSearch()V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;I)V
    .locals 7

    .line 829
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isInPreviewMode()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 833
    instance-of v0, p1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    if-eqz v0, :cond_1

    .line 834
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    iget-object p2, p2, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 839
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->opnendForSelect:Z

    if-eqz v0, :cond_5

    .line 840
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->onTopicSelectedListener:Lorg/telegram/ui/TopicsFragment$OnTopicSelectedListener;

    if-eqz p1, :cond_3

    .line 841
    invoke-interface {p1, p2}, Lorg/telegram/ui/TopicsFragment$OnTopicSelectedListener;->onTopicSelected(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    .line 843
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_4

    .line 844
    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v1, v1

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/DialogsActivity;->didSelectResult(JIZZLorg/telegram/ui/TopicsFragment;)V

    :cond_4
    return-void

    .line 848
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 849
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->toggleSelection(Landroid/view/View;)V

    return-void

    .line 852
    :cond_6
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 853
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 854
    instance-of v2, v1, Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_7

    check-cast v1, Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 855
    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getOpenedDialogId()Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object v1

    .line 856
    iget-wide v2, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    iget-wide v4, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v4, v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_7

    iget v1, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:I

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v1, v2, :cond_7

    return-void

    .line 861
    :cond_8
    iget p1, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:I

    .line 862
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    .line 864
    :cond_9
    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {p0, v1, v2, p2, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->openTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V

    :cond_a
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;IFF)Z
    .locals 9

    .line 867
    iget-boolean p2, p0, Lorg/telegram/ui/TopicsFragment;->opnendForSelect:Z

    const/4 v0, 0x0

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isInPreviewMode()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 870
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-nez p2, :cond_1

    instance-of p2, p1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    if-eqz p2, :cond_1

    .line 871
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    .line 872
    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/Cells/DialogCell;->isPointInsideAvatar(FF)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 873
    invoke-direct {p0, p2}, Lorg/telegram/ui/TopicsFragment;->showChatPreview(Lorg/telegram/ui/Cells/DialogCell;)Z

    .line 874
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 875
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v0

    .line 879
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->toggleSelection(Landroid/view/View;)V

    .line 880
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 2

    .line 1107
    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/TopicCreateFragment;->create(JI)Lorg/telegram/ui/TopicCreateFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 4

    .line 1219
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/telegram/messenger/MessagesController;->hidePeerSettingsBar(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 1220
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 0

    .line 1303
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$20()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_7

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3921
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    goto :goto_1

    .line 3922
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    if-eqz v3, :cond_1

    .line 3923
    iget-object v2, v3, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    goto :goto_4

    .line 3928
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    .line 3930
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3931
    instance-of v6, v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v6, :cond_3

    .line 3932
    check-cast v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    goto :goto_3

    .line 3933
    :cond_3
    instance-of v6, v5, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v6, :cond_4

    .line 3934
    check-cast v5, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(I)Z

    goto :goto_3

    .line 3935
    :cond_4
    instance-of v6, v5, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v6, :cond_5

    .line 3936
    check-cast v5, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3940
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v1, :cond_8

    const-string v2, "actionBarDefaultSubmenuBackground"

    .line 3941
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupBackgroundColor(IZ)V

    .line 3942
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "actionBarDefaultSubmenuItem"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsColor(IZZ)V

    .line 3943
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "actionBarDefaultSubmenuItemIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsColor(IZZ)V

    .line 3944
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "dialogButtonSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsSelectorColor(IZ)V

    .line 3946
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 3947
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_9

    .line 3948
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v2, "windowBackgroundWhite"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 3951
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateColors()V

    return-void
.end method

.method private synthetic lambda$hideFloatingButton$19(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3053
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->floatingButtonHideProgress:F

    .line 3054
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateFloatingButtonOffset()V

    return-void
.end method

.method private synthetic lambda$joinToGroup$14()V
    .locals 1

    const/4 v0, 0x1

    .line 2057
    invoke-direct {p0, v0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo(Z)V

    return-void
.end method

.method private synthetic lambda$joinToGroup$15(Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2059
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "INVITE_REQUEST_SENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2060
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 2061
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog_join_requested_time_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2062
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    invoke-static {p1, p0, v1}, Lorg/telegram/ui/Components/JoinGroupAlert;->showBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 2063
    invoke-direct {p0, v0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo(Z)V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method private static synthetic lambda$onDialogAnimationFinished$7()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onFragmentCreate$17(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 2514
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz v0, :cond_0

    .line 2515
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    .line 2516
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onFragmentCreate$18(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2513
    new-instance p2, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showChatPreview$10(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V
    .locals 4

    const/4 p2, 0x1

    .line 1895
    iput-boolean p2, p0, Lorg/telegram/ui/TopicsFragment;->updateAnimated:Z

    .line 1896
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    xor-int/2addr p1, p2

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/telegram/messenger/TopicsController;->toggleCloseTopic(JIZ)V

    .line 1897
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$showChatPreview$11()V
    .locals 0

    .line 1912
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$showChatPreview$12(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V
    .locals 0

    .line 1909
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 1910
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1911
    new-instance p1, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/TopicsFragment;->deleteTopics(Ljava/util/HashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showChatPreview$8(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V
    .locals 6

    const/4 p2, 0x1

    .line 1857
    iput-boolean p2, p0, Lorg/telegram/ui/TopicsFragment;->scrollToTop:Z

    .line 1858
    iput-boolean p2, p0, Lorg/telegram/ui/TopicsFragment;->updateAnimated:Z

    .line 1859
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    xor-int/lit8 v4, p1, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/TopicsController;->pinTopic(JIZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1860
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$showChatPreview$9(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;[Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILandroid/view/View;)V
    .locals 3

    .line 1874
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v0, v0

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-virtual {p4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 1875
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p2

    iget-wide p3, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long p3, p3

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-virtual {p2, p3, p4, p1, v0}, Lorg/telegram/messenger/NotificationsController;->muteDialog(JIZ)V

    .line 1876
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    .line 1877
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 1878
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 1881
    :cond_0
    aget-object p1, p2, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onDialogAnimationFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 1728
    iput v0, p0, Lorg/telegram/ui/TopicsFragment;->dialogRemoveFinished:I

    .line 1729
    iput v0, p0, Lorg/telegram/ui/TopicsFragment;->dialogInsertFinished:I

    .line 1730
    iput v0, p0, Lorg/telegram/ui/TopicsFragment;->dialogChangeFinished:I

    .line 1731
    sget-object v0, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda15;->INSTANCE:Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda15;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private openParentSearch()V
    .locals 3

    .line 1394
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1395
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-nez v0, :cond_0

    .line 1396
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 1397
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 1398
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1399
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 1400
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->parentAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 1402
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchPaddingStart(I)V

    .line 1403
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchAvatarImageView(Lorg/telegram/ui/Components/BackupImageView;)V

    .line 1404
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    .line 1405
    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSearch(Z)Z

    move-result v1

    .line 1404
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V

    :cond_1
    return-void
.end method

.method private openProfile(Z)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1367
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1368
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatPhotoEmpty;

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 1372
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1373
    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    const-string v3, "chat_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1374
    new-instance v1, Lorg/telegram/ui/ProfileActivity;

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSharedMediaPreloader()Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    .line 1375
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ProfileActivity;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1376
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasImageLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v1, p1}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    .line 1377
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private prepareBlurBitmap()V
    .locals 5

    .line 3824
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useLNavigation:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3827
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 3828
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v1, v2

    .line 3829
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3830
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v4, 0x3e2aaaab

    .line 3831
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3832
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    const/4 v3, 0x7

    .line 3833
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit16 v0, v0, 0xb4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 3834
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3835
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3836
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3837
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3839
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getOverlayContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    const/4 v2, -0x1

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static prepareToSwitchAnimation(Lorg/telegram/ui/ChatActivity;)V
    .locals 6

    .line 302
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 305
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 306
    instance-of v2, v0, Lorg/telegram/ui/TopicsFragment;

    if-eqz v2, :cond_0

    .line 307
    check-cast v0, Lorg/telegram/ui/TopicsFragment;

    .line 308
    iget-wide v2, v0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v4

    neg-long v4, v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 316
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 317
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    neg-long v2, v2

    const-string v4, "chat_id"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 318
    new-instance v2, Lorg/telegram/ui/TopicsFragment;

    invoke-direct {v2, v0}, Lorg/telegram/ui/TopicsFragment;-><init>(Landroid/os/Bundle;)V

    .line 319
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v0, v2, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;I)Z

    .line 321
    :cond_3
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChatActivity;->setSwitchFromTopics(Z)V

    .line 322
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity;->finishFragment()V

    return-void
.end method

.method private setButtonType(I)V
    .locals 2

    .line 2460
    iget v0, p0, Lorg/telegram/ui/TopicsFragment;->bottomButtonType:I

    if-eq v0, p1, :cond_2

    .line 2461
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->bottomButtonType:I

    .line 2462
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    if-nez p1, :cond_0

    const-string v1, "chat_fieldOverlayText"

    goto :goto_0

    :cond_0
    const-string v1, "chat_reportSpam"

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UnreadCounterTextView;->setTextColorKey(Ljava/lang/String;)V

    .line 2463
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2464
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    :cond_2
    return-void
.end method

.method private setFragmentIsSliding(Z)V
    .locals 3

    .line 3713
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3716
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 3719
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3720
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3721
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_0

    .line 3723
    :cond_1
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p1, 0x1

    .line 3724
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3725
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 3728
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 3729
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    return-void
.end method

.method private setSlideTransitionProgress(F)V
    .locals 3

    .line 3743
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3746
    :cond_0
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->slideFragmentProgress:F

    .line 3747
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 3748
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 3751
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    if-eqz p1, :cond_2

    const v0, 0x3d4ccccd    # 0.05f

    .line 3753
    iget v1, p0, Lorg/telegram/ui/TopicsFragment;->slideFragmentProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float v1, v1, v0

    sub-float/2addr v2, v1

    const/4 v0, 0x0

    .line 3754
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 3755
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 3756
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 3757
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 3759
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->topView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 3760
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->topView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 3761
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->topView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 3762
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->topView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 3764
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 3765
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 3766
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 3767
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_2
    return-void
.end method

.method private showChatPreview(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 13

    const/4 v0, 0x0

    .line 1779
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 1782
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    aput-object v3, v2, v0

    .line 1784
    iget-object v3, p1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 1785
    new-instance v12, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v7

    new-instance v10, Lorg/telegram/ui/TopicsFragment$22;

    invoke-direct {v10, p0, v3}, Lorg/telegram/ui/TopicsFragment$22;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    .line 1842
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;-><init>(Landroid/content/Context;ILorg/telegram/ui/Components/PopupSwipeBackLayout;ZZLorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1844
    aget-object v4, v2, v0

    iget-object v5, v12, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    move-result v4

    .line 1845
    iput v1, v12, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;->type:I

    .line 1846
    iget-wide v5, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v5, v5

    iget v7, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    const/4 v8, 0x0

    invoke-virtual {v12, v5, v6, v7, v8}, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;->update(JILjava/util/HashSet;)V

    .line 1848
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    const/16 v6, 0xa0

    if-eqz v5, :cond_1

    .line 1849
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7, v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 1850
    iget-boolean v7, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-eqz v7, :cond_0

    .line 1851
    sget v7, Lorg/telegram/messenger/R$string;->DialogUnpin:I

    const-string v8, "DialogUnpin"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_unpin:I

    invoke-virtual {v5, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 1853
    :cond_0
    sget v7, Lorg/telegram/messenger/R$string;->DialogPin:I

    const-string v8, "DialogPin"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_pin:I

    invoke-virtual {v5, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1855
    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 1856
    new-instance v7, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v7, p0, v3}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1863
    aget-object v7, v2, v0

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1866
    :cond_1
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7, v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 1867
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v8, v8

    iget v10, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-virtual {v7, v8, v9, v10}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1868
    sget v7, Lorg/telegram/messenger/R$string;->Unmute:I

    const-string v8, "Unmute"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_mute:I

    invoke-virtual {v5, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 1870
    :cond_2
    sget v7, Lorg/telegram/messenger/R$string;->Mute:I

    const-string v8, "Mute"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_unmute:I

    invoke-virtual {v5, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1872
    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 1873
    new-instance v7, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v7, p0, v3, v2, v4}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;[Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1884
    aget-object v4, v2, v0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1886
    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lorg/telegram/messenger/ChatObject;->canManageTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1887
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 1888
    iget-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    if-eqz v5, :cond_3

    .line 1889
    sget v5, Lorg/telegram/messenger/R$string;->RestartTopic:I

    const-string v7, "RestartTopic"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_topic_restart:I

    invoke-virtual {v4, v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_2

    .line 1891
    :cond_3
    sget v5, Lorg/telegram/messenger/R$string;->CloseTopic:I

    const-string v7, "CloseTopic"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_topic_close:I

    invoke-virtual {v4, v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1893
    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 1894
    new-instance v5, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0, v3}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1899
    aget-object v5, v2, v0

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1902
    :cond_4
    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lorg/telegram/messenger/ChatObject;->canDeleteTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1903
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    const-string v5, "DeleteTopics"

    .line 1904
    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v4, v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    const-string v1, "dialogRedIcon"

    .line 1905
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    const-string v1, "dialogTextRed"

    .line 1906
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 1907
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 1908
    new-instance v1, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1915
    aget-object v1, v2, v0

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1918
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->prepareBlurBitmap()V

    .line 1919
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1920
    iget-wide v3, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    const-string v5, "chat_id"

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1921
    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1922
    iget-wide v4, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v4, v4

    iget-object p1, p1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {v4, v5, p1}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JI)Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object p1

    invoke-static {v3, p1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->applyTopic(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagesStorage$TopicKey;)V

    .line 1923
    aget-object p1, v2, v0

    invoke-virtual {p0, v3, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z

    return v0
.end method

.method private toggleSelection(Landroid/view/View;)V
    .locals 13

    .line 2080
    instance-of v0, p1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    if-eqz v0, :cond_1a

    .line 2081
    check-cast p1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    .line 2082
    iget-object v0, p1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v0, :cond_0

    return-void

    .line 2085
    :cond_0
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    .line 2086
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2087
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2089
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    .line 2091
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v2, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 2093
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 2094
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->chekActionMode()V

    .line 2095
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v0, :cond_2

    .line 2096
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2098
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode(Z)V

    .line 2099
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2100
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2104
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2106
    iget-object v8, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v9, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v8, v9, v10, v7}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 2108
    iget v9, v8, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    if-eqz v9, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 2113
    :cond_4
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-nez v9, :cond_6

    .line 2114
    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-eqz v8, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 2121
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-wide v9, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v9, v9

    invoke-virtual {v8, v9, v10, v7}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    const/16 v0, 0x8

    if-lez v2, :cond_8

    .line 2129
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->readItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2130
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->readItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v7, Lorg/telegram/messenger/R$string;->MarkAsRead:I

    const-string v8, "MarkAsRead"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_markread:I

    invoke-virtual {v2, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_2

    .line 2132
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->readItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_2
    if-eqz v4, :cond_9

    .line 2135
    iput-boolean v3, p0, Lorg/telegram/ui/TopicsFragment;->mute:Z

    .line 2136
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->muteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_unmute:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2137
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->muteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$string;->ChatsUnmute:I

    const-string v7, "ChatsUnmute"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2139
    :cond_9
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->mute:Z

    .line 2140
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->muteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_mute:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2141
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->muteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$string;->ChatsMute:I

    const-string v7, "ChatsMute"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2144
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->pinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-ne v5, v1, :cond_a

    if-nez v6, :cond_a

    const/4 v4, 0x0

    goto :goto_4

    :cond_a
    const/16 v4, 0x8

    :goto_4
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2145
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->unpinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-ne v6, v1, :cond_b

    if-nez v5, :cond_b

    const/4 v4, 0x0

    goto :goto_5

    :cond_b
    const/16 v4, 0x8

    :goto_5
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2150
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v2, v4, v1}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 2158
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2159
    :cond_c
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 2160
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2161
    iget-object v10, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v11, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v10, v11, v12, v9}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 2163
    iget v10, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v10, p1, v9}, Lorg/telegram/messenger/ChatObject;->canDeleteTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result v10

    if-eqz v10, :cond_d

    add-int/lit8 v6, v6, 0x1

    .line 2166
    :cond_d
    iget v10, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v10, p1, v9}, Lorg/telegram/messenger/ChatObject;->canManageTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2167
    iget v10, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v10, v1, :cond_f

    .line 2168
    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-eqz v10, :cond_e

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_e
    add-int/lit8 v7, v7, 0x1

    .line 2174
    :cond_f
    :goto_7
    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-nez v10, :cond_c

    .line 2175
    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    if-eqz v9, :cond_10

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 2184
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->closeTopic:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v4, :cond_12

    if-lez v5, :cond_12

    const/4 v2, 0x0

    goto :goto_8

    :cond_12
    const/16 v2, 0x8

    :goto_8
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2185
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->closeTopic:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-le v5, v1, :cond_13

    sget v2, Lorg/telegram/messenger/R$string;->CloseTopics:I

    const-string v9, "CloseTopics"

    goto :goto_9

    :cond_13
    sget v2, Lorg/telegram/messenger/R$string;->CloseTopic:I

    const-string v9, "CloseTopic"

    :goto_9
    invoke-static {v9, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 2186
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->restartTopic:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v5, :cond_14

    if-lez v4, :cond_14

    const/4 v2, 0x0

    goto :goto_a

    :cond_14
    const/16 v2, 0x8

    :goto_a
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2187
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->restartTopic:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-le v4, v1, :cond_15

    sget v2, Lorg/telegram/messenger/R$string;->RestartTopics:I

    const-string v4, "RestartTopics"

    goto :goto_b

    :cond_15
    sget v2, Lorg/telegram/messenger/R$string;->RestartTopic:I

    const-string v4, "RestartTopic"

    :goto_b
    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 2188
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-ne v6, v2, :cond_16

    const/4 v2, 0x0

    goto :goto_c

    :cond_16
    const/16 v2, 0x8

    :goto_c
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2189
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->hideItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-ne v7, v1, :cond_17

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-ne v2, v1, :cond_17

    const/4 v2, 0x0

    goto :goto_d

    :cond_17
    const/16 v2, 0x8

    :goto_d
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2190
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->showItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-ne v8, v1, :cond_18

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-ne v2, v1, :cond_18

    goto :goto_e

    :cond_18
    const/16 v3, 0x8

    :goto_e
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2192
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->checkHideMenuItem()V

    .line 2194
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->updateReordering()V

    goto :goto_f

    .line 2147
    :cond_19
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    :cond_1a
    :goto_f
    return-void
.end method

.method private updateChatInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 2348
    invoke-direct {p0, v0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo(Z)V

    return-void
.end method

.method private updateChatInfo(Z)V
    .locals 14

    .line 2352
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-nez v0, :cond_0

    goto/16 :goto_12

    .line 2355
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2357
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setChatAvatar(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 2359
    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v1, v1

    .line 2360
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialog_bar_vis3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2362
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialog_bar_report"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v6, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 2363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dialog_bar_block"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2365
    iget-boolean v6, p0, Lorg/telegram/ui/TopicsFragment;->opnendForSelect:Z

    const/4 v7, 0x0

    const/16 v8, 0x8

    if-nez v6, :cond_4

    if-eqz v0, :cond_3

    .line 2367
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 2369
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v9, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v9, v9

    invoke-virtual {v6, v9, v10, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "drawableMuteIcon"

    .line 2370
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v7

    .line 2372
    :goto_1
    iget-object v9, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v9, v7, v6}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitleIcons(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2374
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateSubtitle()V

    goto :goto_4

    .line 2376
    :cond_4
    iget-boolean v6, p0, Lorg/telegram/ui/TopicsFragment;->openedForForward:Z

    if-eqz v6, :cond_5

    .line 2377
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    sget v9, Lorg/telegram/messenger/R$string;->ForwardTo:I

    const-string v10, "ForwardTo"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2379
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    sget v9, Lorg/telegram/messenger/R$string;->SelectTopic:I

    const-string v10, "SelectTopic"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 2381
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2382
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 2383
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v9, p0, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_6

    const/16 v9, 0x56

    goto :goto_3

    :cond_6
    const/16 v9, 0x28

    :goto_3
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2385
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAvatarContainer;->updateSubtitle()V

    .line 2386
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2388
    :goto_4
    iget-boolean v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    if-nez v6, :cond_9

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 p1, 0x1

    .line 2390
    :goto_6
    iget v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dialog_join_requested_time_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, -0x1

    invoke-interface {v6, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v0, :cond_a

    .line 2391
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-lez v13, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    const-wide/32 v9, 0x1d4c0

    cmp-long v13, v11, v9

    if-gez v13, :cond_a

    .line 2394
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelJoinRequestSent:I

    const-string v4, "ChannelJoinRequestSent"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lorg/telegram/ui/Components/UnreadCounterTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 2395
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2396
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v1, v2, v6, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2397
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-static {v1, v5, v6, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2398
    invoke-direct {p0, v2}, Lorg/telegram/ui/TopicsFragment;->setButtonType(I)V

    goto/16 :goto_9

    :cond_a
    if-eqz v0, :cond_e

    .line 2399
    iget-boolean v9, p0, Lorg/telegram/ui/TopicsFragment;->opnendForSelect:Z

    if-nez v9, :cond_e

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v9, v10, v11}, Lorg/telegram/messenger/MessagesController;->isJoiningChannel(J)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2403
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->isJoiningChannel(J)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_8

    .line 2406
    :cond_c
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->join_request:Z

    if-eqz v1, :cond_d

    .line 2407
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelJoinRequest:I

    const-string v4, "ChannelJoinRequest"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/UnreadCounterTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 2409
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelJoin:I

    const-string v4, "ChannelJoin"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/UnreadCounterTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2411
    :goto_7
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 2412
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    const/4 v1, 0x0

    .line 2415
    :goto_8
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v3, v1, v6, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2416
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    xor-int/2addr v1, v5

    invoke-static {v3, v1, v6, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2417
    invoke-direct {p0, v2}, Lorg/telegram/ui/TopicsFragment;->setButtonType(I)V

    goto :goto_9

    :cond_e
    if-eqz v1, :cond_10

    if-nez v3, :cond_f

    if-eqz v4, :cond_10

    .line 2419
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ReportSpamAndLeave:I

    const-string v4, "ReportSpamAndLeave"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/UnreadCounterTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2420
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 2421
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 2423
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v1, v2, v6, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2424
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-static {v1, v5, v6, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2426
    invoke-direct {p0, v5}, Lorg/telegram/ui/TopicsFragment;->setButtonType(I)V

    :goto_9
    const/4 v1, 0x1

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    .line 2432
    :goto_a
    iget-boolean v3, p0, Lorg/telegram/ui/TopicsFragment;->bottomPannelVisible:Z

    if-eq v3, v1, :cond_15

    .line 2433
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomPannelVisible:Z

    .line 2434
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v3, 0x0

    const/16 v4, 0x35

    if-nez p1, :cond_13

    .line 2436
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_11

    const/4 v6, 0x0

    goto :goto_b

    :cond_11
    const/16 v6, 0x8

    :goto_b
    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2437
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_12

    goto :goto_c

    :cond_12
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v3, v1

    :goto_c
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_e

    .line 2439
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v1, :cond_14

    goto :goto_d

    :cond_14
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    :goto_d
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Lorg/telegram/ui/TopicsFragment$24;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/TopicsFragment$24;-><init>(Lorg/telegram/ui/TopicsFragment;Z)V

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2449
    :cond_15
    :goto_e
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateTopView()V

    .line 2451
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->opnendForSelect:Z

    if-eqz v1, :cond_16

    const/16 v1, 0x8

    goto :goto_f

    :cond_16
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2452
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->addMemberSubMenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canAddUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    goto :goto_10

    :cond_17
    const/16 v1, 0x8

    :goto_10
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2454
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->deleteChatSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_18

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v1, :cond_18

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_11

    :cond_18
    const/16 v2, 0x8

    :goto_11
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2455
    invoke-direct {p0, v5}, Lorg/telegram/ui/TopicsFragment;->updateCreateTopicButton(Z)V

    .line 2456
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {p1, v0, v1, v5}, Lorg/telegram/messenger/MessagesController;->getGroupCall(JZ)Lorg/telegram/messenger/ChatObject$Call;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    :cond_19
    :goto_12
    return-void
.end method

.method private updateColors()V
    .locals 4

    .line 1352
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "chat_fieldOverlayText"

    .line 1355
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 1356
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "chats_actionIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1357
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1358
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionModeColor(I)V

    .line 1359
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v0, :cond_1

    .line 1360
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "actionBarDefault"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1362
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private updateCreateTopicButton(Z)V
    .locals 4

    .line 1993
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->createTopicSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v0, :cond_0

    return-void

    .line 1996
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1997
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canCreateTopic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->searching:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->opnendForSelect:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->loadingTopics:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->canShowCreateTopic:Z

    .line 1998
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->createTopicSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1999
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->canShowCreateTopic:Z

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/TopicsFragment;->hideFloatingButton(ZZ)V

    return-void
.end method

.method private updateFloatingButtonOffset()V
    .locals 2

    const/16 v0, 0x64

    .line 3069
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/TopicsFragment;->floatingButtonHideProgress:F

    mul-float v0, v0, v1

    iget v1, p0, Lorg/telegram/ui/TopicsFragment;->transitionPadding:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/TopicsFragment;->floatingButtonTranslation:F

    .line 3070
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private updateSearchProgress(F)V
    .locals 5

    .line 2003
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    const-string v0, "actionBarDefaultIcon"

    .line 2004
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 2005
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "actionBarActionModeDefaultIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    invoke-static {v0, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 2006
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    iget v4, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    invoke-static {v1, v2, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    const-string v0, "actionBarDefaultSelector"

    .line 2008
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "actionBarActionModeDefaultSelector"

    .line 2009
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 2010
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v4, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    invoke-static {v0, v1, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 2012
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v0, :cond_0

    .line 2013
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "actionBarDefault"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "windowBackgroundWhite"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 2015
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2016
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2017
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchTabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/16 v3, 0x10

    if-eqz v0, :cond_1

    .line 2018
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2019
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchTabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2021
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2022
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2024
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2025
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->fullscreenView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2031
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2033
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2034
    iget-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->animateSearchWithScale:Z

    if-eqz p1, :cond_3

    const p1, 0x3f7ae148    # 0.98f

    const v0, 0x3ca3d70a    # 0.02f

    .line 2035
    iget v2, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    add-float/2addr v1, p1

    .line 2036
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 2037
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_3
    return-void
.end method

.method private updateSubtitle()V
    .locals 3

    .line 2469
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    .line 2470
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v1, :cond_0

    .line 2471
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 2473
    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_1

    .line 2476
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Members"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2478
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->Loading:I

    const-string v1, "Loading"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2481
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTopView()V
    .locals 4

    .line 1417
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1418
    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextView;->getTopPadding()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v0, v1

    .line 1419
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1421
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->getView()Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 1423
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    invoke-virtual {v3}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->getViewEnterOffset()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1424
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    invoke-virtual {v2}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->getViewEnterOffset()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    invoke-virtual {v3}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->getViewHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 1426
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 1427
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    iget-boolean v2, p0, Lorg/telegram/ui/TopicsFragment;->bottomPannelVisible:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/16 v2, 0x33

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    float-to-int v0, v0

    add-int/2addr v2, v0

    invoke-virtual {v1, v3, v3, v3, v2}, Lorg/telegram/ui/Components/BlurredRecyclerView;->setPadding(IIII)V

    return-void
.end method

.method private updateTopicsEmptyViewText()V
    .locals 6

    .line 1328
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1331
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "d"

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1332
    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/16 v2, 0x10

    .line 1333
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setSize(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1334
    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1335
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    const/16 v4, 0xf

    invoke-static {v1, v4}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1336
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->NoTopicsDescription:I

    const-string v3, "NoTopicsDescription"

    .line 1337
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v3, "%s"

    invoke-static {v3, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1336
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1340
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->General:I

    const-string v1, "General"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1341
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1343
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    .line 1345
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->NoTopicsDescriptionUser:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "NoTopicsDescriptionUser"

    .line 1346
    invoke-static {v0, v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 1345
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateTopicsList(ZZ)V
    .locals 9

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2552
    iget-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->updateAnimated:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/4 v1, 0x0

    .line 2555
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->updateAnimated:Z

    .line 2556
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v3, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 2559
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2560
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2561
    iget-object v5, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x0

    .line 2562
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 2563
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->excludeTopics:Ljava/util/HashSet;

    if-eqz v6, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 2566
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/ui/TopicsFragment$Item;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-direct {v7, p0, v1, v8}, Lorg/telegram/ui/TopicsFragment$Item;-><init>(Lorg/telegram/ui/TopicsFragment;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2568
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v6, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/TopicsController;->endIsReached(J)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/TopicsFragment;->canShowProgress:Z

    if-eqz v2, :cond_3

    .line 2569
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/TopicsFragment$Item;

    invoke-direct {v6, p0, v0, v5}, Lorg/telegram/ui/TopicsFragment$Item;-><init>(Lorg/telegram/ui/TopicsFragment;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2572
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2573
    iget-boolean v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    if-eqz v6, :cond_4

    if-eqz p2, :cond_4

    if-le v2, v3, :cond_4

    .line 2574
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    add-int/lit8 p2, v3, 0x4

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    const/4 p1, 0x0

    .line 2578
    :cond_4
    iput v1, p0, Lorg/telegram/ui/TopicsFragment;->hiddenCount:I

    const/4 p2, 0x0

    .line 2579
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_6

    .line 2580
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/TopicsFragment$Item;

    if-eqz v2, :cond_5

    .line 2581
    iget-object v2, v2, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v2, :cond_5

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-eqz v2, :cond_5

    .line 2582
    iget v2, p0, Lorg/telegram/ui/TopicsFragment;->hiddenCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/TopicsFragment;->hiddenCount:I

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 2586
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p2

    if-eqz p1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    goto :goto_3

    :cond_7
    move-object v0, v5

    :goto_3
    if-eq p2, v0, :cond_9

    .line 2587
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    if-eqz p1, :cond_8

    iget-object v5, p0, Lorg/telegram/ui/TopicsFragment;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    :cond_8
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 2590
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->adapter:Lorg/telegram/ui/TopicsFragment$Adapter;

    if-eqz p1, :cond_a

    .line 2591
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {p1, v4, p2}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2594
    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->scrollToTop:Z

    if-nez p1, :cond_b

    if-nez v3, :cond_c

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_c

    .line 2595
    invoke-virtual {p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2596
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->scrollToTop:Z

    .line 2600
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->checkLoading()V

    .line 2601
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateTopicsEmptyViewText()V

    return-void
.end method


# virtual methods
.method public allowFinishFragmentInsteadOfRemoveFromStack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic checkAndUpdateAvatar()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityInterface$-CC;->$default$checkAndUpdateAvatar(Lorg/telegram/ui/Components/ChatActivityInterface;)V

    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 31

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 327
    new-instance v0, Lorg/telegram/ui/TopicsFragment$1;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/TopicsFragment$1;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 487
    iget-boolean v1, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    const/4 v8, 0x1

    xor-int/2addr v1, v8

    iput-boolean v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->needBlur:Z

    .line 489
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 490
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 491
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setClipContent(Z)V

    .line 492
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 493
    iget-boolean v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 495
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setInterceptTouches(Z)V

    .line 498
    :cond_1
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v1, v9}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 500
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$2;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/TopicsFragment$2;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 653
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 660
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    const/16 v2, 0x38

    if-eqz v1, :cond_2

    .line 661
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v0, v9, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v6, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 662
    new-instance v3, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v3, v6}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 666
    :cond_2
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v0, v9, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/TopicsFragment$3;

    invoke-direct {v3, v6}, Lorg/telegram/ui/TopicsFragment$3;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v6, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 691
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchPaddingStart(I)V

    .line 692
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$string;->Search:I

    const-string v4, "Search"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 693
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    const-string v3, "windowBackgroundWhiteBlackText"

    .line 694
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextColor(I)V

    const-string v3, "player_time"

    .line 695
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    const-string v3, "chat_messagePanelCursor"

    .line 696
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 698
    :goto_1
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    iget-object v3, v6, Lorg/telegram/ui/TopicsFragment;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v0, v9, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 699
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_discussion:I

    sget v3, Lorg/telegram/messenger/R$string;->TopicViewAsMessages:I

    const-string v4, "TopicViewAsMessages"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 700
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_addcontact:I

    sget v3, Lorg/telegram/messenger/R$string;->AddMember:I

    const-string v4, "AddMember"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x2

    invoke-virtual {v0, v10, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->addMemberSubMenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 701
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_topic_create:I

    sget v3, Lorg/telegram/messenger/R$string;->CreateTopic:I

    const-string v4, "CreateTopic"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x3

    invoke-virtual {v0, v11, v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->createTopicSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 702
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xb

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_leave:I

    sget v12, Lorg/telegram/messenger/R$string;->LeaveMegaMenu:I

    const-string v13, "LeaveMegaMenu"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v6, Lorg/telegram/ui/TopicsFragment;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v0, v1, v5, v12, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->deleteChatSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 704
    new-instance v0, Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-direct {v0, v7, v6, v9}, Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    .line 705
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 706
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setOccupyStatusBar(Z)V

    .line 707
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v5, v6, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/4 v12, -0x2

    const/4 v13, -0x1

    const/16 v14, 0x33

    const/16 v15, 0x38

    const/16 v16, 0x0

    const/16 v17, 0x56

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v5, v9, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 709
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    new-instance v5, Lorg/telegram/ui/TopicsFragment$4;

    invoke-direct {v5, v6}, Lorg/telegram/ui/TopicsFragment$4;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    new-instance v0, Lorg/telegram/ui/TopicsFragment$5;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/TopicsFragment$5;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    .line 733
    new-instance v0, Landroid/text/SpannableString;

    const-string v5, "#"

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 734
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x3f59999a    # 0.85f

    const/4 v14, -0x1

    invoke-static {v12, v13, v14}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createGeneralTopicDrawable(Landroid/content/Context;FI)Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;

    move-result-object v12

    .line 735
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v15, 0x12

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v12, v9, v13, v1, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 736
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v12, v10}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 v12, 0x21

    invoke-virtual {v0, v1, v9, v8, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 737
    new-instance v1, Lorg/telegram/ui/TopicsFragment$6;

    sget v12, Lorg/telegram/messenger/R$string;->AccSwipeForGeneral:I

    const-string v13, "AccSwipeForGeneral"

    .line 738
    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    sget v13, Lorg/telegram/messenger/R$string;->AccReleaseForGeneral:I

    const-string v15, "AccReleaseForGeneral"

    .line 739
    invoke-static {v15, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v1, v6, v12, v0}, Lorg/telegram/ui/TopicsFragment$6;-><init>(Lorg/telegram/ui/TopicsFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iput-object v1, v6, Lorg/telegram/ui/TopicsFragment;->pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    .line 749
    invoke-virtual {v1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->doNotShow()V

    .line 751
    iget-boolean v0, v6, Lorg/telegram/ui/TopicsFragment;->hiddenShown:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iput v0, v6, Lorg/telegram/ui/TopicsFragment;->pullViewState:I

    .line 752
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setWillDraw(Z)V

    .line 753
    new-instance v0, Lorg/telegram/ui/TopicsFragment$7;

    invoke-direct {v0, v6}, Lorg/telegram/ui/TopicsFragment$7;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    .line 814
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setHideIfEmpty(Z)V

    .line 815
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 816
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 817
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 818
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$8;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$8;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 825
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 826
    new-instance v0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-direct {v0, v1, v8}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    .line 827
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemsEnterAnimator(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)V

    .line 828
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda19;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 866
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda20;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;)V

    .line 883
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$9;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$9;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 890
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$10;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/TopicsFragment$10;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1061
    new-instance v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    iget-object v5, v6, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v1, v5}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 1062
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->adapter:Lorg/telegram/ui/TopicsFragment$Adapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1063
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1064
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$11;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$11;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1093
    new-instance v0, Lorg/telegram/ui/TopicsFragment$12;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    iput-object v1, v6, Lorg/telegram/ui/TopicsFragment;->itemTouchHelperCallback:Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;

    invoke-direct {v0, v6, v1}, Lorg/telegram/ui/TopicsFragment$12;-><init>(Lorg/telegram/ui/TopicsFragment;Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 1099
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1101
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-static {v14, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1102
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v12, 0x64

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1103
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    .line 1104
    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1105
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x3c

    const/16 v15, 0x15

    if-lt v5, v15, :cond_6

    const/16 v16, 0x38

    goto :goto_5

    :cond_6
    const/16 v16, 0x3c

    :goto_5
    if-lt v5, v15, :cond_7

    const/16 v17, 0x38

    goto :goto_6

    :cond_7
    const/16 v17, 0x3c

    :goto_6
    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_8

    goto :goto_7

    :cond_8
    const/4 v11, 0x5

    :goto_7
    const/16 v12, 0x50

    or-int/lit8 v18, v11, 0x50

    const/16 v11, 0xe

    if-eqz v13, :cond_9

    const/16 v19, 0xe

    goto :goto_8

    :cond_9
    const/16 v19, 0x0

    :goto_8
    const/16 v20, 0x0

    if-eqz v13, :cond_a

    const/16 v21, 0x0

    goto :goto_9

    :cond_a
    const/16 v21, 0xe

    :goto_9
    const/16 v22, 0xe

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1106
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1110
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const-string v1, "chats_actionBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v11, "chats_actionPressedBackground"

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    invoke-static {v0, v1, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v11, 0x4

    if-ge v5, v15, :cond_b

    .line 1112
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    sget v5, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1113
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v13, -0x1000000

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v13, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1114
    new-instance v5, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v5, v1, v0, v9, v9}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 1115
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v0, v5

    goto :goto_a

    .line 1118
    :cond_b
    new-instance v1, Landroid/animation/StateListAnimator;

    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    new-array v2, v8, [I

    const v5, 0x10100a7

    aput v5, v2, v9

    .line 1119
    iget-object v5, v6, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget-object v13, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v15, v10, [F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    aput v12, v15, v9

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    aput v12, v15, v8

    invoke-static {v5, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v14, 0xc8

    invoke-virtual {v5, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v2, v9, [I

    .line 1120
    iget-object v5, v6, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-array v12, v10, [F

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v8

    invoke-static {v5, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v12, 0xc8

    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 1121
    iget-object v2, v6, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 1122
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/TopicsFragment$13;

    invoke-direct {v2, v6}, Lorg/telegram/ui/TopicsFragment$13;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1130
    :goto_a
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1131
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    .line 1132
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_chatlist_add_2:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 1133
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1135
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v2, 0x18

    const/16 v13, 0x11

    invoke-static {v2, v2, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1138
    new-instance v12, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v12, v7}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    .line 1139
    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    const/16 v14, 0x8

    .line 1140
    invoke-virtual {v12, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1141
    invoke-virtual {v12, v8}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 1143
    new-instance v15, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;

    invoke-direct {v15, v6, v7}, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    .line 1144
    iget-object v0, v15, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1146
    new-instance v5, Lorg/telegram/ui/TopicsFragment$14;

    const/4 v4, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v12

    move-object v8, v5

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/TopicsFragment$14;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/TopicsFragment$EmptyViewContainer;)V

    iput-object v8, v6, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 1162
    :try_start_0
    iget-object v0, v8, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    nop

    .line 1165
    :goto_b
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-boolean v1, v6, Lorg/telegram/ui/TopicsFragment;->loadingTopics:Z

    iget-boolean v2, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 1166
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->NoTopics:I

    const-string v2, "NoTopics"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/TopicsFragment;->updateTopicsEmptyViewText()V

    .line 1169
    invoke-virtual {v15, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1170
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1171
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1173
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1175
    new-instance v0, Lorg/telegram/ui/TopicsFragment$15;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/TopicsFragment$15;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    .line 1184
    new-instance v0, Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/UnreadCounterTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    .line 1185
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1186
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    const/16 v8, 0x33

    const/16 v2, 0x50

    const/4 v3, -0x1

    invoke-static {v3, v8, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1187
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$16;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$16;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1204
    new-instance v0, Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v0, v7, v1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v1, 0x16

    .line 1205
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 1206
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1207
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v2, 0x1e

    invoke-static {v2, v2, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1209
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    .line 1210
    sget v1, Lorg/telegram/messenger/R$drawable;->miniplayer_close:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1211
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$string;->Close:I

    const-string v2, "Close"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1212
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "chat_topPanelClose"

    const/16 v1, 0x15

    if-lt v11, v1, :cond_c

    .line 1213
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->circle(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1215
    :cond_c
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1216
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1217
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    const/16 v23, 0x24

    const/16 v24, 0x24

    const/16 v25, 0x35

    const/16 v26, 0x0

    const/16 v27, 0x6

    const/16 v28, 0x2

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1218
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1223
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    .line 1225
    new-instance v0, Lorg/telegram/ui/TopicsFragment$17;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/TopicsFragment$17;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->fullscreenView:Landroid/widget/FrameLayout;

    .line 1245
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-nez v1, :cond_d

    .line 1246
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/16 v2, 0x77

    const/4 v3, -0x1

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1248
    :cond_d
    new-instance v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    .line 1249
    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1250
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->fullscreenView:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, 0x77

    const/16 v26, 0x0

    const/16 v27, 0x2c

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1252
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1254
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setDrawBlurBackground(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    .line 1256
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v23

    iget-wide v0, v6, Lorg/telegram/ui/TopicsFragment;->chatId:J

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x1

    const/16 v30, 0x0

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v30}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(JZLjava/util/concurrent/CountDownLatch;ZZI)Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1258
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->topView:Landroid/widget/FrameLayout;

    .line 1259
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/16 v2, 0xc8

    const/16 v3, 0x30

    const/4 v4, -0x1

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1261
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1263
    new-instance v1, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    new-instance v2, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda21;

    invoke-direct {v2, v6}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-direct {v1, v6, v0, v2}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$Callback;)V

    iput-object v1, v6, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    .line 1264
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v1, v0, v9}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 1265
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->topView:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    invoke-virtual {v1}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v6, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    invoke-virtual {v2}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->getViewHeight()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1268
    :cond_e
    iget-boolean v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v0, :cond_f

    .line 1269
    new-instance v13, Lorg/telegram/ui/TopicsFragment$18;

    const/4 v4, 0x0

    iget-object v5, v6, Lorg/telegram/ui/TopicsFragment;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/TopicsFragment$18;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v13, v6, Lorg/telegram/ui/TopicsFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    .line 1276
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->topView:Landroid/widget/FrameLayout;

    const/16 v1, 0x26

    const/4 v2, -0x1

    invoke-static {v2, v1, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    :cond_f
    const/4 v2, -0x1

    :goto_c
    const/4 v0, -0x2

    .line 1278
    invoke-static {v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 1279
    iget-boolean v1, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v1, :cond_10

    const/16 v1, 0x15

    if-lt v11, v1, :cond_10

    .line 1280
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1282
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1283
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1286
    :cond_11
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/TopicsFragment;->checkForLoadMore()V

    .line 1288
    new-instance v0, Lorg/telegram/ui/TopicsFragment$19;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/TopicsFragment$19;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    const/16 v1, 0x17

    if-lt v11, v1, :cond_12

    .line 1298
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v2, "windowBackgroundWhite"

    invoke-virtual {v6, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1300
    :cond_12
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 1301
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1302
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1305
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1307
    iput-boolean v1, v6, Lorg/telegram/ui/TopicsFragment;->bottomPannelVisible:Z

    .line 1309
    iget-boolean v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v0, :cond_15

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1310
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1311
    instance-of v2, v1, Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_13

    check-cast v1, Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1312
    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getOpenedDialogId()Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object v1

    .line 1313
    iget-wide v2, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    iget-wide v4, v6, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v4, v4

    cmp-long v7, v2, v4

    if-nez v7, :cond_13

    .line 1314
    iget v0, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:I

    iput v0, v6, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:I

    .line 1319
    :cond_14
    invoke-direct {v6, v9, v9}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    .line 1321
    :cond_15
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    .line 1322
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/TopicsFragment;->updateColors()V

    .line 1324
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    .line 2606
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_1

    .line 2607
    aget-object p2, p3, v1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 2608
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_0

    .line 2609
    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 2611
    :cond_0
    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-wide v4, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_a

    .line 2612
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    .line 2613
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    if-eqz v2, :cond_a

    .line 2614
    invoke-virtual {v2, p2, v0}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    goto/16 :goto_0

    .line 2617
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    if-ne p1, p2, :cond_3

    .line 2618
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Long;

    .line 2619
    iget-wide v2, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-nez p2, :cond_a

    .line 2620
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    .line 2621
    array-length p2, p3

    if-le p2, v0, :cond_2

    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2622
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->checkForLoadMore()V

    .line 2624
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->checkLoading()V

    goto/16 :goto_0

    .line 2626
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_5

    .line 2627
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2628
    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT:I

    if-ne p2, v2, :cond_4

    .line 2629
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    .line 2631
    :cond_4
    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_SELECT_DIALOG:I

    and-int/2addr p2, v2

    if-lez p2, :cond_a

    .line 2632
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p2

    iget-wide v2, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {p2, v2, v3, v1}, Lorg/telegram/messenger/TopicsController;->sortTopics(JZ)V

    .line 2633
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    const/4 v2, -0x1

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p2

    xor-int/2addr p2, v0

    .line 2634
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    if-eqz p2, :cond_a

    .line 2636
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_0

    .line 2639
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    if-ne p1, p2, :cond_6

    .line 2640
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    goto :goto_0

    .line 2641
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    if-ne p1, p2, :cond_7

    .line 2642
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Long;

    .line 2643
    iget-wide v2, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_a

    .line 2644
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lorg/telegram/messenger/MessagesController;->getGroupCall(JZ)Lorg/telegram/messenger/ChatObject$Call;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/TopicsFragment;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    .line 2645
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz p2, :cond_a

    .line 2646
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    xor-int/2addr v2, v0

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    goto :goto_0

    .line 2649
    :cond_7
    sget p2, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    if-ne p1, p2, :cond_8

    .line 2650
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    .line 2651
    invoke-direct {p0, v0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo(Z)V

    goto :goto_0

    .line 2652
    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatSwithcedToForum:I

    if-ne p1, p2, :cond_9

    goto :goto_0

    .line 2654
    :cond_9
    sget p2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, p2, :cond_a

    .line 2655
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack(Z)V

    .line 2657
    :cond_a
    :goto_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    if-ne p1, p2, :cond_d

    .line 2658
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz p1, :cond_d

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_1

    :cond_b
    const/4 p1, 0x2

    .line 2661
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2662
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2663
    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2664
    iget-wide v4, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v4, v4

    cmp-long p3, v2, v4

    if-nez p3, :cond_c

    if-nez p1, :cond_c

    .line 2665
    iget p1, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:I

    if-eq p1, p2, :cond_d

    .line 2666
    iput p2, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:I

    .line 2667
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    goto :goto_1

    .line 2670
    :cond_c
    iget p1, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:I

    if-eqz p1, :cond_d

    .line 2671
    iput v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:I

    .line 2672
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    nop

    :cond_d
    :goto_1
    return-void
.end method

.method public drawOverlay(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 3

    .line 3802
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3803
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3804
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextView;->isCallStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3808
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3812
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->topView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3813
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->setDrawOverlay(Z)V

    .line 3814
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3815
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->setDrawOverlay(Z)V

    .line 3816
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3818
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 3820
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAvatarContainer()Lorg/telegram/ui/Components/ChatAvatarContainer;
    .locals 1

    .line 3890
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    return-object v0
.end method

.method public getContentView()Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .locals 1

    .line 3895
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    return-object v0
.end method

.method public getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 3

    .line 2700
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityInterface$-CC;->$default$getCurrentUser(Lorg/telegram/ui/Components/ChatActivityInterface;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    return-object v0
.end method

.method public getDialogId()J
    .locals 2

    .line 2705
    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v0, v0

    return-wide v0
.end method

.method public getFullscreenView()Landroid/view/View;
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->fullscreenView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getGroupCall()Lorg/telegram/messenger/ChatObject$Call;
    .locals 2

    .line 2695
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_groupCall;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public synthetic getMergeDialogId()J
    .locals 2

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityInterface$-CC;->$default$getMergeDialogId(Lorg/telegram/ui/Components/ChatActivityInterface;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3917
    new-instance v7, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda18;

    invoke-direct {v7, v0}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    .line 3954
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3956
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "windowBackgroundWhite"

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3957
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "actionBarDefault"

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3958
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, "actionBarDefaultIcon"

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3959
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v13, 0x0

    const-string v17, "actionBarDefaultTitle"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3960
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/16 v21, 0x0

    const-string v25, "actionBarDefaultSelector"

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3962
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_0

    .line 3963
    invoke-static {v9, v1}, Lorg/telegram/ui/Cells/GraySectionCell;->createThemeDescriptions(Ljava/util/List;Lorg/telegram/ui/Components/RecyclerListView;)V

    :cond_0
    return-object v9
.end method

.method public synthetic getTopicId()I
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityInterface$-CC;->$default$getTopicId(Lorg/telegram/ui/Components/ChatActivityInterface;)I

    move-result v0

    return v0
.end method

.method public isAllowPinnedPlayer()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->opnendForSelect:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->openedForForward:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLightStatusBar()Z
    .locals 5

    .line 3130
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->searching:Z

    if-eqz v0, :cond_0

    const-string v0, "windowBackgroundWhite"

    goto :goto_0

    :cond_0
    const-string v0, "actionBarDefault"

    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 3131
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "actionBarActionModeDefault"

    .line 3132
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 3134
    :cond_1
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public onBackPressed()Z
    .locals 3

    .line 3844
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3845
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->clearSelectedTopics()V

    return v1

    .line 3848
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->searching:Z

    if-eqz v0, :cond_1

    .line 3849
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSearch(Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V

    return v1

    .line 3852
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onBecomeFullyHidden()V
    .locals 1

    .line 3075
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 3076
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 7

    .line 2488
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    .line 2489
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2490
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2491
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2492
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2493
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2494
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2495
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatSwithcedToForum:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2496
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2497
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2499
    invoke-direct {p0, v3, v3}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    .line 2500
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->preload(I)V

    .line 2502
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2503
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2504
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->startShortPoll(Lorg/telegram/tgnet/TLRPC$Chat;IZ)V

    .line 2507
    :cond_0
    sget-object v0, Lorg/telegram/ui/TopicsFragment;->settingsPreloaded:Ljava/util/HashSet;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2508
    sget-object v0, Lorg/telegram/ui/TopicsFragment;->settingsPreloaded:Ljava/util/HashSet;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2509
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getNotifyExceptions;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getNotifyExceptions;-><init>()V

    .line 2510
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_getNotifyExceptions;->peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;

    .line 2511
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_account_getNotifyExceptions;->flags:I

    or-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_account_getNotifyExceptions;->flags:I

    .line 2512
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v5, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v5, v5

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2513
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    return v4
.end method

.method public onFragmentDestroy()V
    .locals 4

    .line 2525
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/TopicsFragment;->transitionAnimationIndex:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 2526
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/TopicsFragment;->transitionAnimationGlobalIndex:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 2528
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2529
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2530
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2531
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2532
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2533
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2534
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatSwithcedToForum:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2535
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2536
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2538
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2539
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2540
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v3, v2}, Lorg/telegram/messenger/MessagesController;->startShortPoll(Lorg/telegram/tgnet/TLRPC$Chat;IZ)V

    .line 2542
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 2544
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v1, :cond_1

    .line 2545
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchAvatarImageView(Lorg/telegram/ui/Components/BackupImageView;)V

    .line 2546
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchPaddingStart(I)V

    .line 2547
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    iput-boolean v2, v0, Lorg/telegram/ui/RightSlidingDialogContainer;->enabled:Z

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 3694
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 3695
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->onTopicFragmentPause(J)V

    .line 3696
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 3676
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 3677
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->onTopicFragmentResume(J)V

    const/4 v0, 0x0

    .line 3678
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->animatedUpdateEnabled:Z

    .line 3679
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    const/4 v0, 0x1

    .line 3680
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->animatedUpdateEnabled:Z

    .line 3681
    new-instance v0, Lorg/telegram/ui/TopicsFragment$25;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TopicsFragment$25;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    .line 3687
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3688
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void
.end method

.method public onSlideProgress(ZF)V
    .locals 0

    .line 3734
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3737
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->isSlideBackTransition:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->slideBackTransitionAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_1

    .line 3738
    invoke-direct {p0, p2}, Lorg/telegram/ui/TopicsFragment;->setSlideTransitionProgress(F)V

    :cond_1
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1

    .line 3781
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    if-eqz p1, :cond_1

    .line 3782
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 3783
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3784
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3786
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3789
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    iget v0, p0, Lorg/telegram/ui/TopicsFragment;->transitionAnimationIndex:I

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 3790
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    iget v0, p0, Lorg/telegram/ui/TopicsFragment;->transitionAnimationGlobalIndex:I

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    if-nez p1, :cond_2

    .line 3792
    iget-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->opnendForSelect:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->removeFragmentOnTransitionEnd:Z

    if-eqz p1, :cond_2

    .line 3793
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    .line 3794
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz p1, :cond_2

    .line 3795
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :cond_2
    return-void
.end method

.method public onTransitionAnimationProgress(ZF)V
    .locals 1

    .line 3857
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 3859
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 3861
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 3

    .line 3773
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 3775
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/TopicsFragment;->transitionAnimationIndex:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->transitionAnimationIndex:I

    .line 3776
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/TopicsFragment;->transitionAnimationGlobalIndex:I

    new-array v0, v2, [I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->transitionAnimationGlobalIndex:I

    return-void
.end method

.method public synthetic openedWithLivestream()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityInterface$-CC;->$default$openedWithLivestream(Lorg/telegram/ui/Components/ChatActivityInterface;)Z

    move-result v0

    return v0
.end method

.method public prepareFragmentToSlide(ZZ)V
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 3702
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->isSlideBackTransition:Z

    .line 3703
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->setFragmentIsSliding(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3705
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->slideBackTransitionAnimator:Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    .line 3706
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->isSlideBackTransition:Z

    .line 3707
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->setFragmentIsSliding(Z)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3708
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->setSlideTransitionProgress(F)V

    :goto_0
    return-void
.end method

.method public synthetic scrollToMessageId(IIZIZI)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatActivityInterface$-CC;->$default$scrollToMessageId(Lorg/telegram/ui/Components/ChatActivityInterface;IIZIZI)V

    return-void
.end method

.method public sendReorder()V
    .locals 4

    .line 2208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2209
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2210
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v2, v2, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v2, :cond_0

    .line 2211
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-eqz v3, :cond_0

    .line 2212
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2215
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/messenger/TopicsController;->reorderPinnedTopics(JLjava/util/ArrayList;)V

    return-void
.end method

.method public setExcludeTopics(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2690
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->excludeTopics:Ljava/util/HashSet;

    return-void
.end method

.method public setForwardFromDialogFragment(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 2709
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    return-void
.end method

.method public setOnTopicSelectedListener(Lorg/telegram/ui/TopicsFragment$OnTopicSelectedListener;)V
    .locals 0

    .line 3667
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->onTopicSelectedListener:Lorg/telegram/ui/TopicsFragment$OnTopicSelectedListener;

    return-void
.end method

.method public setPreviewOpenedProgress(F)V
    .locals 2

    .line 3900
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v0, :cond_1

    .line 3901
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3902
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3903
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public setPreviewReplaceProgress(F)V
    .locals 2

    .line 3909
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v0, :cond_0

    .line 3910
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3911
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/16 p1, 0x28

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method public setTransitionPadding(I)V
    .locals 0

    int-to-float p1, p1

    .line 1433
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->transitionPadding:F

    .line 1434
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateFloatingButtonOffset()V

    return-void
.end method

.method public synthetic shouldShowImport()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityInterface$-CC;->$default$shouldShowImport(Lorg/telegram/ui/Components/ChatActivityInterface;)Z

    move-result v0

    return v0
.end method

.method public switchToChat(Z)V
    .locals 3

    .line 1381
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->removeFragmentOnTransitionEnd:Z

    .line 1383
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1384
    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    const-string v2, "chat_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1385
    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 1386
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatActivity;->setSwitchFromTopics(Z)V

    .line 1387
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public updateReordering()V
    .locals 3

    .line 2199
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2200
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2201
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/TopicsFragment;->reordering:Z

    if-eq v2, v0, :cond_1

    .line 2202
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->reordering:Z

    .line 2203
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->adapter:Lorg/telegram/ui/TopicsFragment$Adapter;

    invoke-virtual {v0}, Lorg/telegram/ui/TopicsFragment$Adapter;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_1
    return-void
.end method
