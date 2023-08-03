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

.field private final notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

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

    .line 2503
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/ui/TopicsFragment;->settingsPreloaded:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 7

    .line 297
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 158
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    .line 161
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->frozenForumTopicsList:Ljava/util/ArrayList;

    .line 169
    new-instance p1, Lorg/telegram/ui/TopicsFragment$Adapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/TopicsFragment$Adapter;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/ui/TopicsFragment$1;)V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->adapter:Lorg/telegram/ui/TopicsFragment$Adapter;

    const/4 p1, 0x0

    .line 173
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->hiddenCount:I

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->hiddenShown:Z

    .line 184
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->floatingHidden:Z

    .line 185
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 188
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->animatedUpdateEnabled:Z

    .line 224
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->bottomPannelVisible:Z

    const/4 v1, 0x0

    .line 225
    iput v1, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    .line 232
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    .line 255
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->mute:Z

    .line 272
    new-instance v1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    new-array v2, v0, [I

    sget v3, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    aput v3, v2, p1

    invoke-direct {v1, v2}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>([I)V

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 281
    iput v1, p0, Lorg/telegram/ui/TopicsFragment;->slideFragmentProgress:F

    .line 2274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 298
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "chat_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    .line 299
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v4, "for_select"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/telegram/ui/TopicsFragment;->opnendForSelect:Z

    .line 300
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v4, "forward_to"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/telegram/ui/TopicsFragment;->openedForForward:Z

    .line 301
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    .line 302
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

    xor-int/2addr v3, v0

    iput-boolean v3, p0, Lorg/telegram/ui/TopicsFragment;->canShowProgress:Z

    .line 304
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/fork/controller/RecentChatsController;->getDialogTypesSettingsRecentChats()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/iMe/fork/enums/RecentChatsDialogType;->FORUM:Lcom/iMe/fork/enums/RecentChatsDialogType;

    invoke-virtual {v4}, Lcom/iMe/fork/enums/RecentChatsDialogType;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 305
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    neg-long v5, v1

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->isArchivedDialog(J)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/fork/controller/RecentChatsController;->isSaveArchiveRecentChatsEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    .line 306
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getHiddenChatsController()Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v0

    neg-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/iMe/fork/controller/HiddenChatsController;->isChatHidden(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 307
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v0

    neg-long v1, v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/iMe/fork/controller/RecentChatsController;->updateCreationDate(JZ)V

    :cond_2
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->clearSelectedTopics()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 140
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/TopicsFragment;Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->deleteTopics(Ljava/util/HashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 140
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->hiddenCount:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->hiddenShown:Z

    return p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/TopicsFragment;Z)Z
    .locals 0

    .line 140
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->hiddenShown:Z

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 140
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->pullViewState:I

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/TopicsFragment;I)I
    .locals 0

    .line 140
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->pullViewState:I

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/TopicsFragment;)Landroid/view/View;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->generalTopicViewMoving:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 140
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->generalTopicViewMoving:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->searchTabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/TopicsFragment;ZZ)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    return-void
.end method

.method static synthetic access$2202(Lorg/telegram/ui/TopicsFragment;Z)Z
    .locals 0

    .line 140
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->scrollToTop:Z

    return p1
.end method

.method static synthetic access$2302(Lorg/telegram/ui/TopicsFragment;Z)Z
    .locals 0

    .line 140
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->updateAnimated:Z

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/TopicsController;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->mute:Z

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/NotificationsController;
    .locals 0

    .line 140
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/TopicsFragment;Z)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->animateToSearchView(Z)V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/TopicsFragment;Z)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->openProfile(Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/TopicsFragment;)F
    .locals 0

    .line 140
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->checkForLoadMore()V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/TopicsFragment;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/PullForegroundDrawable;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/TopicsFragment;)J
    .locals 2

    .line 140
    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->startArchivePullingTime:J

    return-wide v0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/TopicsFragment;J)J
    .locals 0

    .line 140
    iput-wide p1, p0, Lorg/telegram/ui/TopicsFragment;->startArchivePullingTime:J

    return-wide p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->canShowHiddenArchive:Z

    return p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/TopicsFragment;Z)Z
    .locals 0

    .line 140
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->canShowHiddenArchive:Z

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/TopicsFragment;ZZ)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->hideFloatingButton(ZZ)V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 140
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->bottomButtonType:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->joinToGroup()V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateTopView()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/TopicsFragment;)Landroid/view/View;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/TopicsFragment;)Landroid/view/View;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 140
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->dialogRemoveFinished:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 140
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->dialogInsertFinished:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 140
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->dialogChangeFinished:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 140
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->lastItemsCount:I

    return p0
.end method

.method static synthetic access$4502(Lorg/telegram/ui/TopicsFragment;I)I
    .locals 0

    .line 140
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->lastItemsCount:I

    return p1
.end method

.method static synthetic access$4600(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->forumTopicsListFrozen:Z

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/TopicsFragment;)Landroidx/recyclerview/widget/DefaultItemAnimator;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->onDialogAnimationFinished()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/TopicsFragment;Z)Z
    .locals 0

    .line 140
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->disableActionBarScrolling:Z

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/TopicsFragment;)Landroid/view/View;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->emptyView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5102(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 140
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->emptyView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->waitingForScrollFinished:Z

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->itemTouchHelperCallback:Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;

    return-object p0
.end method

.method static synthetic access$5702(Lorg/telegram/ui/TopicsFragment;Z)Z
    .locals 0

    .line 140
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->allowSwipeDuringCurrentTouch:Z

    return p1
.end method

.method static synthetic access$5800(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 140
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/TopicsFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->topView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/NotificationsController;
    .locals 0

    .line 140
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/NotificationsController;
    .locals 0

    .line 140
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/NotificationsController;
    .locals 0

    .line 140
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/TopicsFragment;F)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->updateSearchProgress(F)V

    return-void
.end method

.method static synthetic access$6400(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 140
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/TopicsFragment;Z)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->updateCreateTopicButton(Z)V

    return-void
.end method

.method static synthetic access$6700(Lorg/telegram/ui/TopicsFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/TopicsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->frozenForumTopicsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 140
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 140
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->reordering:Z

    return p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->openedForForward:Z

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 140
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->showChatPreview(Lorg/telegram/ui/Cells/DialogCell;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 140
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 140
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 140
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    return p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 140
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method private animateToSearchView(Z)V
    .locals 5

    .line 1963
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->searching:Z

    .line 1964
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1965
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1966
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1968
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchTabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1969
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->createTabsView(ZI)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchTabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    .line 1970
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_1

    .line 1971
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1973
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

    .line 1975
    iget v2, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    aput v2, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    aput v3, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    .line 1976
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-static {v0, v1, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1977
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v0, :cond_4

    xor-int/lit8 v3, p1, 0x1

    .line 1978
    iput-boolean v3, v0, Lorg/telegram/ui/RightSlidingDialogContainer;->enabled:Z

    :cond_4
    if-nez p1, :cond_5

    .line 1980
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    move v0, v4

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->animateSearchWithScale:Z

    .line 1981
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1982
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_6

    .line 1984
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 1986
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 1987
    invoke-direct {p0, v1}, Lorg/telegram/ui/TopicsFragment;->updateCreateTopicButton(Z)V

    .line 1989
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/TopicsFragment$23;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/TopicsFragment$23;-><init>(Lorg/telegram/ui/TopicsFragment;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2004
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2005
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2006
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 2008
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

    .line 2697
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->endIsReached(J)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2700
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 2701
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->adapter:Lorg/telegram/ui/TopicsFragment$Adapter;

    invoke-virtual {v1}, Lorg/telegram/ui/TopicsFragment$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    if-lt v0, v1, :cond_2

    .line 2702
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->loadTopics(J)V

    .line 2704
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->checkLoading()V

    :cond_3
    :goto_0
    return-void
.end method

.method private checkLoading()V
    .locals 4

    .line 1947
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->isLoading(J)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->loadingTopics:Z

    .line 1948
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

    .line 1949
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-boolean v2, p0, Lorg/telegram/ui/TopicsFragment;->loadingTopics:Z

    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 1951
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    if-eqz v0, :cond_2

    .line 1952
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty()V

    .line 1954
    :cond_2
    invoke-direct {p0, v1}, Lorg/telegram/ui/TopicsFragment;->updateCreateTopicButton(Z)V

    return-void
.end method

.method private chekActionMode()V
    .locals 10

    .line 2239
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeIsExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2242
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode(ZLjava/lang/String;)Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 2244
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v1, :cond_1

    .line 2245
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2246
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->drawBlur:Z

    .line 2248
    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v3, 0x12

    .line 2249
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 2250
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2251
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 2252
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

    .line 2253
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget-object v3, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda11;->INSTANCE:Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda11;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x4

    .line 2255
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_pin:I

    const/16 v4, 0x36

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v1, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->pinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x5

    .line 2256
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_unpin:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v1, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->unpinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x6

    .line 2257
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_mute:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v1, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->muteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x7

    .line 2258
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

    .line 2259
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

    .line 2260
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 v1, 0xd

    .line 2261
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

    .line 2262
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2264
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

    .line 2265
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_markread:I

    sget v2, Lorg/telegram/messenger/R$string;->MarkAsRead:I

    const-string v4, "MarkAsRead"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->readItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 2266
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

    .line 2267
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

    .line 2092
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2093
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 2094
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 2095
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

    .line 1757
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1758
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v1

    const-string v2, "DeleteTopics"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1759
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1760
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1761
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

    .line 1762
    sget v4, Lorg/telegram/messenger/R$string;->DeleteSelectedTopic:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    aput-object v2, v3, v6

    const-string v2, "DeleteSelectedTopic"

    invoke-static {v2, v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1764
    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->DeleteSelectedTopics:I

    const-string v3, "DeleteSelectedTopics"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1766
    :goto_0
    sget v2, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v3, "Delete"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/TopicsFragment$20;

    invoke-direct {v3, p0, p1, v1, p2}, Lorg/telegram/ui/TopicsFragment$20;-><init>(Lorg/telegram/ui/TopicsFragment;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1783
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p2, "Cancel"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/TopicsFragment$21;

    invoke-direct {p2, p0}, Lorg/telegram/ui/TopicsFragment$21;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1789
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1790
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 p2, -0x1

    .line 1791
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 1793
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private hideFloatingButton(ZZ)V
    .locals 6

    .line 3062
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->floatingHidden:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 3065
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->floatingHidden:Z

    .line 3066
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_3

    .line 3068
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 3069
    iget v5, p0, Lorg/telegram/ui/TopicsFragment;->floatingButtonHideProgress:F

    aput v5, v4, v1

    iget-boolean v5, p0, Lorg/telegram/ui/TopicsFragment;->floatingHidden:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    aput v0, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3070
    new-instance v3, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v2, [Landroid/animation/Animator;

    aput-object v0, v3, v1

    .line 3074
    invoke-virtual {p2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x12c

    .line 3075
    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3076
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3077
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v3

    .line 3079
    :goto_2
    iput v0, p0, Lorg/telegram/ui/TopicsFragment;->floatingButtonHideProgress:F

    .line 3081
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateFloatingButtonOffset()V

    .line 3083
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    xor-int/2addr p1, v2

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method private joinToGroup()V
    .locals 10

    .line 2074
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

    .line 2087
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeSearchByActiveAction:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2088
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    return-void
.end method

.method private synthetic lambda$animateToSearchView$13(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1981
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

    .line 672
    iget-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->searching:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 673
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->openProfile(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 0

    .line 681
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->openParentSearch()V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;I)V
    .locals 7

    .line 847
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

    .line 851
    instance-of v0, p1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    if-eqz v0, :cond_1

    .line 852
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    iget-object p2, p2, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 857
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->opnendForSelect:Z

    if-eqz v0, :cond_5

    .line 858
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->onTopicSelectedListener:Lorg/telegram/ui/TopicsFragment$OnTopicSelectedListener;

    if-eqz p1, :cond_3

    .line 859
    invoke-interface {p1, p2}, Lorg/telegram/ui/TopicsFragment$OnTopicSelectedListener;->onTopicSelected(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    .line 861
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_4

    .line 862
    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v1, v1

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/DialogsActivity;->didSelectResult(JIZZLorg/telegram/ui/TopicsFragment;)V

    :cond_4
    return-void

    .line 866
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 867
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->toggleSelection(Landroid/view/View;)V

    return-void

    .line 870
    :cond_6
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 871
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

    .line 872
    instance-of v2, v1, Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_7

    check-cast v1, Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 873
    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getOpenedDialogId()Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object v1

    .line 874
    iget-wide v2, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    iget-wide v4, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    iget v1, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:I

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v1, v2, :cond_7

    return-void

    .line 879
    :cond_8
    iget p1, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:I

    .line 880
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    .line 882
    :cond_9
    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {p0, v1, v2, p2, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->openTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V

    :cond_a
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;IFF)Z
    .locals 9

    .line 885
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

    .line 888
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

    .line 889
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    .line 890
    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/Cells/DialogCell;->isPointInsideAvatar(FF)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 891
    invoke-direct {p0, p2}, Lorg/telegram/ui/TopicsFragment;->showChatPreview(Lorg/telegram/ui/Cells/DialogCell;)Z

    .line 892
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 893
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

    .line 897
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->toggleSelection(Landroid/view/View;)V

    .line 898
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 2

    .line 1125
    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/TopicCreateFragment;->create(JI)Lorg/telegram/ui/TopicCreateFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 4

    .line 1237
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/telegram/messenger/MessagesController;->hidePeerSettingsBar(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 1238
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 0

    .line 1322
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$20()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_7

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3938
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    goto :goto_1

    .line 3939
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    if-eqz v3, :cond_1

    .line 3940
    iget-object v2, v3, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    goto :goto_4

    .line 3945
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_6

    .line 3947
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3948
    instance-of v6, v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v6, :cond_3

    .line 3949
    check-cast v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    goto :goto_3

    .line 3950
    :cond_3
    instance-of v6, v5, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v6, :cond_4

    .line 3951
    check-cast v5, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(I)Z

    goto :goto_3

    .line 3952
    :cond_4
    instance-of v6, v5, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v6, :cond_5

    .line 3953
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

    .line 3957
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v1, :cond_8

    .line 3958
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupBackgroundColor(IZ)V

    .line 3959
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsColor(IZZ)V

    .line 3960
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsColor(IZZ)V

    .line 3961
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsSelectorColor(IZ)V

    .line 3963
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 3964
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_9

    .line 3965
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 3968
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateColors()V

    return-void
.end method

.method private synthetic lambda$hideFloatingButton$19(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3071
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->floatingButtonHideProgress:F

    .line 3072
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateFloatingButtonOffset()V

    return-void
.end method

.method private synthetic lambda$joinToGroup$14()V
    .locals 1

    const/4 v0, 0x1

    .line 2076
    invoke-direct {p0, v0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo(Z)V

    return-void
.end method

.method private synthetic lambda$joinToGroup$15(Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2078
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "INVITE_REQUEST_SENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2079
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 2080
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

    .line 2081
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    invoke-static {p1, p0, v1}, Lorg/telegram/ui/Components/JoinGroupAlert;->showBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 2082
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

    .line 2533
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz v0, :cond_0

    .line 2534
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    .line 2535
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onFragmentCreate$18(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2532
    new-instance p2, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showChatPreview$10(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V
    .locals 4

    const/4 p2, 0x1

    .line 1914
    iput-boolean p2, p0, Lorg/telegram/ui/TopicsFragment;->updateAnimated:Z

    .line 1915
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    xor-int/2addr p1, p2

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/telegram/messenger/TopicsController;->toggleCloseTopic(JIZ)V

    .line 1916
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$showChatPreview$11()V
    .locals 0

    .line 1931
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$showChatPreview$12(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V
    .locals 0

    .line 1928
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 1929
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1930
    new-instance p1, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/TopicsFragment;->deleteTopics(Ljava/util/HashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showChatPreview$8(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V
    .locals 6

    const/4 p2, 0x1

    .line 1876
    iput-boolean p2, p0, Lorg/telegram/ui/TopicsFragment;->scrollToTop:Z

    .line 1877
    iput-boolean p2, p0, Lorg/telegram/ui/TopicsFragment;->updateAnimated:Z

    .line 1878
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    xor-int/lit8 v4, p1, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/TopicsController;->pinTopic(JIZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1879
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$showChatPreview$9(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;[Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILandroid/view/View;)V
    .locals 3

    .line 1893
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v0, v0

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-virtual {p4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 1894
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p2

    iget-wide p3, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long p3, p3

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-virtual {p2, p3, p4, p1, v0}, Lorg/telegram/messenger/NotificationsController;->muteDialog(JIZ)V

    .line 1895
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    .line 1896
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 1897
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 1900
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

    .line 1747
    iput v0, p0, Lorg/telegram/ui/TopicsFragment;->dialogRemoveFinished:I

    .line 1748
    iput v0, p0, Lorg/telegram/ui/TopicsFragment;->dialogInsertFinished:I

    .line 1749
    iput v0, p0, Lorg/telegram/ui/TopicsFragment;->dialogChangeFinished:I

    .line 1750
    sget-object v0, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda15;->INSTANCE:Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda15;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private openParentSearch()V
    .locals 3

    .line 1413
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1414
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-nez v0, :cond_0

    .line 1415
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 1416
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 1417
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1418
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 1419
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->parentAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 1421
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchPaddingStart(I)V

    .line 1422
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchAvatarImageView(Lorg/telegram/ui/Components/BackupImageView;)V

    .line 1423
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    .line 1424
    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSearch(Z)Z

    move-result v1

    .line 1423
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V

    :cond_1
    return-void
.end method

.method private openProfile(Z)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1386
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1387
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatPhotoEmpty;

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 1391
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1392
    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    const-string v3, "chat_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1393
    new-instance v1, Lorg/telegram/ui/ProfileActivity;

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSharedMediaPreloader()Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    .line 1394
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ProfileActivity;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1395
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

    .line 1396
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private prepareBlurBitmap()V
    .locals 5

    .line 3840
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3843
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getPinnedPlayerView()Lcom/iMe/fork/ui/view/PinnedPlayerView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getPinnedPlayerView()Lcom/iMe/fork/ui/view/PinnedPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->getPlayerHeight()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3844
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 3845
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 3846
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3847
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v4, 0x3e2aaaab

    .line 3848
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3849
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    const/4 v3, 0x7

    .line 3850
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit16 v0, v0, 0xb4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 3851
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3852
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3853
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3854
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3856
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getOverlayContainerView()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    const/4 v2, -0x1

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static prepareToSwitchAnimation(Lorg/telegram/ui/ChatActivity;)V
    .locals 7

    .line 313
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 317
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    :cond_1
    :goto_0
    move v0, v2

    goto :goto_1

    .line 320
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 321
    instance-of v3, v1, Lorg/telegram/ui/TopicsFragment;

    if-eqz v3, :cond_1

    .line 322
    check-cast v1, Lorg/telegram/ui/TopicsFragment;

    .line 323
    iget-wide v3, v1, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v5

    neg-long v5, v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 331
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 332
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    neg-long v3, v3

    const-string v1, "chat_id"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 333
    new-instance v1, Lorg/telegram/ui/TopicsFragment;

    invoke-direct {v1, v0}, Lorg/telegram/ui/TopicsFragment;-><init>(Landroid/os/Bundle;)V

    .line 334
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v1, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;I)Z

    .line 336
    :cond_4
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ChatActivity;->setSwitchFromTopics(Z)V

    .line 337
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity;->finishFragment()V

    return-void
.end method

.method private setButtonType(I)V
    .locals 2

    .line 2479
    iget v0, p0, Lorg/telegram/ui/TopicsFragment;->bottomButtonType:I

    if-eq v0, p1, :cond_2

    .line 2480
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->bottomButtonType:I

    .line 2481
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    if-nez p1, :cond_0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_fieldOverlayText:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UnreadCounterTextView;->setTextColorKey(I)V

    .line 2482
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2483
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    :cond_2
    return-void
.end method

.method private setFragmentIsSliding(Z)V
    .locals 3

    .line 3731
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3734
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 3737
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3738
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3739
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_0

    .line 3741
    :cond_1
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p1, 0x1

    .line 3742
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3743
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 3746
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 3747
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    return-void
.end method

.method private setSlideTransitionProgress(F)V
    .locals 3

    .line 3761
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3764
    :cond_0
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->slideFragmentProgress:F

    .line 3765
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 3766
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 3769
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    if-eqz p1, :cond_2

    const v0, 0x3d4ccccd    # 0.05f

    .line 3771
    iget v1, p0, Lorg/telegram/ui/TopicsFragment;->slideFragmentProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v1, v0

    sub-float/2addr v2, v1

    const/4 v0, 0x0

    .line 3772
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 3773
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 3774
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 3775
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 3777
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->topView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 3778
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->topView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 3779
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->topView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 3780
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->topView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 3782
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 3783
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 3784
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 3785
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_2
    return-void
.end method

.method private showChatPreview(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 13

    const/4 v0, 0x0

    .line 1798
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 1801
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    aput-object v3, v2, v0

    .line 1803
    iget-object v3, p1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 1804
    new-instance v12, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v7

    new-instance v10, Lorg/telegram/ui/TopicsFragment$22;

    invoke-direct {v10, p0, v3}, Lorg/telegram/ui/TopicsFragment$22;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    .line 1861
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;-><init>(Landroid/content/Context;ILorg/telegram/ui/Components/PopupSwipeBackLayout;ZZLorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1863
    aget-object v4, v2, v0

    iget-object v5, v12, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    move-result v4

    .line 1864
    iput v1, v12, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;->type:I

    .line 1865
    iget-wide v5, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v5, v5

    iget v7, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    const/4 v8, 0x0

    invoke-virtual {v12, v5, v6, v7, v8}, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;->update(JILjava/util/HashSet;)V

    .line 1867
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    const/16 v6, 0xa0

    if-eqz v5, :cond_1

    .line 1868
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7, v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 1869
    iget-boolean v7, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-eqz v7, :cond_0

    .line 1870
    sget v7, Lorg/telegram/messenger/R$string;->DialogUnpin:I

    const-string v8, "DialogUnpin"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_unpin:I

    invoke-virtual {v5, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 1872
    :cond_0
    sget v7, Lorg/telegram/messenger/R$string;->DialogPin:I

    const-string v8, "DialogPin"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_pin:I

    invoke-virtual {v5, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1874
    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 1875
    new-instance v7, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v7, p0, v3}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1882
    aget-object v7, v2, v0

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1885
    :cond_1
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7, v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 1886
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v8, v8

    iget v10, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-virtual {v7, v8, v9, v10}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1887
    sget v7, Lorg/telegram/messenger/R$string;->Unmute:I

    const-string v8, "Unmute"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_mute:I

    invoke-virtual {v5, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 1889
    :cond_2
    sget v7, Lorg/telegram/messenger/R$string;->Mute:I

    const-string v8, "Mute"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_unmute:I

    invoke-virtual {v5, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1891
    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 1892
    new-instance v7, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v7, p0, v3, v2, v4}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;[Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1903
    aget-object v4, v2, v0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1905
    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lorg/telegram/messenger/ChatObject;->canManageTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1906
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 1907
    iget-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    if-eqz v5, :cond_3

    .line 1908
    sget v5, Lorg/telegram/messenger/R$string;->RestartTopic:I

    const-string v7, "RestartTopic"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_topic_restart:I

    invoke-virtual {v4, v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_2

    .line 1910
    :cond_3
    sget v5, Lorg/telegram/messenger/R$string;->CloseTopic:I

    const-string v7, "CloseTopic"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_topic_close:I

    invoke-virtual {v4, v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1912
    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 1913
    new-instance v5, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0, v3}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1918
    aget-object v5, v2, v0

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1921
    :cond_4
    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lorg/telegram/messenger/ChatObject;->canDeleteTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1922
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    const-string v5, "DeleteTopics"

    .line 1923
    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v4, v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1924
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    .line 1925
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 1926
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 1927
    new-instance v1, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1934
    aget-object v1, v2, v0

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1937
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->prepareBlurBitmap()V

    .line 1938
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1939
    iget-wide v3, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    const-string v5, "chat_id"

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1940
    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1941
    iget-wide v4, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v4, v4

    iget-object p1, p1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {v4, v5, p1}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JI)Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object p1

    invoke-static {v3, p1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->applyTopic(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagesStorage$TopicKey;)V

    .line 1942
    aget-object p1, v2, v0

    invoke-virtual {p0, v3, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z

    return v0
.end method

.method private toggleSelection(Landroid/view/View;)V
    .locals 13

    .line 2099
    instance-of v0, p1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    if-eqz v0, :cond_1a

    .line 2100
    check-cast p1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    .line 2101
    iget-object v0, p1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v0, :cond_0

    return-void

    .line 2104
    :cond_0
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    .line 2105
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2106
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2108
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    .line 2110
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v2, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 2112
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 2113
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->chekActionMode()V

    .line 2114
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v0, :cond_2

    .line 2115
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2117
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode(Z)V

    .line 2118
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2119
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v3

    move v4, v2

    move v5, v4

    move v6, v5

    .line 2123
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2125
    iget-object v8, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v9, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v8, v9, v10, v7}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 2127
    iget v9, v8, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    if-eqz v9, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 2132
    :cond_4
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-nez v9, :cond_6

    .line 2133
    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-eqz v8, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 2140
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

    .line 2148
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->readItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2149
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->readItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v7, Lorg/telegram/messenger/R$string;->MarkAsRead:I

    const-string v8, "MarkAsRead"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_markread:I

    invoke-virtual {v2, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_2

    .line 2151
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->readItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_2
    if-eqz v4, :cond_9

    .line 2154
    iput-boolean v3, p0, Lorg/telegram/ui/TopicsFragment;->mute:Z

    .line 2155
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->muteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_unmute:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2156
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->muteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$string;->ChatsUnmute:I

    const-string v7, "ChatsUnmute"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2158
    :cond_9
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->mute:Z

    .line 2159
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->muteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_mute:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2160
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->muteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$string;->ChatsMute:I

    const-string v7, "ChatsMute"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2163
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->pinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-ne v5, v1, :cond_a

    if-nez v6, :cond_a

    move v4, v3

    goto :goto_4

    :cond_a
    move v4, v0

    :goto_4
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2164
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->unpinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-ne v6, v1, :cond_b

    if-nez v5, :cond_b

    move v4, v3

    goto :goto_5

    :cond_b
    move v4, v0

    :goto_5
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2169
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v2, v4, v1}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 2177
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    .line 2178
    :cond_c
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 2179
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2180
    iget-object v10, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v11, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v10, v11, v12, v9}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 2182
    iget v10, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v10, p1, v9}, Lorg/telegram/messenger/ChatObject;->canDeleteTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result v10

    if-eqz v10, :cond_d

    add-int/lit8 v6, v6, 0x1

    .line 2185
    :cond_d
    iget v10, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v10, p1, v9}, Lorg/telegram/messenger/ChatObject;->canManageTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2186
    iget v10, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v10, v1, :cond_f

    .line 2187
    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-eqz v10, :cond_e

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_e
    add-int/lit8 v7, v7, 0x1

    .line 2193
    :cond_f
    :goto_7
    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-nez v10, :cond_c

    .line 2194
    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    if-eqz v9, :cond_10

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 2203
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->closeTopic:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v4, :cond_12

    if-lez v5, :cond_12

    move v2, v3

    goto :goto_8

    :cond_12
    move v2, v0

    :goto_8
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2204
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

    .line 2205
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->restartTopic:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v5, :cond_14

    if-lez v4, :cond_14

    move v2, v3

    goto :goto_a

    :cond_14
    move v2, v0

    :goto_a
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2206
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

    .line 2207
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-ne v6, v2, :cond_16

    move v2, v3

    goto :goto_c

    :cond_16
    move v2, v0

    :goto_c
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2208
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->hideItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-ne v7, v1, :cond_17

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-ne v2, v1, :cond_17

    move v2, v3

    goto :goto_d

    :cond_17
    move v2, v0

    :goto_d
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2209
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->showItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-ne v8, v1, :cond_18

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-ne v2, v1, :cond_18

    goto :goto_e

    :cond_18
    move v3, v0

    :goto_e
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2211
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->checkHideMenuItem()V

    .line 2213
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->updateReordering()V

    goto :goto_f

    .line 2166
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

    .line 2367
    invoke-direct {p0, v0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo(Z)V

    return-void
.end method

.method private updateChatInfo(Z)V
    .locals 13

    .line 2371
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-nez v0, :cond_0

    goto/16 :goto_12

    .line 2374
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2376
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setChatAvatar(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 2378
    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v1, v1

    .line 2379
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2380
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

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2381
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

    .line 2382
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

    .line 2384
    iget-boolean v6, p0, Lorg/telegram/ui/TopicsFragment;->opnendForSelect:Z

    const/4 v7, 0x0

    const/16 v8, 0x8

    if-nez v6, :cond_4

    if-eqz v0, :cond_3

    .line 2386
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 2388
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v9, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v9, v9

    invoke-virtual {v6, v9, v10, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "drawableMuteIcon"

    .line 2389
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v7

    .line 2391
    :goto_1
    iget-object v9, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v9, v7, v6}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitleIcons(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2393
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateSubtitle()V

    goto :goto_4

    .line 2395
    :cond_4
    iget-boolean v6, p0, Lorg/telegram/ui/TopicsFragment;->openedForForward:Z

    if-eqz v6, :cond_5

    .line 2396
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    sget v9, Lorg/telegram/messenger/R$string;->ForwardTo:I

    const-string v10, "ForwardTo"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2398
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    sget v9, Lorg/telegram/messenger/R$string;->SelectTopic:I

    const-string v10, "SelectTopic"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 2400
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2401
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 2402
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

    .line 2404
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAvatarContainer;->updateSubtitle()V

    .line 2405
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2407
    :goto_4
    iget-boolean v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    if-nez v6, :cond_9

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move p1, v2

    goto :goto_6

    :cond_9
    :goto_5
    move p1, v5

    .line 2409
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

    .line 2410
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-lez v11, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    const-wide/32 v9, 0x1d4c0

    cmp-long v9, v11, v9

    if-gez v9, :cond_a

    .line 2413
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelJoinRequestSent:I

    const-string v4, "ChannelJoinRequestSent"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lorg/telegram/ui/Components/UnreadCounterTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 2414
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2415
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v1, v2, v6, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2416
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-static {v1, v5, v6, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2417
    invoke-direct {p0, v2}, Lorg/telegram/ui/TopicsFragment;->setButtonType(I)V

    goto/16 :goto_9

    :cond_a
    if-eqz v0, :cond_e

    .line 2418
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

    .line 2422
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->isJoiningChannel(J)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v5

    goto :goto_8

    .line 2425
    :cond_c
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->join_request:Z

    if-eqz v1, :cond_d

    .line 2426
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelJoinRequest:I

    const-string v4, "ChannelJoinRequest"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/UnreadCounterTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 2428
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelJoin:I

    const-string v4, "ChannelJoin"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/UnreadCounterTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2430
    :goto_7
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 2431
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    move v1, v2

    .line 2434
    :goto_8
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v3, v1, v6, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2435
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    xor-int/2addr v1, v5

    invoke-static {v3, v1, v6, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2436
    invoke-direct {p0, v2}, Lorg/telegram/ui/TopicsFragment;->setButtonType(I)V

    goto :goto_9

    :cond_e
    if-eqz v1, :cond_10

    if-nez v3, :cond_f

    if-eqz v4, :cond_10

    .line 2438
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ReportSpamAndLeave:I

    const-string v4, "ReportSpamAndLeave"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/UnreadCounterTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2439
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 2440
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 2442
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v1, v2, v6, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2443
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-static {v1, v5, v6, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2445
    invoke-direct {p0, v5}, Lorg/telegram/ui/TopicsFragment;->setButtonType(I)V

    :goto_9
    move v1, v5

    goto :goto_a

    :cond_10
    move v1, v2

    .line 2451
    :goto_a
    iget-boolean v3, p0, Lorg/telegram/ui/TopicsFragment;->bottomPannelVisible:Z

    if-eq v3, v1, :cond_15

    .line 2452
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomPannelVisible:Z

    .line 2453
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v3, 0x0

    const/16 v4, 0x35

    if-nez p1, :cond_13

    .line 2455
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_11

    move v6, v2

    goto :goto_b

    :cond_11
    move v6, v8

    :goto_b
    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2456
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

    .line 2458
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

    .line 2468
    :cond_15
    :goto_e
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateTopView()V

    .line 2470
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->opnendForSelect:Z

    if-eqz v1, :cond_16

    move v1, v8

    goto :goto_f

    :cond_16
    move v1, v2

    :goto_f
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2471
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->addMemberSubMenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canAddUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_10

    :cond_17
    move v1, v8

    :goto_10
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2473
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->deleteChatSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_18

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v1, :cond_18

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_11

    :cond_18
    move v2, v8

    :goto_11
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2474
    invoke-direct {p0, v5}, Lorg/telegram/ui/TopicsFragment;->updateCreateTopicButton(Z)V

    .line 2475
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

    .line 1371
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez v0, :cond_0

    return-void

    .line 1374
    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_fieldOverlayText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 1375
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1376
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1377
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionModeColor(I)V

    .line 1378
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v0, :cond_1

    .line 1379
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1381
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private updateCreateTopicButton(Z)V
    .locals 4

    .line 2012
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->createTopicSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v0, :cond_0

    return-void

    .line 2015
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2016
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

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->canShowCreateTopic:Z

    .line 2017
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->createTopicSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2018
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->canShowCreateTopic:Z

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/TopicsFragment;->hideFloatingButton(ZZ)V

    return-void
.end method

.method private updateFloatingButtonOffset()V
    .locals 2

    const/16 v0, 0x64

    .line 3087
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/TopicsFragment;->floatingButtonHideProgress:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/TopicsFragment;->transitionPadding:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/TopicsFragment;->floatingButtonTranslation:F

    .line 3088
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private updateSearchProgress(F)V
    .locals 5

    .line 2022
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    .line 2023
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 2024
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    invoke-static {v0, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 2025
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    iget v4, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    invoke-static {v1, v2, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 2027
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 2028
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 2029
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v4, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    invoke-static {v0, v1, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 2031
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v0, :cond_0

    .line 2032
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 2034
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2035
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2036
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchTabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/16 v3, 0x10

    if-eqz v0, :cond_1

    .line 2037
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2038
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchTabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2040
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2041
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2043
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2044
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->fullscreenView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2050
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2052
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2053
    iget-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->animateSearchWithScale:Z

    if-eqz p1, :cond_3

    const p1, 0x3f7ae148    # 0.98f

    const v0, 0x3ca3d70a    # 0.02f

    .line 2054
    iget v2, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    add-float/2addr v1, p1

    .line 2055
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 2056
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_3
    return-void
.end method

.method private updateSubtitle()V
    .locals 3

    .line 2488
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    .line 2489
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v1, :cond_0

    .line 2490
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 2492
    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_1

    .line 2495
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Members"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2497
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->Loading:I

    const-string v1, "Loading"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2500
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTopView()V
    .locals 4

    .line 1436
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1437
    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextView;->getTopPadding()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v0, v1

    .line 1438
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1440
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

    .line 1442
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    invoke-virtual {v3}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->getViewEnterOffset()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1443
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    invoke-virtual {v2}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->getViewEnterOffset()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    invoke-virtual {v3}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->getViewHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 1445
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 1446
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    iget-boolean v2, p0, Lorg/telegram/ui/TopicsFragment;->bottomPannelVisible:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/16 v2, 0x33

    goto :goto_2

    :cond_3
    move v2, v3

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

    .line 1347
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1350
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "d"

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1351
    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/16 v2, 0x10

    .line 1352
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setSize(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1353
    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1354
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    const/16 v4, 0xf

    invoke-static {v1, v4}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1355
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->NoTopicsDescription:I

    const-string v3, "NoTopicsDescription"

    .line 1356
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v3, "%s"

    invoke-static {v3, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1355
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1359
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->General:I

    const-string v1, "General"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1360
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1362
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    .line 1364
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->NoTopicsDescriptionUser:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "NoTopicsDescriptionUser"

    .line 1365
    invoke-static {v0, v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 1364
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateTopicsList(ZZ)V
    .locals 9

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2570
    iget-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->updateAnimated:Z

    if-eqz v1, :cond_0

    move p1, v0

    :cond_0
    const/4 v1, 0x0

    .line 2573
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->updateAnimated:Z

    .line 2574
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v3, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 2577
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2578
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2579
    iget-object v5, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v5, v1

    .line 2580
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 2581
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

    .line 2584
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

    .line 2586
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

    .line 2587
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/TopicsFragment$Item;

    invoke-direct {v6, p0, v0, v5}, Lorg/telegram/ui/TopicsFragment$Item;-><init>(Lorg/telegram/ui/TopicsFragment;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2590
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2591
    iget-boolean v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    if-eqz v6, :cond_4

    if-eqz p2, :cond_4

    if-le v2, v3, :cond_4

    .line 2592
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    add-int/lit8 p2, v3, 0x4

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    move p1, v1

    .line 2596
    :cond_4
    iput v1, p0, Lorg/telegram/ui/TopicsFragment;->hiddenCount:I

    move p2, v1

    .line 2597
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_6

    .line 2598
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/TopicsFragment$Item;

    if-eqz v2, :cond_5

    .line 2599
    iget-object v2, v2, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v2, :cond_5

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-eqz v2, :cond_5

    .line 2600
    iget v2, p0, Lorg/telegram/ui/TopicsFragment;->hiddenCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/TopicsFragment;->hiddenCount:I

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 2604
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

    .line 2605
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    if-eqz p1, :cond_8

    iget-object v5, p0, Lorg/telegram/ui/TopicsFragment;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    :cond_8
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 2608
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->adapter:Lorg/telegram/ui/TopicsFragment$Adapter;

    if-eqz p1, :cond_a

    .line 2609
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {p1, v4, p2}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2612
    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->scrollToTop:Z

    if-nez p1, :cond_b

    if-nez v3, :cond_c

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_c

    .line 2613
    invoke-virtual {p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2614
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->scrollToTop:Z

    .line 2618
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->checkLoading()V

    .line 2619
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

    .line 342
    new-instance v0, Lorg/telegram/ui/TopicsFragment$1;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/TopicsFragment$1;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 504
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 505
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-boolean v1, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    const/4 v8, 0x1

    xor-int/2addr v1, v8

    iput-boolean v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->needBlur:Z

    .line 507
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 508
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 509
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setClipContent(Z)V

    .line 510
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v1, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    move v1, v9

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 511
    iget-boolean v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 513
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setInterceptTouches(Z)V

    .line 516
    :cond_1
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v1, v9}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$2;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/TopicsFragment$2;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 671
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 678
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    const/16 v2, 0x38

    if-eqz v1, :cond_2

    .line 679
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v0, v9, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v6, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 680
    new-instance v3, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v3, v6}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 684
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

    .line 709
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchPaddingStart(I)V

    .line 710
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$string;->Search:I

    const-string v4, "Search"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    .line 712
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 713
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_player_time:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 714
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelCursor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 716
    :goto_1
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    iget-object v3, v6, Lorg/telegram/ui/TopicsFragment;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v0, v9, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 717
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_discussion:I

    sget v3, Lorg/telegram/messenger/R$string;->TopicViewAsMessages:I

    const-string v4, "TopicViewAsMessages"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 718
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

    .line 719
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

    .line 720
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

    .line 722
    new-instance v0, Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-direct {v0, v7, v6, v9}, Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    .line 723
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 724
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v5, :cond_3

    move v5, v8

    goto :goto_2

    :cond_3
    move v5, v9

    :goto_2
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setOccupyStatusBar(Z)V

    .line 725
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

    .line 727
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    new-instance v5, Lorg/telegram/ui/TopicsFragment$4;

    invoke-direct {v5, v6}, Lorg/telegram/ui/TopicsFragment$4;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    new-instance v0, Lorg/telegram/ui/TopicsFragment$5;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/TopicsFragment$5;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    .line 751
    new-instance v0, Landroid/text/SpannableString;

    const-string v5, "#"

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 752
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x3f59999a    # 0.85f

    const/4 v14, -0x1

    invoke-static {v12, v13, v14}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createGeneralTopicDrawable(Landroid/content/Context;FI)Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;

    move-result-object v12

    .line 753
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v15, 0x12

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v12, v9, v13, v1, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 754
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v12, v10}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 v12, 0x21

    invoke-virtual {v0, v1, v9, v8, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 755
    new-instance v1, Lorg/telegram/ui/TopicsFragment$6;

    sget v12, Lorg/telegram/messenger/R$string;->AccSwipeForGeneral:I

    const-string v13, "AccSwipeForGeneral"

    .line 756
    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    sget v13, Lorg/telegram/messenger/R$string;->AccReleaseForGeneral:I

    const-string v15, "AccReleaseForGeneral"

    .line 757
    invoke-static {v15, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v1, v6, v12, v0}, Lorg/telegram/ui/TopicsFragment$6;-><init>(Lorg/telegram/ui/TopicsFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iput-object v1, v6, Lorg/telegram/ui/TopicsFragment;->pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    .line 767
    invoke-virtual {v1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->doNotShow()V

    .line 769
    iget-boolean v0, v6, Lorg/telegram/ui/TopicsFragment;->hiddenShown:Z

    if-eqz v0, :cond_4

    move v0, v10

    goto :goto_3

    :cond_4
    move v0, v9

    :goto_3
    iput v0, v6, Lorg/telegram/ui/TopicsFragment;->pullViewState:I

    .line 770
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_5

    move v0, v8

    goto :goto_4

    :cond_5
    move v0, v9

    :goto_4
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setWillDraw(Z)V

    .line 771
    new-instance v0, Lorg/telegram/ui/TopicsFragment$7;

    invoke-direct {v0, v6}, Lorg/telegram/ui/TopicsFragment$7;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    .line 832
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setHideIfEmpty(Z)V

    .line 833
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 834
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 835
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 836
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$8;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$8;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 843
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 844
    new-instance v0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-direct {v0, v1, v8}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    .line 845
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemsEnterAnimator(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)V

    .line 846
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda19;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 884
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda20;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;)V

    .line 901
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$9;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$9;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 908
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$10;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/TopicsFragment$10;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1079
    new-instance v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    iget-object v5, v6, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v1, v5}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 1080
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->adapter:Lorg/telegram/ui/TopicsFragment$Adapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1081
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1082
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$11;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$11;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1111
    new-instance v0, Lorg/telegram/ui/TopicsFragment$12;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    iput-object v1, v6, Lorg/telegram/ui/TopicsFragment;->itemTouchHelperCallback:Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;

    invoke-direct {v0, v6, v1}, Lorg/telegram/ui/TopicsFragment$12;-><init>(Lorg/telegram/ui/TopicsFragment;Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 1117
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1119
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-static {v14, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1120
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v12, 0x64

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1121
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    .line 1122
    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1123
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x3c

    const/16 v15, 0x15

    if-lt v5, v15, :cond_6

    move/from16 v16, v2

    goto :goto_5

    :cond_6
    move/from16 v16, v13

    :goto_5
    if-lt v5, v15, :cond_7

    move/from16 v17, v2

    goto :goto_6

    :cond_7
    move/from16 v17, v13

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

    move/from16 v19, v11

    goto :goto_8

    :cond_9
    move/from16 v19, v9

    :goto_8
    const/16 v20, 0x0

    if-eqz v13, :cond_a

    move/from16 v21, v9

    goto :goto_9

    :cond_a
    move/from16 v21, v11

    :goto_9
    const/16 v22, 0xe

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1124
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1128
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-static {v0, v1, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v11, 0x4

    if-ge v5, v15, :cond_b

    .line 1130
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    sget v5, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1131
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v13, -0x1000000

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v13, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1132
    new-instance v5, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v5, v1, v0, v9, v9}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 1133
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v0, v5

    goto :goto_a

    .line 1136
    :cond_b
    new-instance v1, Landroid/animation/StateListAnimator;

    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    new-array v2, v8, [I

    const v5, 0x10100a7

    aput v5, v2, v9

    .line 1137
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

    .line 1138
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

    .line 1139
    iget-object v2, v6, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 1140
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/TopicsFragment$13;

    invoke-direct {v2, v6}, Lorg/telegram/ui/TopicsFragment$13;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1148
    :goto_a
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1149
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    .line 1150
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_chatlist_add_2:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 1151
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1153
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->floatingButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v2, 0x18

    const/16 v13, 0x11

    invoke-static {v2, v2, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1156
    new-instance v12, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v12, v7}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    .line 1157
    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    const/16 v14, 0x8

    .line 1158
    invoke-virtual {v12, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1159
    invoke-virtual {v12, v8}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 1161
    new-instance v15, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;

    invoke-direct {v15, v6, v7}, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    .line 1162
    iget-object v0, v15, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1164
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

    .line 1180
    :try_start_0
    iget-object v0, v8, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    :catch_0
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-boolean v1, v6, Lorg/telegram/ui/TopicsFragment;->loadingTopics:Z

    iget-boolean v2, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 1184
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->NoTopics:I

    const-string v2, "NoTopics"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/TopicsFragment;->updateTopicsEmptyViewText()V

    .line 1187
    invoke-virtual {v15, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1188
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1189
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1191
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1193
    new-instance v0, Lorg/telegram/ui/TopicsFragment$15;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/TopicsFragment$15;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    .line 1202
    new-instance v0, Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/UnreadCounterTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    .line 1203
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1204
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    const/16 v8, 0x33

    const/16 v2, 0x50

    const/4 v3, -0x1

    invoke-static {v3, v8, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1205
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$16;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$16;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1222
    new-instance v0, Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v0, v7, v1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v1, 0x16

    .line 1223
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 1224
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1225
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v2, 0x1e

    invoke-static {v2, v2, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1227
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    .line 1228
    sget v1, Lorg/telegram/messenger/R$drawable;->miniplayer_close:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1229
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$string;->Close:I

    const-string v2, "Close"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1230
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v11, v0, :cond_c

    .line 1231
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelClose:I

    invoke-virtual {v6, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->circle(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1233
    :cond_c
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelClose:I

    invoke-virtual {v6, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1234
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1235
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

    .line 1236
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1240
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1242
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    .line 1244
    new-instance v0, Lorg/telegram/ui/TopicsFragment$17;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/TopicsFragment$17;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->fullscreenView:Landroid/widget/FrameLayout;

    .line 1264
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-nez v1, :cond_d

    .line 1265
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/16 v2, 0x77

    const/4 v3, -0x1

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1267
    :cond_d
    new-instance v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    .line 1268
    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1269
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

    .line 1271
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1273
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setDrawBlurBackground(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    .line 1275
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v23

    iget-wide v0, v6, Lorg/telegram/ui/TopicsFragment;->chatId:J

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x1

    const/16 v30, 0x0

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v30}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(JZLjava/util/concurrent/CountDownLatch;ZZI)Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1277
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->topView:Landroid/widget/FrameLayout;

    .line 1278
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/16 v2, 0xc8

    const/16 v3, 0x30

    const/4 v4, -0x1

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1280
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1282
    new-instance v1, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    new-instance v2, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda21;

    invoke-direct {v2, v6}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-direct {v1, v6, v0, v2}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$Callback;)V

    iput-object v1, v6, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    .line 1283
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v1, v0, v9}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 1284
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->topView:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    invoke-virtual {v1}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v6, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    invoke-virtual {v2}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->getViewHeight()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1287
    :cond_e
    iget-boolean v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v0, :cond_f

    .line 1288
    new-instance v14, Lorg/telegram/ui/TopicsFragment$18;

    const/4 v4, 0x0

    iget-object v5, v6, Lorg/telegram/ui/TopicsFragment;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/TopicsFragment$18;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v14, v6, Lorg/telegram/ui/TopicsFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    .line 1295
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->topView:Landroid/widget/FrameLayout;

    const/16 v1, 0x26

    const/4 v2, -0x1

    invoke-static {v2, v1, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    :cond_f
    const/4 v2, -0x1

    :goto_b
    const/4 v0, -0x2

    .line 1297
    invoke-static {v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 1298
    iget-boolean v1, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v1, :cond_10

    const/16 v1, 0x15

    if-lt v11, v1, :cond_10

    .line 1299
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1301
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1302
    iget-object v1, v6, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1305
    :cond_11
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/TopicsFragment;->checkForLoadMore()V

    .line 1307
    new-instance v0, Lorg/telegram/ui/TopicsFragment$19;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/TopicsFragment$19;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    const/16 v1, 0x17

    if-lt v11, v1, :cond_12

    .line 1317
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v6, v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1319
    :cond_12
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 1320
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1321
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, v6}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1324
    iget-object v0, v6, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1326
    iput-boolean v1, v6, Lorg/telegram/ui/TopicsFragment;->bottomPannelVisible:Z

    .line 1328
    iget-boolean v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v0, :cond_15

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1329
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

    .line 1330
    instance-of v2, v1, Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_13

    check-cast v1, Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1331
    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getOpenedDialogId()Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object v1

    .line 1332
    iget-wide v2, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    iget-wide v4, v6, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_13

    .line 1333
    iget v0, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:I

    iput v0, v6, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:I

    .line 1338
    :cond_14
    invoke-direct {v6, v9, v9}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    .line 1340
    :cond_15
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    .line 1341
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/TopicsFragment;->updateColors()V

    .line 1343
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 6

    .line 2624
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_1

    .line 2625
    aget-object p2, p3, v1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 2626
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_0

    .line 2627
    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 2629
    :cond_0
    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-wide v4, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    .line 2630
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    .line 2631
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    if-eqz v2, :cond_a

    .line 2632
    invoke-virtual {v2, p2, v0}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    goto/16 :goto_0

    .line 2635
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    if-ne p1, p2, :cond_3

    .line 2636
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Long;

    .line 2637
    iget-wide v2, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-nez p2, :cond_a

    .line 2638
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    .line 2639
    array-length p2, p3

    if-le p2, v0, :cond_2

    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2640
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->checkForLoadMore()V

    .line 2642
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->checkLoading()V

    goto/16 :goto_0

    .line 2644
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_5

    .line 2645
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2646
    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT:I

    if-ne p2, v2, :cond_4

    .line 2647
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    .line 2649
    :cond_4
    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_SELECT_DIALOG:I

    and-int/2addr p2, v2

    if-lez p2, :cond_a

    .line 2650
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p2

    iget-wide v2, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {p2, v2, v3, v1}, Lorg/telegram/messenger/TopicsController;->sortTopics(JZ)V

    .line 2651
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    const/4 v2, -0x1

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p2

    xor-int/2addr p2, v0

    .line 2652
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    if-eqz p2, :cond_a

    .line 2654
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_0

    .line 2657
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    if-ne p1, p2, :cond_6

    .line 2658
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    goto :goto_0

    .line 2659
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    if-ne p1, p2, :cond_7

    .line 2660
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Long;

    .line 2661
    iget-wide v2, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    .line 2662
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lorg/telegram/messenger/MessagesController;->getGroupCall(JZ)Lorg/telegram/messenger/ChatObject$Call;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/TopicsFragment;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    .line 2663
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz p2, :cond_a

    .line 2664
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    xor-int/2addr v2, v0

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    goto :goto_0

    .line 2667
    :cond_7
    sget p2, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    if-ne p1, p2, :cond_8

    .line 2668
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    .line 2669
    invoke-direct {p0, v0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo(Z)V

    goto :goto_0

    .line 2670
    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatSwithcedToForum:I

    if-ne p1, p2, :cond_9

    goto :goto_0

    .line 2672
    :cond_9
    sget p2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, p2, :cond_a

    .line 2673
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack(Z)V

    .line 2675
    :cond_a
    :goto_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    if-ne p1, p2, :cond_d

    .line 2676
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

    .line 2679
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2680
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2681
    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2682
    iget-wide v4, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v4, v4

    cmp-long p3, v2, v4

    if-nez p3, :cond_c

    if-nez p1, :cond_c

    .line 2683
    iget p1, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:I

    if-eq p1, p2, :cond_d

    .line 2684
    iput p2, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:I

    .line 2685
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    goto :goto_1

    .line 2688
    :cond_c
    iget p1, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:I

    if-eqz p1, :cond_d

    .line 2689
    iput v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:I

    .line 2690
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    nop

    :cond_d
    :goto_1
    return-void
.end method

.method public getAvatarContainer()Lorg/telegram/ui/Components/ChatAvatarContainer;
    .locals 1

    .line 3907
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    return-object v0
.end method

.method public getContentView()Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .locals 1

    .line 3912
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    return-object v0
.end method

.method public getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 3

    .line 2718
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

    .line 2723
    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v0, v0

    return-wide v0
.end method

.method public getFullscreenView()Landroid/view/View;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->fullscreenView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getGroupCall()Lorg/telegram/messenger/ChatObject$Call;
    .locals 2

    .line 2713
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

    .line 3934
    new-instance v7, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda18;

    invoke-direct {v7, v0}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    .line 3971
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3973
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v1

    move/from16 v17, v8

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3974
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3975
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/16 v17, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3976
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3977
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/4 v13, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3978
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    const/16 v21, 0x0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3980
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_0

    .line 3981
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

    .line 148
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
    .locals 4

    .line 3148
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->searching:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 3149
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3150
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 3152
    :cond_1
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public onBackPressed()Z
    .locals 3

    .line 3861
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3862
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->clearSelectedTopics()V

    return v1

    .line 3865
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->searching:Z

    if-eqz v0, :cond_1

    .line 3866
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSearch(Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V

    return v1

    .line 3869
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onBecomeFullyHidden()V
    .locals 1

    .line 3093
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 3094
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 7

    .line 2507
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    .line 2508
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2509
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2510
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2511
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2512
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2513
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2514
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatSwithcedToForum:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2515
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2516
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2518
    invoke-direct {p0, v3, v3}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    .line 2519
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->preload(I)V

    .line 2521
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2522
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2523
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->startShortPoll(Lorg/telegram/tgnet/TLRPC$Chat;IZ)V

    .line 2526
    :cond_0
    sget-object v0, Lorg/telegram/ui/TopicsFragment;->settingsPreloaded:Ljava/util/HashSet;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2527
    sget-object v0, Lorg/telegram/ui/TopicsFragment;->settingsPreloaded:Ljava/util/HashSet;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2528
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getNotifyExceptions;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getNotifyExceptions;-><init>()V

    .line 2529
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_getNotifyExceptions;->peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;

    .line 2530
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_account_getNotifyExceptions;->flags:I

    or-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_account_getNotifyExceptions;->flags:I

    .line 2531
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v5, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v5, v5

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2532
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

    .line 2544
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 2546
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2547
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2548
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2549
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2550
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2551
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2552
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatSwithcedToForum:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2553
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2554
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2556
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2557
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2558
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v3, v2}, Lorg/telegram/messenger/MessagesController;->startShortPoll(Lorg/telegram/tgnet/TLRPC$Chat;IZ)V

    .line 2560
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 2562
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v1, :cond_1

    .line 2563
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchAvatarImageView(Lorg/telegram/ui/Components/BackupImageView;)V

    .line 2564
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchPaddingStart(I)V

    .line 2565
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    iput-boolean v2, v0, Lorg/telegram/ui/RightSlidingDialogContainer;->enabled:Z

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 3712
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 3713
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->onTopicFragmentPause(J)V

    .line 3714
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 3694
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 3695
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->onTopicFragmentResume(J)V

    const/4 v0, 0x0

    .line 3696
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->animatedUpdateEnabled:Z

    .line 3697
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    const/4 v0, 0x1

    .line 3698
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->animatedUpdateEnabled:Z

    .line 3699
    new-instance v0, Lorg/telegram/ui/TopicsFragment$25;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TopicsFragment$25;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    .line 3705
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3706
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void
.end method

.method public onSlideProgress(ZF)V
    .locals 0

    .line 3752
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3755
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->isSlideBackTransition:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->slideBackTransitionAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_1

    .line 3756
    invoke-direct {p0, p2}, Lorg/telegram/ui/TopicsFragment;->setSlideTransitionProgress(F)V

    :cond_1
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1

    .line 3798
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    if-eqz p1, :cond_1

    .line 3799
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 3800
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3801
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3803
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3806
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p2}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    if-nez p1, :cond_2

    .line 3808
    iget-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->opnendForSelect:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->removeFragmentOnTransitionEnd:Z

    if-eqz p1, :cond_2

    .line 3809
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    .line 3810
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz p1, :cond_2

    .line 3811
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :cond_2
    return-void
.end method

.method public onTransitionAnimationProgress(ZF)V
    .locals 1

    .line 3874
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 3876
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 3878
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 0

    .line 3791
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 3793
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

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

    .line 3720
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->isSlideBackTransition:Z

    .line 3721
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->setFragmentIsSliding(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3723
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->slideBackTransitionAnimator:Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    .line 3724
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->isSlideBackTransition:Z

    .line 3725
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->setFragmentIsSliding(Z)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3726
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

    .line 2227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2228
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2229
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v2, v2, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v2, :cond_0

    .line 2230
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-eqz v3, :cond_0

    .line 2231
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2234
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

    .line 2708
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->excludeTopics:Ljava/util/HashSet;

    return-void
.end method

.method public setForwardFromDialogFragment(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 2727
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    return-void
.end method

.method public setOnTopicSelectedListener(Lorg/telegram/ui/TopicsFragment$OnTopicSelectedListener;)V
    .locals 0

    .line 3685
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->onTopicSelectedListener:Lorg/telegram/ui/TopicsFragment$OnTopicSelectedListener;

    return-void
.end method

.method public setPreviewOpenedProgress(F)V
    .locals 2

    .line 3917
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v0, :cond_1

    .line 3918
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3919
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3920
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

    .line 3926
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v0, :cond_0

    .line 3927
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3928
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/16 p1, 0x28

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method public setTransitionPadding(I)V
    .locals 0

    int-to-float p1, p1

    .line 1452
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->transitionPadding:F

    .line 1453
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

    .line 1400
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->removeFragmentOnTransitionEnd:Z

    .line 1402
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1403
    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    const-string v2, "chat_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1404
    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 1405
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatActivity;->setSwitchFromTopics(Z)V

    .line 1406
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public updateReordering()V
    .locals 3

    .line 2218
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2219
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2220
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/TopicsFragment;->reordering:Z

    if-eq v2, v0, :cond_1

    .line 2221
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->reordering:Z

    .line 2222
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->adapter:Lorg/telegram/ui/TopicsFragment$Adapter;

    invoke-virtual {v0}, Lorg/telegram/ui/TopicsFragment$Adapter;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_1
    return-void
.end method
