.class public Lorg/telegram/ui/ChannelAdminLogActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChannelAdminLogActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;
    }
.end annotation


# instance fields
.field private admins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private allowAnimationIndex:I

.field private aspectPaint:Landroid/graphics/Paint;

.field private aspectPath:Landroid/graphics/Path;

.field private aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

.field private bottomOverlayChat:Landroid/widget/FrameLayout;

.field private bottomOverlayChatText:Landroid/widget/TextView;

.field private bottomOverlayImage:Landroid/widget/ImageView;

.field private chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

.field private chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

.field private chatListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private chatMessageCellsCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/ChatMessageCell;",
            ">;"
        }
    .end annotation
.end field

.field private checkTextureViewPosition:Z

.field private contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field protected currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

.field private currentFloatingDateOnScreen:Z

.field private currentFloatingTopIsNotMessage:Z

.field private emptyView:Landroid/widget/TextView;

.field private emptyViewContainer:Landroid/widget/FrameLayout;

.field private endReached:Z

.field private floatingDateAnimation:Landroid/animation/AnimatorSet;

.field private floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

.field private invitesCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private linviteLoading:Z

.field private loading:Z

.field private loadsCount:I

.field protected messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private messagesByDays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private messagesDict:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private mid:[I

.field private minEventId:J

.field private paused:Z

.field private progressBar:Lorg/telegram/ui/Components/RadialProgressView;

.field private progressView:Landroid/widget/FrameLayout;

.field private progressView2:Landroid/view/View;

.field private provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private roundVideoContainer:Landroid/widget/FrameLayout;

.field private scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private scrollToOffsetOnRecreate:I

.field private scrollToPositionOnRecreate:I

.field private scrollingFloatingDate:Z

.field private searchCalendarButton:Landroid/widget/ImageView;

.field private searchContainer:Landroid/widget/FrameLayout;

.field private searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchQuery:Ljava/lang/String;

.field private searchWas:Z

.field private selectedAdmins:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private selectedObject:Lorg/telegram/messenger/MessageObject;

.field private undoView:Lorg/telegram/ui/Components/UndoView;

.field private usersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private videoTextureView:Landroid/view/TextureView;

.field private wasPaused:Z


# direct methods
.method public static synthetic $r8$lambda$ELcKKlDFHmfmtJvyr7USZYsM5GE(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$createView$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EnvzGXCE_qzkgif7BEZi1g5c7Yg(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$loadAdmins$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K6YvttQ3F4S6-P2bbX1CKCm7fu0(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$loadMessages$0(Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MQCyxiopx6Cfdd66k7r-Wy0b6SY(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$processSelectedOption$11(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nw6lp0zeX3AILA-hhVNEXvDhKbc(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$loadMessages$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OY36nNw98F9nMExySLDIl4rwBSU(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$processSelectedOption$12(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S17-jBhx0dH9xZnnzYhsIyQHsDM(Lorg/telegram/ui/ChannelAdminLogActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$createView$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TNGfxV2tKG0xy1T-C7b0ccTpgWA(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$loadAntispamUser$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W331KwjN1GwAGQxblBijhxsozvQ(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$createView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wx6bK-VVwye5U4Xfqw5mPvyK-t0(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$showOpenUrlAlert$16(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eeKhKy-9LJOXa93pbGkfIm_gTHw(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;Landroidx/collection/LongSparseArray;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$createView$3(Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$foodkQmUT9LBhoEYNGK_zUtlQ8k(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$loadAdmins$13(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hOO2YoRUdBe4KCpIf0YDtknBzlk(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$createView$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kzZea0kkwS8oOyKCYs8ACFgTwbM(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;FF)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$createMenu$9(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$p2tytYarxembkHbuaZ6Dga0Y58I(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pMVXyWO9dOLSklPA_hK1PYRLiuM(Lorg/telegram/ui/ChannelAdminLogActivity;ILjava/util/ArrayList;Ljava/lang/Integer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$createMenu$8(ILjava/util/ArrayList;Ljava/lang/Integer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xbKn9J4KKAPpXicorN1568WCdC8(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;ZLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$createMenu$10(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;ZLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 4

    .line 268
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatMessageCellsCache:Ljava/util/ArrayList;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 163
    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->mid:[I

    const/4 v1, -0x1

    .line 183
    iput v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToPositionOnRecreate:I

    .line 184
    iput v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToOffsetOnRecreate:I

    .line 186
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->paused:Z

    .line 187
    iput-boolean v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->wasPaused:Z

    .line 191
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messagesDict:Landroidx/collection/LongSparseArray;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messagesByDays:Ljava/util/HashMap;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    const-string v0, ""

    .line 201
    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchQuery:Ljava/lang/String;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->invitesCache:Ljava/util/HashMap;

    .line 212
    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$1;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 269
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->updateMessagesVisiblePart()V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/view/View;FF)Z
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->createMenu(Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ChannelAdminLogActivity;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollingFloatingDate:Z

    return p0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Z
    .locals 0

    .line 137
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollingFloatingDate:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelAdminLogActivity;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchWas:Z

    return p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Z
    .locals 0

    .line 137
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->checkTextureViewPosition:Z

    return p1
.end method

.method static synthetic access$302(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Z
    .locals 0

    .line 137
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->hideFloatingDateView(Z)V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ChannelAdminLogActivity;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFloatingTopIsNotMessage:Z

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Cells/ChatActionCell;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->checkScrollForLoad(Z)V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/UndoView;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/graphics/Path;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->aspectPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/graphics/Paint;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->aspectPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->loadMessages(Z)V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ChannelAdminLogActivity;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->endReached:Z

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatMessageCellsCache:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/view/View;)Z
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->createMenu(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->updateBottomOverlay()V

    return-void
.end method

.method static synthetic access$5000(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/view/View;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/os/Bundle;J)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->addCanBanUser(Landroid/os/Bundle;J)V

    return-void
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->alertUserOpenError(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method static synthetic access$5700(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToPositionOnRecreate:I

    return p0
.end method

.method static synthetic access$5802(Lorg/telegram/ui/ChannelAdminLogActivity;I)I
    .locals 0

    .line 137
    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToPositionOnRecreate:I

    return p1
.end method

.method static synthetic access$5902(Lorg/telegram/ui/ChannelAdminLogActivity;I)I
    .locals 0

    .line 137
    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToOffsetOnRecreate:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Landroid/view/TextureView;
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->createTextureView(Z)Landroid/view/TextureView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/ChannelAdminLogActivity;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->linviteLoading:Z

    return p0
.end method

.method static synthetic access$6202(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Z
    .locals 0

    .line 137
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->linviteLoading:Z

    return p1
.end method

.method static synthetic access$6300(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->invitesCache:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->usersMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$6502(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->usersMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$6600(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvite;Ljava/util/HashMap;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->showInviteLinkBottomSheet(Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvite;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$6700(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->loadsCount:I

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChannelAdminLogActivity;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messagesByDays:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/ChannelAdminLogActivity;)[I
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->mid:[I

    return-object p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    return-object p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    return-object p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->moveScrollToLastMessage()V

    return-void
.end method

.method static synthetic access$7800(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->closeMenu()V

    return-void
.end method

.method static synthetic access$8100(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p0
.end method

.method static synthetic access$8102(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method private addCanBanUser(Landroid/os/Bundle;J)V
    .locals 5

    .line 2266
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->admins:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2269
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->admins:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2270
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->admins:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2271
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    cmp-long v4, v2, p2

    if-nez v4, :cond_1

    .line 2272
    iget-boolean p2, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->can_edit:Z

    if-nez p2, :cond_2

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2278
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-string v0, "ban_chat_id"

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    :goto_1
    return-void
.end method

.method private alertUserOpenError(Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    .line 2247
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2250
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2251
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    const-string v2, "AppName"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2252
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v2, "OK"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2253
    iget v1, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 2254
    sget p1, Lorg/telegram/messenger/R$string;->NoPlayerInstalled:I

    const-string v1, "NoPlayerInstalled"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 2256
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->NoHandleAppInstalled:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    aput-object p1, v2, v3

    const-string p1, "NoHandleAppInstalled"

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2258
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private checkScrollForLoad(Z)V
    .locals 3

    .line 1990
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->paused:Z

    if-eqz v1, :cond_0

    goto :goto_2

    .line 1993
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 1994
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    if-lez v1, :cond_3

    .line 1996
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->getItemCount()I

    if-eqz p1, :cond_2

    const/16 p1, 0x19

    goto :goto_1

    :cond_2
    const/4 p1, 0x5

    :goto_1
    if-gt v0, p1, :cond_3

    .line 2003
    iget-boolean p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->loading:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->endReached:Z

    if-nez p1, :cond_3

    .line 2004
    invoke-direct {p0, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->loadMessages(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method private closeMenu()V
    .locals 1

    .line 1142
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    .line 1143
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private createMenu(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1162
    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->createMenu(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method private createMenu(Landroid/view/View;FF)Z
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v5, p1

    .line 1167
    instance-of v0, v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_0

    .line 1168
    move-object v0, v5

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    :goto_0
    move-object v9, v0

    goto :goto_1

    .line 1169
    :cond_0
    instance-of v0, v5, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v0, :cond_1

    .line 1170
    move-object v0, v5

    check-cast v0, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x0

    if-nez v9, :cond_2

    return v10

    .line 1175
    :cond_2
    invoke-direct {v8, v9}, Lorg/telegram/ui/ChannelAdminLogActivity;->getMessageType(Lorg/telegram/messenger/MessageObject;)I

    move-result v0

    .line 1176
    iput-object v9, v8, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    .line 1177
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_3

    return v10

    .line 1181
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1182
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1183
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1185
    iget-object v2, v9, Lorg/telegram/messenger/MessageObject;->currentEvent:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    const/4 v14, 0x1

    const/16 v3, 0xa

    if-eqz v2, :cond_7

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionDeleteMessage;

    if-eqz v4, :cond_4

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->user_id:J

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v1, v2, Lorg/telegram/messenger/MessagesController;->telegramAntispamUserId:J

    cmp-long v15, v6, v1

    if-eqz v15, :cond_5

    :cond_4
    iget-object v1, v9, Lorg/telegram/messenger/MessageObject;->currentEvent:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleAntiSpam;

    if-eqz v1, :cond_7

    .line 1186
    :cond_5
    instance-of v1, v5, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v1, :cond_6

    .line 1187
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ">"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1188
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->attach_arrow_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1189
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "undo_cancelColor"

    invoke-virtual {v8, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1190
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v10, v10, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1191
    new-instance v2, Landroid/text/style/ImageSpan;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v10, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1192
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1193
    sget v2, Lorg/telegram/messenger/R$string;->EventLogFilterGroupInfo:I

    const-string v4, "EventLogFilterGroupInfo"

    .line 1194
    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v4, "\u2009"

    .line 1195
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 1196
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 1197
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->ChannelAdministrators:I

    const-string v4, "ChannelAdministrators"

    .line 1198
    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1199
    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$13;

    invoke-direct {v0, v8}, Lorg/telegram/ui/ChannelAdminLogActivity$13;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    .line 1210
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 1199
    invoke-virtual {v1, v0, v10, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1211
    sget v0, Lorg/telegram/messenger/R$string;->ChannelAntiSpamInfo2:I

    const-string v2, "ChannelAntiSpamInfo2"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%s"

    .line 1212
    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1213
    invoke-static/range {p0 .. p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->msg_antispam:I

    sget v3, Lorg/telegram/messenger/R$string;->ChannelAntiSpamUser:I

    const-string v4, "ChannelAntiSpamUser"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    const/16 v1, 0x1388

    .line 1214
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)V

    .line 1215
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return v14

    .line 1218
    :cond_6
    sget v1, Lorg/telegram/messenger/R$string;->ReportFalsePositive:I

    const-string v2, "ReportFalsePositive"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_notspam:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x22

    .line 1220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 1221
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1223
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    .line 1226
    :goto_2
    iget-object v2, v8, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget v4, v2, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x3

    const-string v7, "Copy"

    if-eqz v4, :cond_8

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v2, :cond_9

    .line 1227
    :cond_8
    sget v2, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-ne v0, v14, :cond_d

    .line 1232
    iget-object v0, v8, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->currentEvent:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    if-eqz v0, :cond_c

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeStickerSet;

    if-eqz v2, :cond_c

    .line 1233
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeStickerSet;

    .line 1234
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeStickerSet;->new_stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v0, :cond_a

    .line 1235
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    if-eqz v2, :cond_b

    .line 1236
    :cond_a
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeStickerSet;->prev_stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    :cond_b
    move-object v3, v0

    if-eqz v3, :cond_1b

    .line 1239
    new-instance v6, Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    invoke-virtual {v8, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return v14

    :cond_c
    if-eqz v0, :cond_1b

    .line 1242
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeHistoryTTL;

    if-eqz v0, :cond_1b

    .line 1243
    iget-object v0, v8, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1244
    new-instance v0, Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v16

    const/16 v17, 0x0

    iget-object v1, v8, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v0

    move-object/from16 v18, v1

    invoke-direct/range {v15 .. v20}, Lorg/telegram/ui/Components/ClearHistoryAlert;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1245
    new-instance v1, Lorg/telegram/ui/ChannelAdminLogActivity$14;

    invoke-direct {v1, v8}, Lorg/telegram/ui/ChannelAdminLogActivity$14;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClearHistoryAlert;->setDelegate(Lorg/telegram/ui/Components/ClearHistoryAlert$ClearHistoryAlertDelegate;)V

    .line 1255
    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5

    :cond_d
    const/16 v2, 0xb

    const-string v4, "SaveToGIFs"

    if-ne v0, v6, :cond_e

    .line 1259
    iget-object v0, v8, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v1, :cond_1b

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1260
    sget v0, Lorg/telegram/messenger/R$string;->SaveToGIFs:I

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_gif:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_e
    const-string v6, "SaveToGallery"

    const/4 v15, 0x4

    const-string v1, "SaveToDownloads"

    const-string v10, "ShareFile"

    const/4 v14, 0x6

    if-ne v0, v15, :cond_13

    .line 1265
    iget-object v0, v8, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1266
    sget v0, Lorg/telegram/messenger/R$string;->SaveToGallery:I

    invoke-static {v6, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_gallery:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1269
    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v10, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1270
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1271
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1272
    :cond_f
    iget-object v0, v8, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1273
    sget v0, Lorg/telegram/messenger/R$string;->SaveToMusic:I

    const-string v1, "SaveToMusic"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_download:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v10, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1277
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1279
    :cond_10
    iget-object v0, v8, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1280
    iget-object v0, v8, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1281
    sget v0, Lorg/telegram/messenger/R$string;->SaveToGIFs:I

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_gif:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    :cond_11
    sget v0, Lorg/telegram/messenger/R$string;->SaveToDownloads:I

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_download:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1287
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1288
    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v10, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1292
    :cond_12
    sget v0, Lorg/telegram/messenger/R$string;->SaveToGallery:I

    invoke-static {v6, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_gallery:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_13
    const/4 v2, 0x5

    if-ne v0, v2, :cond_14

    .line 1297
    sget v0, Lorg/telegram/messenger/R$string;->ApplyLocalizationFile:I

    const-string v4, "ApplyLocalizationFile"

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_language:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1299
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1300
    sget v0, Lorg/telegram/messenger/R$string;->SaveToDownloads:I

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_download:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v10, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1305
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_14
    if-ne v0, v3, :cond_15

    .line 1307
    sget v0, Lorg/telegram/messenger/R$string;->ApplyThemeFile:I

    const-string v4, "ApplyThemeFile"

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_theme:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    sget v0, Lorg/telegram/messenger/R$string;->SaveToDownloads:I

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_download:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1313
    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v10, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_15
    const/4 v2, 0x7

    if-ne v0, v14, :cond_16

    .line 1317
    sget v0, Lorg/telegram/messenger/R$string;->SaveToGallery:I

    invoke-static {v6, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_gallery:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    sget v0, Lorg/telegram/messenger/R$string;->SaveToDownloads:I

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_download:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1322
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v10, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_16
    if-ne v0, v2, :cond_18

    .line 1327
    iget-object v0, v8, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMask()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1328
    sget v0, Lorg/telegram/messenger/R$string;->AddToMasks:I

    const-string v1, "AddToMasks"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1330
    :cond_17
    sget v0, Lorg/telegram/messenger/R$string;->AddToStickers:I

    const-string v1, "AddToStickers"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    :goto_3
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_sticker:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x9

    .line 1333
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_18
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1b

    .line 1335
    iget-object v0, v8, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_19

    .line 1338
    iget v2, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    goto :goto_4

    :cond_19
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_1a

    .line 1340
    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget v0, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v14

    cmp-long v0, v2, v14

    if-eqz v0, :cond_1a

    iget v0, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 1341
    sget v0, Lorg/telegram/messenger/R$string;->AddContactTitle:I

    const-string v1, "AddContactTitle"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1342
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_addcontact:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xf

    .line 1343
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    :cond_1a
    iget-object v0, v8, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1346
    sget v0, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v7, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1347
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x10

    .line 1348
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    sget v0, Lorg/telegram/messenger/R$string;->Call:I

    const-string v1, "Call"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1350
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_calls:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x11

    .line 1351
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    :cond_1b
    :goto_5
    new-instance v10, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda6;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v11

    move-object v4, v13

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;FF)V

    .line 1470
    iget-object v0, v8, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1471
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->currentEvent:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    if-eqz v0, :cond_1c

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionDeleteMessage;

    if-eqz v1, :cond_1c

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->user_id:J

    .line 1472
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/MessagesController;->telegramAntispamUserId:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1c

    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_1c

    .line 1473
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1475
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, v8, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1478
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v8, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v3, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda10;

    invoke-direct {v3, v11, v13, v12, v10}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda10;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v0, v3}, Lorg/telegram/messenger/MessagesController;->checkIsInChat(ZLorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/MessagesController$IsInChatCheckedCallback;)V

    const/16 v17, 0x1

    goto :goto_6

    :cond_1c
    const/16 v17, 0x0

    :goto_6
    if-nez v17, :cond_1d

    .line 1489
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method private createTextureView(Z)Landroid/view/TextureView;
    .locals 6

    .line 1524
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1527
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 1528
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_1

    .line 1529
    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$17;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lorg/telegram/ui/ChannelAdminLogActivity$17;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    .line 1536
    new-instance v4, Lorg/telegram/ui/ChannelAdminLogActivity$18;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$18;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1543
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    goto :goto_0

    .line 1545
    :cond_1
    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$19;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lorg/telegram/ui/ChannelAdminLogActivity$19;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    .line 1574
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->aspectPath:Landroid/graphics/Path;

    .line 1575
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->aspectPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    .line 1576
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1577
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->aspectPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1579
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1580
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1582
    new-instance v0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 1583
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 1585
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1588
    :cond_2
    new-instance p1, Landroid/view/TextureView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->videoTextureView:Landroid/view/TextureView;

    .line 1589
    invoke-virtual {p1, v3}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 1590
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->videoTextureView:Landroid/view/TextureView;

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1592
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_4

    .line 1593
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1595
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1596
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setDrawingReady(Z)V

    .line 1597
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->videoTextureView:Landroid/view/TextureView;

    return-object p1
.end method

.method private getMessageContent(Lorg/telegram/messenger/MessageObject;IZ)Ljava/lang/CharSequence;
    .locals 5

    .line 1496
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz p3, :cond_1

    .line 1498
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v1

    int-to-long p2, p2

    cmp-long v3, p2, v1

    if-eqz v3, :cond_1

    const-wide/16 p2, 0x0

    const-string v3, ":\n"

    cmp-long v4, v1, p2

    if-lez v4, :cond_0

    .line 1501
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1503
    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {p3, p2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_0
    if-gez v4, :cond_1

    .line 1506
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1508
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1513
    :cond_1
    :goto_0
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1515
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1516
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 1518
    :cond_2
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    :goto_1
    return-object v0
.end method

.method private getMessageType(Lorg/telegram/messenger/MessageObject;)I
    .locals 7

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1846
    :cond_0
    iget v1, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    const/16 v3, 0xa

    const/4 v4, 0x1

    if-eq v1, v3, :cond_12

    const/16 v5, 0xb

    if-eq v1, v5, :cond_12

    const/16 v5, 0x10

    if-ne v1, v5, :cond_2

    goto/16 :goto_3

    .line 1854
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    return v1

    .line 1856
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_2

    .line 1867
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 1896
    :cond_6
    iget v0, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_7

    const/16 p1, 0x8

    return p1

    .line 1898
    :cond_7
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x3

    return p1

    :cond_8
    :goto_0
    const/4 v0, 0x0

    .line 1869
    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    .line 1870
    new-instance v5, Ljava/io/File;

    iget-object v6, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1871
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v0, 0x1

    :cond_9
    if-nez v0, :cond_a

    .line 1876
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v6, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v5

    .line 1877
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_1

    :cond_a
    move v4, v0

    :goto_1
    if-eqz v4, :cond_11

    .line 1882
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1883
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1885
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "attheme"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    return v3

    :cond_b
    const-string p1, "/xml"

    .line 1887
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x5

    return p1

    :cond_c
    const-string p1, "/png"

    .line 1889
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "/jpg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "/jpeg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_d
    return v2

    :cond_e
    const/4 p1, 0x4

    return p1

    .line 1857
    :cond_f
    :goto_2
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object p1

    .line 1858
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    const/4 v2, 0x7

    if-eqz v0, :cond_10

    .line 1859
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result p1

    if-nez p1, :cond_11

    return v2

    .line 1862
    :cond_10
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    if-eqz v0, :cond_11

    .line 1863
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    return v2

    :cond_11
    return v1

    .line 1849
    :cond_12
    :goto_3
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-nez p1, :cond_13

    return v0

    :cond_13
    return v4
.end method

.method private hideFloatingDateView(Z)V
    .locals 5

    .line 1963
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFloatingDateOnScreen:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollingFloatingDate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFloatingTopIsNotMessage:Z

    if-eqz v0, :cond_3

    .line 1964
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1966
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    .line 1967
    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1968
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v0, v1, v4

    const-string v0, "alpha"

    invoke-static {v3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1969
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$21;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$21;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1977
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1978
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1980
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    .line 1981
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1982
    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    .line 1984
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic lambda$createMenu$10(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;ZLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 1480
    sget p4, Lorg/telegram/messenger/R$string;->BanUser:I

    const-string p5, "BanUser"

    invoke-static {p5, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1481
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p0, 0x21

    .line 1482
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    :cond_0
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createMenu$8(ILjava/util/ArrayList;Ljava/lang/Integer;Landroid/view/View;)V
    .locals 0

    .line 1380
    iget-object p4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p4, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p1, p2, :cond_0

    goto :goto_0

    .line 1383
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->processSelectedOption(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createMenu$9(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;FF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1358
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 1362
    :cond_0
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    const/16 v3, 0xc8

    .line 1363
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 1364
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1365
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1366
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    const-string v4, "actionBarDefaultSubmenuBackground"

    .line 1367
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 1369
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_0
    const/16 v8, 0x8

    const/4 v9, 0x1

    if-ge v7, v4, :cond_4

    .line 1370
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_1

    .line 1371
    new-instance v9, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v10, -0x1

    invoke-static {v10, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v9, v8}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    goto :goto_3

    .line 1373
    :cond_1
    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v10

    if-nez v7, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    add-int/lit8 v12, v4, -0x1

    if-ne v7, v12, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    invoke-direct {v8, v10, v11, v9, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1374
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    move-object/from16 v10, p2

    .line 1375
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    move-object/from16 v11, p3

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v8, v9, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1376
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1377
    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1379
    new-instance v12, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda4;

    invoke-direct {v12, v0, v7, v1, v9}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;ILjava/util/ArrayList;Ljava/lang/Integer;)V

    invoke-virtual {v8, v12}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1388
    :cond_4
    new-instance v1, Lorg/telegram/ui/ChannelAdminLogActivity$15;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lorg/telegram/ui/ChannelAdminLogActivity$15;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V

    const/high16 v10, -0x40000000    # -2.0f

    const/high16 v11, -0x40000000    # -2.0f

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1406
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinearRelatively(FFIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1407
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->setPopupWindowLayout(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    .line 1409
    new-instance v3, Lorg/telegram/ui/ChannelAdminLogActivity$16;

    const/4 v4, -0x2

    invoke-direct {v3, v0, v1, v4, v4}, Lorg/telegram/ui/ChannelAdminLogActivity$16;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/view/View;II)V

    iput-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 1420
    invoke-virtual {v3, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    .line 1421
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v4, 0xdc

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 1422
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1423
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3, v9}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1424
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v4, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1425
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/16 v3, 0x3e8

    .line 1426
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/high16 v7, -0x80000000

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1427
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1428
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v7, 0x30

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 1429
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1430
    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    .line 1432
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLeft()I

    move-result v2

    move/from16 v3, p5

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    const/16 v3, 0x1c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x6

    .line 1433
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 1434
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    goto :goto_4

    .line 1435
    :cond_5
    iget-object v9, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    if-le v2, v9, :cond_6

    .line 1436
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1438
    :cond_6
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_7

    new-array v3, v4, [I

    .line 1440
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1441
    aget v3, v3, v6

    add-int/2addr v2, v3

    .line 1443
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    .line 1444
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v4, v7

    .line 1445
    iget-object v7, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v7

    const/16 v9, 0x14

    .line 1446
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    if-le v7, v9, :cond_8

    add-int/2addr v3, v7

    :cond_8
    if-ge v4, v3, :cond_b

    .line 1451
    iget-object v6, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v6

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float v6, v6, p6

    float-to-int v6, v6

    .line 1452
    iget v7, v5, Landroid/graphics/Rect;->top:I

    sub-int v7, v4, v7

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v5

    const/16 v5, 0xf0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    if-le v7, v9, :cond_9

    .line 1453
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v5, v4

    add-int/2addr v6, v5

    :cond_9
    int-to-float v5, v6

    .line 1455
    iget-object v7, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v7

    const/16 v9, 0x18

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v7, v10

    cmpg-float v5, v5, v7

    if-gez v5, :cond_a

    .line 1456
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v6, v4

    goto :goto_5

    :cond_a
    sub-int v4, v3, v4

    .line 1457
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, v4, v5

    if-le v6, v5, :cond_d

    .line 1458
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v6, v4, v5

    goto :goto_5

    .line 1461
    :cond_b
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->inBubbleMode:Z

    if-eqz v4, :cond_c

    goto :goto_5

    :cond_c
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_d
    :goto_5
    sub-int/2addr v3, v6

    .line 1465
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->setMaxHeight(I)V

    .line 1466
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v4, 0x33

    invoke-virtual {v1, v3, v4, v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1467
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dimBehind()V

    return-void
.end method

.method private static synthetic lambda$createView$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$createView$3(Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;Landroidx/collection/LongSparseArray;)V
    .locals 1

    .line 1023
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    .line 1024
    iput-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedAdmins:Landroidx/collection/LongSparseArray;

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1028
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    sget p2, Lorg/telegram/messenger/R$string;->EventLogAllEvents:I

    const-string v0, "EventLogAllEvents"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1026
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    sget p2, Lorg/telegram/messenger/R$string;->EventLogSelectedEvents:I

    const-string v0, "EventLogSelectedEvents"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setSubtitle(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 p1, 0x1

    .line 1030
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->loadMessages(Z)V

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 4

    .line 1017
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1020
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/AdminLogFilterAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedAdmins:Landroidx/collection/LongSparseArray;

    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/AdminLogFilterAlert;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;Landroidx/collection/LongSparseArray;Z)V

    .line 1021
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->admins:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->setCurrentAdmins(Ljava/util/ArrayList;)V

    .line 1022
    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->setAdminLogFilterAlertDelegate(Lorg/telegram/ui/Components/AdminLogFilterAlert$AdminLogFilterAlertDelegate;)V

    .line 1032
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 2

    .line 1049
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1050
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_0

    .line 1051
    sget v0, Lorg/telegram/messenger/R$string;->EventLogInfoDetail:I

    const-string v1, "EventLogInfoDetail"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1053
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->EventLogInfoDetailChannel:I

    const-string v1, "EventLogInfoDetailChannel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1055
    :goto_0
    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1056
    sget v0, Lorg/telegram/messenger/R$string;->EventLogInfoTitle:I

    const-string v1, "EventLogInfoTitle"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1057
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$createView$6(I)V
    .locals 0

    const/4 p1, 0x1

    .line 1111
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->loadMessages(Z)V

    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/view/View;)V
    .locals 4

    .line 1107
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1110
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1111
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-wide v0, 0x140372c8800L

    new-instance v2, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->createCalendarPickerDialog(Landroid/content/Context;JLorg/telegram/messenger/MessagesStorage$IntCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$loadAdmins$13(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    if-nez p1, :cond_1

    .line 1913
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    .line 1914
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1915
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1916
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->admins:Ljava/util/ArrayList;

    .line 1917
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_0

    .line 1918
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1919
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    if-eqz p1, :cond_0

    .line 1920
    new-instance p1, Lorg/telegram/ui/ChannelAdminLogActivity$20;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$20;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    .line 1921
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v2, p2, Lorg/telegram/messenger/MessagesController;->telegramAntispamUserId:J

    iput-wide v2, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:J

    .line 1922
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:J

    invoke-virtual {p2, v2, v3}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1923
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v2, p2, Lorg/telegram/messenger/MessagesController;->telegramAntispamUserId:J

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/ChannelAdminLogActivity;->loadAntispamUser(J)V

    .line 1924
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->admins:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1927
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    instance-of p2, p1, Lorg/telegram/ui/Components/AdminLogFilterAlert;

    if-eqz p2, :cond_1

    .line 1928
    check-cast p1, Lorg/telegram/ui/Components/AdminLogFilterAlert;

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->admins:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->setCurrentAdmins(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadAdmins$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1911
    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadAntispamUser$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 1944
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$Vector;

    if-eqz p2, :cond_2

    .line 1945
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Vector;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    .line 1946
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1947
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1948
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_0

    .line 1949
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1952
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$loadMessages$0(Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;)V
    .locals 14

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ChatListItemAnimator;->setShouldAnimateEnterFromBottom(Z)V

    .line 368
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 369
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 372
    :goto_0
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->events:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_3

    .line 373
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->events:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    .line 374
    iget-object v6, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messagesDict:Landroidx/collection/LongSparseArray;

    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->id:J

    invoke-virtual {v6, v7, v8}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v6

    if-ltz v6, :cond_0

    goto :goto_2

    .line 377
    :cond_0
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleAdmin;

    if-eqz v7, :cond_1

    .line 378
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleAdmin;

    .line 379
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleAdmin;->prev_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v7, :cond_1

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleAdmin;->new_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v6, :cond_1

    goto :goto_2

    .line 383
    :cond_1
    iget-wide v6, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->minEventId:J

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->id:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->minEventId:J

    .line 385
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    iget v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v9, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    iget-object v10, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messagesByDays:Ljava/util/HashMap;

    iget-object v11, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v12, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->mid:[I

    const/4 v13, 0x0

    move-object v6, v3

    move-object v8, v4

    invoke-direct/range {v6 .. v13}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;Ljava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/tgnet/TLRPC$Chat;[IZ)V

    .line 386
    iget v6, v3, Lorg/telegram/messenger/MessageObject;->contentType:I

    if-gez v6, :cond_2

    goto :goto_1

    .line 389
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messagesDict:Landroidx/collection/LongSparseArray;

    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->id:J

    invoke-virtual {v6, v7, v8, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_1
    const/4 v3, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    .line 392
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->loading:Z

    if-nez v3, :cond_4

    .line 394
    iput-boolean v5, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->endReached:Z

    .line 396
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView:Landroid/widget/FrameLayout;

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v0, v1, v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 397
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    if-eqz p1, :cond_8

    .line 400
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->endReached:Z

    if-eqz v0, :cond_5

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyItemRangeChanged(II)V

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 404
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 405
    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_4

    .line 406
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int v3, p1, v0

    if-lez v3, :cond_7

    xor-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v5

    .line 409
    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyItemChanged(I)V

    .line 410
    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    sub-int v5, p1, v0

    invoke-virtual {v4, v3, v5}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyItemRangeInserted(II)V

    :cond_7
    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    .line 413
    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/2addr v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {v3, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_5

    .line 415
    :cond_8
    iget-boolean p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->endReached:Z

    if-eqz p1, :cond_9

    .line 416
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyItemRemoved(I)V

    :cond_9
    :goto_5
    return-void
.end method

.method private synthetic lambda$loadMessages$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 365
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;

    .line 366
    new-instance p2, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$processSelectedOption$11(Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    .line 1817
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v0, :cond_0

    .line 1818
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->msg_antispam:I

    sget v1, Lorg/telegram/messenger/R$string;->ChannelAntiSpamFalsePositiveReported:I

    const-string v2, "ChannelAntiSpamFalsePositiveReported"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 1819
    :cond_0
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolFalse;

    const-string v0, "UnknownError"

    if-eqz p1, :cond_1

    .line 1820
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    sget v2, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 1822
    :cond_1
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    sget v2, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :goto_0
    return-void
.end method

.method private synthetic lambda$processSelectedOption$12(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1816
    new-instance p2, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showOpenUrlAlert$16(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2288
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private loadAdmins()V
    .locals 3

    .line 1906
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 1907
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1908
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    const/4 v1, 0x0

    .line 1909
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    const/16 v1, 0xc8

    .line 1910
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 1911
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    .line 1932
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method

.method private loadAntispamUser(J)V
    .locals 2

    .line 1936
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1939
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_users_getUsers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_users_getUsers;-><init>()V

    .line 1940
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputUser;-><init>()V

    .line 1941
    iput-wide p1, v1, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:J

    .line 1942
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_users_getUsers;->id:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1943
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda15;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private loadMessages(Z)V
    .locals 6

    .line 327
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->loading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const-wide v1, 0x7fffffffffffffffL

    .line 331
    iput-wide v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->minEventId:J

    .line 332
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    const v2, 0x3e99999a    # 0.3f

    .line 333
    invoke-static {v1, v0, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 334
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 335
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 337
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 338
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 339
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messagesByDays:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 341
    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->loading:Z

    .line 342
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;-><init>()V

    .line 343
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 344
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchQuery:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->q:Ljava/lang/String;

    const/16 v2, 0x32

    .line 345
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->limit:I

    const-wide/16 v2, 0x0

    if-nez p1, :cond_3

    .line 346
    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 347
    iget-wide v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->minEventId:J

    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->max_id:J

    goto :goto_0

    .line 349
    :cond_3
    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->max_id:J

    .line 351
    :goto_0
    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->min_id:J

    .line 352
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    if-eqz v2, :cond_4

    .line 353
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->flags:I

    or-int/2addr v0, v3

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->flags:I

    .line 354
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->events_filter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    .line 356
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedAdmins:Landroidx/collection/LongSparseArray;

    if-eqz v0, :cond_5

    .line 357
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->flags:I

    const/4 v0, 0x0

    .line 358
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedAdmins:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 359
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->admins:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedAdmins:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 362
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->updateEmptyPlaceholder()V

    .line 363
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    if-eqz p1, :cond_6

    .line 421
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    if-eqz p1, :cond_6

    .line 422
    invoke-virtual {p1}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyDataSetChanged()V

    :cond_6
    return-void
.end method

.method private moveScrollToLastMessage()V
    .locals 4

    .line 2010
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2011
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const v2, -0x186a0

    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_0
    return-void
.end method

.method private processSelectedOption(I)V
    .locals 11

    .line 1613
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->closeMenu()V

    .line 1614
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v2, :cond_29

    const/16 v5, 0x1c

    const/16 v6, 0x17

    const/4 v7, 0x4

    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-eq p1, v7, :cond_21

    const/4 v9, 0x5

    if-eq p1, v9, :cond_16

    const/4 v9, 0x6

    const/16 v10, 0x1f4

    if-eq p1, v9, :cond_11

    const/4 v9, 0x7

    if-eq p1, v9, :cond_b

    const/16 v1, 0x21

    if-eq p1, v1, :cond_a

    const/16 v1, 0x22

    if-eq p1, v1, :cond_9

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_5

    .line 1803
    :pswitch_0
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 1804
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1805
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p1

    .line 1807
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1797
    :pswitch_1
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 1798
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->PhoneCopied:I

    const-string v1, "PhoneCopied"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_5

    .line 1789
    :pswitch_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1790
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    const-string v2, "user_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1791
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    const-string v1, "phone"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "addContact"

    .line 1792
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1793
    new-instance v0, Lorg/telegram/ui/ContactAddActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ContactAddActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_5

    .line 1784
    :pswitch_3
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    .line 1785
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/MessagesController;->saveGif(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_5

    .line 1761
    :pswitch_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v6, :cond_2

    if-le p1, v5, :cond_1

    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 1762
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v7}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 1763
    iput-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    return-void

    .line 1766
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object p1

    .line 1767
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1768
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 1770
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1771
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1772
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1773
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    move-object v0, v4

    :cond_4
    if-eqz v0, :cond_5

    .line 1777
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 1778
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1780
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v3, ""

    :goto_1
    invoke-static {v0, v1, v2, p1, v3}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1757
    :pswitch_5
    new-instance p1, Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p1

    move-object v7, p0

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5

    .line 1812
    :cond_9
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_channels_reportAntiSpamFalsePositive;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_channels_reportAntiSpamFalsePositive;-><init>()V

    .line 1813
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_reportAntiSpamFalsePositive;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1814
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result v0

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_reportAntiSpamFalsePositive;->msg_id:I

    .line 1815
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_5

    .line 1829
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$InputPeer;)V

    .line 1830
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz p1, :cond_2a

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 1831
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 1833
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createRemoveFromChatBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_5

    .line 1738
    :cond_b
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz p1, :cond_c

    .line 1739
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 1740
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1741
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    move-object p1, v4

    :cond_c
    if-eqz p1, :cond_d

    .line 1745
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 1746
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1748
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_10

    if-le v0, v5, :cond_f

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz v0, :cond_10

    :cond_f
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 1749
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v7}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 1750
    iput-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    return-void

    .line 1753
    :cond_10
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0, v1, v4, v4}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1708
    :cond_11
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz p1, :cond_12

    .line 1709
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 1710
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1711
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    move-object p1, v4

    :cond_12
    if-eqz p1, :cond_13

    .line 1715
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 1716
    :cond_13
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1718
    :cond_14
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1719
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1720
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const-string v5, "android.intent.extra.STREAM"

    if-lt v1, v2, :cond_15

    .line 1722
    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".provider"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v6}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1723
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1725
    :catch_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 1728
    :cond_15
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1731
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v1, "ShareFile"

    sget v2, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    .line 1646
    :cond_16
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_17

    .line 1647
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1648
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_3

    :cond_17
    move-object p1, v4

    :goto_3
    if-nez p1, :cond_18

    .line 1653
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    .line 1654
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18

    move-object p1, v0

    :cond_18
    if-eqz p1, :cond_2a

    .line 1659
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "attheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "OK"

    const-string v2, "AppName"

    if-eqz v0, :cond_1e

    .line 1660
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v5, -0x1

    if-eqz v0, :cond_1b

    .line 1661
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 1662
    iget-object v6, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v3

    if-ge v0, v6, :cond_1a

    .line 1663
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToPositionOnRecreate:I

    .line 1664
    iget-object v6, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v0, :cond_19

    .line 1666
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToOffsetOnRecreate:I

    goto :goto_4

    .line 1668
    :cond_19
    iput v5, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToPositionOnRecreate:I

    goto :goto_4

    .line 1671
    :cond_1a
    iput v5, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToPositionOnRecreate:I

    .line 1674
    :cond_1b
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeFile(Ljava/io/File;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_theme;Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 1676
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_5

    .line 1678
    :cond_1c
    iput v5, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToPositionOnRecreate:I

    .line 1679
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1d

    .line 1680
    iput-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    return-void

    .line 1683
    :cond_1d
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1684
    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1685
    sget v0, Lorg/telegram/messenger/R$string;->IncorrectTheme:I

    const-string v2, "IncorrectTheme"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1686
    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1687
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5

    .line 1690
    :cond_1e
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v0, p1, v3}, Lorg/telegram/messenger/LocaleController;->applyLanguageFile(Ljava/io/File;I)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 1691
    new-instance p1, Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {p1}, Lorg/telegram/ui/LanguageSelectActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_5

    .line 1693
    :cond_1f
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_20

    .line 1694
    iput-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    return-void

    .line 1697
    :cond_20
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1698
    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1699
    sget v0, Lorg/telegram/messenger/R$string;->IncorrectLocalization:I

    const-string v2, "IncorrectLocalization"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1700
    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1701
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5

    .line 1624
    :cond_21
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz p1, :cond_22

    .line 1625
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_22

    .line 1626
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1627
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_22

    move-object p1, v4

    :cond_22
    if-eqz p1, :cond_23

    .line 1631
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_24

    .line 1632
    :cond_23
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1634
    :cond_24
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v0, v2, :cond_25

    if-ne v0, v3, :cond_2a

    .line 1635
    :cond_25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_27

    if-le v0, v5, :cond_26

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz v0, :cond_27

    :cond_26
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_27

    .line 1636
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v7}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 1637
    iput-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    return-void

    .line 1640
    :cond_27
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget v5, v5, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v5, v2, :cond_28

    const/4 v1, 0x1

    :cond_28
    invoke-static {p1, v0, v1, v4, v4}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1619
    :cond_29
    invoke-direct {p0, v0, v1, v3}, Lorg/telegram/ui/ChannelAdminLogActivity;->getMessageContent(Lorg/telegram/messenger/MessageObject;IZ)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 1620
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->MessageCopied:I

    const-string v1, "MessageCopied"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1839
    :catch_2
    :cond_2a
    :goto_5
    iput-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showInviteLinkBottomSheet(Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvite;Ljava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvite;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .line 2979
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v6

    .line 2980
    new-instance v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_ExportedChatInvite;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-object v5, p1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v12

    const/4 v11, 0x0

    move-object v3, v0

    move-object v7, p2

    move-object v8, p0

    invoke-direct/range {v3 .. v12}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/HashMap;Lorg/telegram/ui/ActionBar/BaseFragment;JZZ)V

    .line 2981
    new-instance p1, Lorg/telegram/ui/ChannelAdminLogActivity$22;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$22;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->setInviteDelegate(Lorg/telegram/ui/Components/InviteLinkBottomSheet$InviteDelegate;)V

    .line 3053
    invoke-virtual {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->show()V

    return-void
.end method

.method private updateBottomOverlay()V
    .locals 0

    return-void
.end method

.method private updateEmptyPlaceholder()V
    .locals 5

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x5

    const/16 v2, 0x8

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->EventLogEmptyTextSearch:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchQuery:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "EventLogEmptyTextSearch"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 313
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedAdmins:Landroidx/collection/LongSparseArray;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 317
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->EventLogEmpty:I

    const-string v2, "EventLogEmpty"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 321
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->EventLogEmptyChannel:I

    const-string v2, "EventLogEmptyChannel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 314
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->EventLogEmptySearch:I

    const-string v2, "EventLogEmptySearch"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateMessagesVisiblePart()V
    .locals 26

    move-object/from16 v0, p0

    .line 2051
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v1, :cond_0

    return-void

    .line 2054
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2055
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    const v3, 0x7fffffff

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/high16 v12, 0x3f800000    # 1.0f

    if-ge v7, v1, :cond_c

    .line 2063
    iget-object v14, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v14, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2064
    instance-of v15, v14, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v15, :cond_3

    .line 2065
    move-object v15, v14

    check-cast v15, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 2066
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    .line 2067
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getBottom()I

    if-ltz v4, :cond_1

    const/16 v17, 0x0

    goto :goto_1

    :cond_1
    neg-int v13, v4

    move/from16 v17, v13

    .line 2069
    :goto_1
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v13

    if-le v13, v2, :cond_2

    add-int v13, v17, v2

    :cond_2
    sub-int v18, v13, v17

    .line 2073
    iget-object v13, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getHeightWithKeyboard()I

    move-result v13

    const/16 v16, 0x30

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    sub-int v13, v13, v16

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    sub-int v19, v13, v5

    const/16 v20, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v5, v13

    iget-object v13, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundTranslationY()I

    move-result v13

    int-to-float v13, v13

    sub-float v21, v5, v13

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v22

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundSizeY()I

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v16, v15

    invoke-virtual/range {v16 .. v25}, Lorg/telegram/ui/Cells/ChatMessageCell;->setVisiblePart(IIIFFIIII)V

    .line 2075
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    .line 2076
    iget-object v13, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v13, :cond_4

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v13

    invoke-virtual {v13, v5}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2077
    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    .line 2078
    iget-object v8, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v13

    invoke-virtual {v8, v13}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2079
    iget-object v8, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    add-int/2addr v13, v4

    int-to-float v4, v13

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v8, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2080
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 2081
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 v8, 0x1

    goto :goto_2

    .line 2084
    :cond_3
    instance-of v4, v14, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v4, :cond_4

    .line 2085
    move-object v4, v14

    check-cast v4, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 2086
    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v5, v13

    iget-object v13, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundTranslationY()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v5, v13

    iget-object v13, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundSizeY()I

    move-result v13

    invoke-virtual {v4, v5, v13}, Lorg/telegram/ui/Cells/ChatActionCell;->setVisiblePart(FI)V

    .line 2088
    :cond_4
    :goto_2
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    if-gt v4, v5, :cond_5

    goto :goto_3

    .line 2091
    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v4

    if-ge v4, v3, :cond_8

    .line 2094
    instance-of v3, v14, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v3, :cond_6

    instance-of v3, v14, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v3, :cond_7

    :cond_6
    move-object v9, v14

    :cond_7
    move v3, v4

    move-object v11, v14

    .line 2099
    :cond_8
    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    if-eqz v5, :cond_9

    invoke-virtual {v5, v14}, Landroidx/recyclerview/widget/ChatListItemAnimator;->willRemoved(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {v5, v14}, Landroidx/recyclerview/widget/ChatListItemAnimator;->willAddedFromAlpha(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 2100
    :cond_9
    instance-of v5, v14, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v5, :cond_b

    move-object v5, v14

    check-cast v5, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/messenger/MessageObject;->isDateObject:Z

    if-eqz v5, :cond_b

    .line 2101
    invoke-virtual {v14}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v12

    if-eqz v5, :cond_a

    .line 2102
    invoke-virtual {v14, v12}, Landroid/view/View;->setAlpha(F)V

    :cond_a
    if-ge v4, v6, :cond_b

    move v6, v4

    move-object v10, v14

    :cond_b
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 2111
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_e

    if-nez v8, :cond_d

    .line 2113
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x64

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2114
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 2115
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 2116
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->checkTextureViewPosition:Z

    if-eqz v1, :cond_e

    .line 2117
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->setCurrentVideoVisible(Z)V

    goto :goto_4

    .line 2120
    :cond_d
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->setCurrentVideoVisible(Z)V

    :cond_e
    :goto_4
    if-eqz v9, :cond_10

    .line 2125
    instance-of v1, v9, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_f

    .line 2126
    check-cast v9, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    goto :goto_5

    .line 2128
    :cond_f
    check-cast v9, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 2130
    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomDate(IZZ)V

    goto :goto_6

    :cond_10
    const/4 v3, 0x0

    .line 2132
    :goto_6
    iput-boolean v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFloatingDateOnScreen:Z

    .line 2133
    instance-of v1, v11, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v1, :cond_11

    instance-of v1, v11, Lorg/telegram/ui/Cells/ChatActionCell;

    if-nez v1, :cond_11

    const/4 v5, 0x1

    goto :goto_7

    :cond_11
    const/4 v5, 0x0

    :goto_7
    iput-boolean v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFloatingTopIsNotMessage:Z

    const/4 v1, 0x0

    if-eqz v10, :cond_1a

    .line 2135
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    if-gt v2, v3, :cond_17

    iget-boolean v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFloatingTopIsNotMessage:Z

    if-eqz v2, :cond_12

    goto :goto_8

    .line 2141
    :cond_12
    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_13

    .line 2142
    invoke-virtual {v10, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2144
    :cond_13
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_14

    .line 2145
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v2, 0x0

    .line 2146
    iput-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    .line 2148
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_15

    .line 2149
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 2151
    :cond_15
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v12

    if-eqz v2, :cond_16

    .line 2152
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_16
    const/4 v2, 0x1

    .line 2154
    iput-boolean v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFloatingDateOnScreen:Z

    goto :goto_9

    .line 2136
    :cond_17
    :goto_8
    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v12

    if-eqz v2, :cond_18

    .line 2137
    invoke-virtual {v10, v12}, Landroid/view/View;->setAlpha(F)V

    .line 2139
    :cond_18
    iget-boolean v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFloatingTopIsNotMessage:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-direct {v0, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->hideFloatingDateView(Z)V

    .line 2156
    :goto_9
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2157
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    if-le v2, v3, :cond_19

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_19

    .line 2158
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_a

    .line 2160
    :cond_19
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_a

    :cond_1a
    const/4 v2, 0x1

    .line 2163
    invoke-direct {v0, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->hideFloatingDateView(Z)V

    .line 2164
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :goto_a
    return-void
.end method

.method private updateTextureViewPosition()V
    .locals 7

    .line 2017
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 2019
    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2020
    instance-of v5, v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v5, :cond_0

    .line 2021
    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 2022
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    .line 2023
    iget-object v6, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2024
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    .line 2025
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2026
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    add-int/2addr v5, v4

    int-to-float v4, v5

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v0

    add-float/2addr v4, v0

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2027
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2028
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2034
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    .line 2035
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-nez v0, :cond_3

    .line 2037
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x64

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2038
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    if-eqz v2, :cond_4

    .line 2039
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2040
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->checkTextureViewPosition:Z

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/ui/Components/PipRoundVideoView;->getInstance()Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2041
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->setCurrentVideoVisible(Z)V

    goto :goto_2

    .line 2045
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaController;->setCurrentVideoVisible(Z)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 529
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatMessageCellsCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v2, v4, :cond_0

    .line 531
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatMessageCellsCache:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    :cond_0
    iput-boolean v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchWas:Z

    const/4 v2, 0x1

    .line 536
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    .line 538
    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 540
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 541
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 542
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v5, v3}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/ChannelAdminLogActivity$3;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$3;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 552
    new-instance v4, Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v3}, Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    iput-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    .line 553
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    xor-int/2addr v6, v2

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setOccupyStatusBar(Z)V

    .line 554
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v6, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/4 v7, -0x2

    const/4 v8, -0x1

    const/16 v9, 0x33

    const/16 v10, 0x38

    const/4 v11, 0x0

    const/16 v12, 0x28

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 556
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v4

    .line 557
    sget v6, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v4, v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ChannelAdminLogActivity$4;

    invoke-direct {v6, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$4;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 588
    sget v6, Lorg/telegram/messenger/R$string;->Search:I

    const-string v7, "Search"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 592
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object v6, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    sget v6, Lorg/telegram/messenger/R$string;->EventLogAllEvents:I

    const-string v7, "EventLogAllEvents"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object v6, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setChatAvatar(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 596
    new-instance v4, Lorg/telegram/ui/ChannelAdminLogActivity$5;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity$5;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 735
    check-cast v4, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 737
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    xor-int/2addr v6, v2

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setOccupyStatusBar(Z)V

    .line 738
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isWallpaperMotion()Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 740
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    const/4 v6, 0x4

    .line 741
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 742
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/16 v10, 0x11

    invoke-static {v8, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v7, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    sget-object v7, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda5;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 745
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    .line 746
    invoke-virtual {v4, v2, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 747
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 748
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    const-string v7, "chat_serviceText"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 749
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    const/4 v11, 0x6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    iget-object v13, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v11, v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->createServiceDrawable(ILandroid/view/View;Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 750
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    const/16 v11, 0x10

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v4, v12, v13, v14, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 751
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/16 v14, 0x11

    const/16 v15, 0x10

    const/16 v16, 0x0

    const/16 v17, 0x10

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    new-instance v4, Lorg/telegram/ui/ChannelAdminLogActivity$6;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity$6;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 870
    new-instance v11, Lorg/telegram/ui/ChannelAdminLogActivity$7;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$7;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 876
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 877
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 878
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v11, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-direct {v11, v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 879
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 880
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    const/4 v12, 0x3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-virtual {v4, v3, v11, v3, v13}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 881
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v11, Lorg/telegram/ui/ChannelAdminLogActivity$8;

    iget-object v13, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v11, v0, v5, v13, v5}, Lorg/telegram/ui/ChannelAdminLogActivity$8;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v11, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {v4, v11}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 916
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/ChatListItemAnimator;->setReversePositions(Z)V

    .line 917
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 918
    new-instance v4, Lorg/telegram/ui/ChannelAdminLogActivity$9;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity$9;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 931
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 932
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 933
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v11, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4, v11}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 934
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v8, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v4, v11, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 935
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v11, Lorg/telegram/ui/ChannelAdminLogActivity$10;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$10;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 979
    iget v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToPositionOnRecreate:I

    if-eq v4, v8, :cond_2

    .line 980
    iget-object v11, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v13, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToOffsetOnRecreate:I

    invoke-virtual {v11, v4, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 981
    iput v8, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToPositionOnRecreate:I

    .line 984
    :cond_2
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView:Landroid/widget/FrameLayout;

    .line 985
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 986
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v13, 0x33

    invoke-static {v8, v8, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v4, v11, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 988
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView2:Landroid/view/View;

    const/16 v11, 0x12

    .line 989
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    iget-object v14, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView2:Landroid/view/View;

    iget-object v15, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v11, v14, v15}, Lorg/telegram/ui/ActionBar/Theme;->createServiceDrawable(ILandroid/view/View;Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 990
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView:Landroid/widget/FrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView2:Landroid/view/View;

    const/16 v14, 0x24

    invoke-static {v14, v14, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v4, v11, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 992
    new-instance v4, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v11, 0x1c

    .line 993
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 994
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 995
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView:Landroid/widget/FrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v11, 0x20

    invoke-static {v11, v11, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v7, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 997
    new-instance v4, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v7, 0x0

    .line 998
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 999
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 1000
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v14, -0x2

    const/4 v15, -0x2

    const/16 v16, 0x31

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v7, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1002
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1004
    new-instance v4, Lorg/telegram/ui/ChannelAdminLogActivity$11;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity$11;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    .line 1013
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1014
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v4, v3, v7, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1015
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    const/16 v11, 0x50

    invoke-static {v8, v13, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v4, v7, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1016
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    new-instance v7, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1035
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChatText:Landroid/widget/TextView;

    const/high16 v7, 0x41700000    # 15.0f

    .line 1036
    invoke-virtual {v4, v2, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1037
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChatText:Landroid/widget/TextView;

    const-string v7, "fonts/rmedium.ttf"

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1038
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChatText:Landroid/widget/TextView;

    const-string v14, "chat_fieldOverlayText"

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1039
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChatText:Landroid/widget/TextView;

    sget v15, Lorg/telegram/messenger/R$string;->SETTINGS:I

    const-string v5, "SETTINGS"

    invoke-static {v5, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChatText:Landroid/widget/TextView;

    invoke-static {v9, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1042
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayImage:Landroid/widget/ImageView;

    .line 1043
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_help:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1044
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayImage:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1045
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayImage:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1046
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayImage:Landroid/widget/ImageView;

    const/16 v17, 0x30

    const/16 v18, 0x30

    const/16 v19, 0x35

    const/16 v20, 0x3

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1047
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayImage:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$string;->BotHelp:I

    const-string v9, "BotHelp"

    invoke-static {v9, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1048
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayImage:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1060
    new-instance v4, Lorg/telegram/ui/ChannelAdminLogActivity$12;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity$12;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchContainer:Landroid/widget/FrameLayout;

    .line 1069
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1070
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1071
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1072
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 1073
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1074
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchContainer:Landroid/widget/FrameLayout;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v4, v3, v5, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1075
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchContainer:Landroid/widget/FrameLayout;

    invoke-static {v8, v13, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1101
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchCalendarButton:Landroid/widget/ImageView;

    .line 1102
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1103
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchCalendarButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_calendar:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1104
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchCalendarButton:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const-string v6, "chat_searchPanelIcons"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1105
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchCalendarButton:Landroid/widget/ImageView;

    const/16 v6, 0x35

    const/16 v8, 0x30

    invoke-static {v8, v8, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1106
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchCalendarButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1114
    new-instance v4, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v5, "chat_searchPanelText"

    .line 1115
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1116
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1117
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1118
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/16 v8, 0x13

    const/16 v9, 0x6c

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1120
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->updateRows()V

    .line 1121
    iget-boolean v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->loading:Z

    const v5, 0x3e99999a    # 0.3f

    if-eqz v4, :cond_3

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1122
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-static {v3, v2, v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1123
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_2

    .line 1125
    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-static {v4, v3, v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1126
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1128
    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 1130
    new-instance v2, Lorg/telegram/ui/Components/UndoView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    .line 1131
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/UndoView;->setAdditionalTranslationY(F)V

    .line 1132
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x53

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/16 v9, 0x8

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1134
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->updateEmptyPlaceholder()V

    .line 1136
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 6

    .line 428
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 429
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_e

    .line 430
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    goto/16 :goto_8

    .line 432
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_5

    .line 433
    aget-object p1, p3, v2

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 435
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 436
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-direct {p0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->createTextureView(Z)Landroid/view/TextureView;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2, p3, v3, v1}, Lorg/telegram/messenger/MediaController;->setTextureView(Landroid/view/TextureView;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/FrameLayout;Z)V

    .line 437
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->updateTextureViewPosition()V

    .line 440
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_e

    .line 441
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_e

    .line 443
    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 444
    instance-of v3, p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_4

    .line 445
    check-cast p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 446
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 448
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 450
    :cond_2
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 451
    invoke-virtual {p3, v2, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->checkVideoPlayback(ZLandroid/graphics/Bitmap;)V

    .line 452
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 453
    iget v4, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    .line 454
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->resetPlayingProgress()V

    .line 455
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    goto :goto_2

    .line 449
    :cond_3
    :goto_1
    invoke-virtual {p3, v2, v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->updateButtonState(ZZZ)V

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 463
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-eq p1, p2, :cond_a

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, p2, :cond_6

    goto/16 :goto_4

    .line 483
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    if-ne p1, p2, :cond_8

    .line 484
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Integer;

    .line 485
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p2, :cond_e

    .line 486
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_3
    if-ge v2, p2, :cond_e

    .line 488
    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 489
    instance-of v0, p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_7

    .line 490
    check-cast p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 491
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 492
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_7

    .line 493
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 495
    iget p2, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iput p2, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 496
    iget p2, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    iput p2, v0, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 497
    iget p1, p1, Lorg/telegram/messenger/MessageObject;->audioPlayerDuration:I

    iput p1, v0, Lorg/telegram/messenger/MessageObject;->audioPlayerDuration:I

    .line 498
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->updatePlayingMessageProgress()V

    goto/16 :goto_8

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 505
    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    if-ne p1, p2, :cond_e

    .line 506
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_e

    .line 507
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isWallpaperMotion()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 508
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView2:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 509
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 510
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    .line 512
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    goto :goto_8

    .line 464
    :cond_a
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_e

    .line 465
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_5
    if-ge p2, p1, :cond_e

    .line 467
    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 468
    instance-of v3, p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_d

    .line 469
    check-cast p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 470
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 472
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_6

    .line 474
    :cond_b
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 475
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 476
    invoke-virtual {p3, v1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->checkVideoPlayback(ZLandroid/graphics/Bitmap;)V

    goto :goto_7

    .line 473
    :cond_c
    :goto_6
    invoke-virtual {p3, v2, v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->updateButtonState(ZZZ)V

    :cond_d
    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_e
    :goto_8
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3058
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3060
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "chat_wallpaper"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3062
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "actionBarDefault"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3063
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v9, 0x0

    const-string v10, "actionBarDefault"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3064
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v18, "actionBarDefaultIcon"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3065
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v10, "actionBarDefaultSelector"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3066
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const-string v18, "actionBarDefaultSubmenuBackground"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3067
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const-string v10, "actionBarDefaultSubmenuItem"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3068
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v13, v3, v4

    const-string v18, "actionBarDefaultSubmenuItemIcon"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3070
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v10, "actionBarDefault"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3071
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v18, "actionBarDefault"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3072
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v10, "actionBarDefaultIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3073
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v12

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v18, "actionBarDefaultTitle"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3074
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v12, 0x2

    new-array v7, v12, [Landroid/graphics/Paint;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_statusPaint:Landroid/graphics/Paint;

    const/4 v13, 0x0

    aput-object v3, v7, v13

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    const/4 v14, 0x1

    aput-object v3, v7, v14

    const-string v10, "actionBarDefaultSubtitle"

    const/4 v11, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3075
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "actionBarDefaultSelector"

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3077
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v14, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v3, v7, v13

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v10, 0x0

    const-string v11, "avatar_text"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3078
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const/16 v17, 0x0

    const-string v22, "avatar_backgroundRed"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3079
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v30, "avatar_backgroundOrange"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3080
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "avatar_backgroundViolet"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3081
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "avatar_backgroundGreen"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3082
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "avatar_backgroundCyan"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3083
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "avatar_backgroundBlue"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3084
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "avatar_backgroundPink"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3085
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "avatar_nameInMessageRed"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3086
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "avatar_nameInMessageOrange"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3087
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "avatar_nameInMessageViolet"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3088
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "avatar_nameInMessageGreen"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3089
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "avatar_nameInMessageCyan"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3090
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "avatar_nameInMessageBlue"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3091
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "avatar_nameInMessagePink"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3092
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v14

    const-string v22, "chat_inBubble"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3093
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v14

    const-string v30, "chat_inBubbleSelected"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3094
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v20

    const-string v22, "chat_inBubbleShadow"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3095
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v28

    const-string v30, "chat_inBubbleShadow"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3096
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v20

    const-string v22, "chat_outBubbleShadow"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3097
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v28

    const-string v30, "chat_outBubbleShadow"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3098
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v14

    const-string v22, "chat_outBubble"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3099
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v14

    const-string v30, "chat_outBubbleGradient"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3100
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v14

    const-string v22, "chat_outBubbleGradient2"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3101
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v14

    const-string v30, "chat_outBubbleGradient3"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3102
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v14

    const-string v22, "chat_outBubbleSelected"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3103
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatActionCell;

    aput-object v5, v4, v13

    sget-object v27, Lorg/telegram/ui/ActionBar/Theme;->chat_actionTextPaint:Landroid/text/TextPaint;

    const/16 v28, 0x0

    const-string v30, "chat_serviceText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3104
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatActionCell;

    aput-object v5, v4, v13

    sget-object v19, Lorg/telegram/ui/ActionBar/Theme;->chat_actionTextPaint:Landroid/text/TextPaint;

    const/16 v20, 0x0

    const-string v22, "chat_serviceLink"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3106
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const/4 v5, 0x6

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_botCardDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_shareIconDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v14

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_botInlineDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v12

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_botLinkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x3

    aput-object v6, v5, v7

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_goIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x4

    aput-object v6, v5, v8

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_commentStickerDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x5

    aput-object v6, v5, v9

    const/16 v25, 0x0

    const/16 v27, 0x0

    const-string v30, "chat_serviceIcon"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3108
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-class v5, Lorg/telegram/ui/Cells/ChatActionCell;

    aput-object v5, v4, v14

    const/16 v17, 0x0

    const/16 v19, 0x0

    const-string v22, "chat_serviceBackground"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3109
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-class v5, Lorg/telegram/ui/Cells/ChatActionCell;

    aput-object v5, v4, v14

    const/16 v28, 0x0

    const-string v30, "chat_serviceBackgroundSelected"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3110
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_messageTextIn"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3111
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_messageTextOut"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3112
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_messageLinkIn"

    const/16 v23, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3113
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const/16 v30, 0x0

    const-string v31, "chat_messageLinkOut"

    const/16 v32, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3114
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    const/16 v17, 0x0

    const-string v22, "chat_outSentCheck"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3115
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    const/16 v25, 0x0

    const/16 v27, 0x0

    const-string v30, "chat_outSentCheckSelected"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3116
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckReadDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutHalfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v14

    const-string v22, "chat_outSentCheckRead"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3117
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckReadSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutHalfCheckSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v14

    const-string v30, "chat_outSentCheckReadSelected"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3118
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaHalfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v14

    const-string v22, "chat_mediaSentCheck"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3119
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v7, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutViewsDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutRepliesDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v14

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutPinnedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v12

    const-string v30, "chat_outViews"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3120
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v7, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutViewsSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutRepliesSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v14

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutPinnedSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v12

    const-string v22, "chat_outViewsSelected"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3121
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v7, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInViewsDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInRepliesDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v14

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInPinnedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v12

    const-string v30, "chat_inViews"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3122
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v7, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInViewsSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInRepliesSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v14

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInPinnedSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v12

    const-string v22, "chat_inViewsSelected"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3123
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v7, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaViewsDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaRepliesDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v14

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaPinnedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v12

    const-string v30, "chat_mediaViews"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3124
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMenuDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    const-string v22, "chat_outMenu"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3125
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMenuSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    const-string v30, "chat_outMenuSelected"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3126
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMenuDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    const-string v22, "chat_inMenu"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3127
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMenuSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    const-string v30, "chat_inMenuSelected"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3128
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaMenuDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    const-string v22, "chat_mediaMenu"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3129
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutInstantDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    const-string v30, "chat_outInstant"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3130
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v7, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInInstantDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_commentDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v14

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_commentArrowDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v12

    const-string v22, "chat_inInstant"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3131
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    sget-object v28, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCallDrawable:[Landroid/graphics/drawable/Drawable;

    const-string v30, "chat_outInstant"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3132
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCallSelectedDrawable:[Landroid/graphics/drawable/Drawable;

    const-string v22, "chat_outInstantSelected"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3133
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    sget-object v28, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInCallDrawable:[Landroid/graphics/drawable/Drawable;

    const-string v30, "chat_inInstant"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3134
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInCallSelectedDrawable:[Landroid/graphics/drawable/Drawable;

    const-string v22, "chat_inInstantSelected"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3135
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgCallUpGreenDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    const-string v30, "chat_outUpCall"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3136
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgCallDownRedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    const-string v22, "chat_inUpCall"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3137
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgCallDownGreenDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    const-string v30, "chat_inDownCall"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3138
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    sget-object v19, Lorg/telegram/ui/ActionBar/Theme;->chat_msgErrorPaint:Landroid/graphics/Paint;

    const/16 v20, 0x0

    const-string v22, "chat_sentError"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3139
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgErrorDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v13

    const-string v30, "chat_sentErrorIcon"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3140
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    sget-object v19, Lorg/telegram/ui/ActionBar/Theme;->chat_durationPaint:Landroid/text/TextPaint;

    const-string v22, "chat_previewDurationText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3141
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    sget-object v27, Lorg/telegram/ui/ActionBar/Theme;->chat_gamePaint:Landroid/text/TextPaint;

    const/16 v28, 0x0

    const-string v30, "chat_previewGameText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3142
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const/16 v19, 0x0

    const-string v22, "chat_inPreviewInstantText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3143
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const/16 v27, 0x0

    const-string v30, "chat_outPreviewInstantText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3144
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inPreviewInstantSelectedText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3145
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outPreviewInstantSelectedText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3146
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    sget-object v19, Lorg/telegram/ui/ActionBar/Theme;->chat_deleteProgressPaint:Landroid/graphics/Paint;

    const-string v22, "chat_secretTimeText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3147
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_stickerNameText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3148
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    sget-object v19, Lorg/telegram/ui/ActionBar/Theme;->chat_botButtonPaint:Landroid/text/TextPaint;

    const-string v22, "chat_botButtonText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3149
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    sget-object v27, Lorg/telegram/ui/ActionBar/Theme;->chat_botProgressPaint:Landroid/graphics/Paint;

    const-string v30, "chat_botProgress"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3150
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const/16 v19, 0x0

    const-string v22, "chat_inForwardedNameText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3151
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const/16 v27, 0x0

    const-string v30, "chat_outForwardedNameText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3152
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inViaBotNameText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3153
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outViaBotNameText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3154
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_stickerViaBotNameText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3155
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_inReplyLine"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3156
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_outReplyLine"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3157
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_stickerReplyLine"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3158
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inReplyNameText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3159
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outReplyNameText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3160
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_stickerReplyNameText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3161
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_inReplyMessageText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3162
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_outReplyMessageText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3163
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_inReplyMediaMessageText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3164
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_outReplyMediaMessageText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3165
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_inReplyMediaMessageSelectedText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3166
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_outReplyMediaMessageSelectedText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3167
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_stickerReplyMessageText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3168
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inPreviewLine"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3169
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outPreviewLine"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3170
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inSiteNameText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3171
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outSiteNameText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3172
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inContactNameText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3173
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outContactNameText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3174
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inContactPhoneText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3175
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outContactPhoneText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3176
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_mediaProgress"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3177
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_inAudioProgress"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3178
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_outAudioProgress"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3179
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_inAudioSelectedProgress"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3180
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_outAudioSelectedProgress"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3181
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_mediaTimeText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3182
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inTimeText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3183
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outTimeText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3184
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inTimeSelectedText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3185
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outTimeSelectedText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3186
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inAudioPerfomerText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3187
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outAudioPerfomerText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3188
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inAudioTitleText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3189
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outAudioTitleText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3190
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inAudioDurationText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3191
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outAudioDurationText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3192
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inAudioDurationSelectedText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3193
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outAudioDurationSelectedText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3194
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inAudioSeekbar"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3195
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outAudioSeekbar"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3196
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inAudioSeekbarSelected"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3197
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outAudioSeekbarSelected"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3198
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inAudioSeekbarFill"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3199
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_inAudioCacheSeekbar"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3200
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_outAudioSeekbarFill"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3201
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outAudioCacheSeekbar"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3202
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inVoiceSeekbar"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3203
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outVoiceSeekbar"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3204
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inVoiceSeekbarSelected"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3205
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outVoiceSeekbarSelected"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3206
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inVoiceSeekbarFill"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3207
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outVoiceSeekbarFill"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3208
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inFileProgress"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3209
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outFileProgress"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3210
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inFileProgressSelected"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3211
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outFileProgressSelected"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3212
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inFileNameText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3213
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outFileNameText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3214
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inFileInfoText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3215
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outFileInfoText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3216
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inFileInfoSelectedText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3217
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outFileInfoSelectedText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3218
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inFileBackground"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3219
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outFileBackground"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3220
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inFileBackgroundSelected"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3221
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outFileBackgroundSelected"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3222
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inVenueInfoText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3223
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outVenueInfoText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3224
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inVenueInfoSelectedText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3225
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outVenueInfoSelectedText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3226
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_mediaInfoText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3227
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    sget-object v27, Lorg/telegram/ui/ActionBar/Theme;->chat_urlPaint:Landroid/graphics/Paint;

    const-string v30, "chat_linkSelectBackground"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3228
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    sget-object v19, Lorg/telegram/ui/ActionBar/Theme;->chat_textSearchSelectionPaint:Landroid/graphics/Paint;

    const-string v22, "chat_textSelectBackground"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3229
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const/16 v27, 0x0

    const-string v30, "chat_outLoader"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3230
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const/16 v19, 0x0

    const-string v22, "chat_outMediaIcon"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3231
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_outLoaderSelected"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3232
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_outMediaIconSelected"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3233
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_inLoader"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3234
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inMediaIcon"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3235
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v30, "chat_inLoaderSelected"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3236
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const-string v22, "chat_inMediaIconSelected"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3237
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v8, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_photoStatesDrawables:[[Landroid/graphics/drawable/Drawable;

    aget-object v9, v6, v13

    aget-object v9, v9, v13

    aput-object v9, v5, v13

    aget-object v9, v6, v14

    aget-object v9, v9, v13

    aput-object v9, v5, v14

    aget-object v9, v6, v12

    aget-object v9, v9, v13

    aput-object v9, v5, v12

    aget-object v6, v6, v7

    aget-object v6, v6, v13

    aput-object v6, v5, v7

    const-string v30, "chat_mediaLoaderPhoto"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3238
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v8, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_photoStatesDrawables:[[Landroid/graphics/drawable/Drawable;

    aget-object v9, v6, v13

    aget-object v9, v9, v13

    aput-object v9, v5, v13

    aget-object v9, v6, v14

    aget-object v9, v9, v13

    aput-object v9, v5, v14

    aget-object v9, v6, v12

    aget-object v9, v9, v13

    aput-object v9, v5, v12

    aget-object v6, v6, v7

    aget-object v6, v6, v13

    aput-object v6, v5, v7

    const-string v22, "chat_mediaLoaderPhotoIcon"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3239
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v8, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_photoStatesDrawables:[[Landroid/graphics/drawable/Drawable;

    aget-object v9, v6, v13

    aget-object v9, v9, v14

    aput-object v9, v5, v13

    aget-object v9, v6, v14

    aget-object v9, v9, v14

    aput-object v9, v5, v14

    aget-object v9, v6, v12

    aget-object v9, v9, v14

    aput-object v9, v5, v12

    aget-object v6, v6, v7

    aget-object v6, v6, v14

    aput-object v6, v5, v7

    const-string v30, "chat_mediaLoaderPhotoSelected"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3240
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v8, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_photoStatesDrawables:[[Landroid/graphics/drawable/Drawable;

    aget-object v8, v6, v13

    aget-object v8, v8, v14

    aput-object v8, v5, v13

    aget-object v8, v6, v14

    aget-object v8, v8, v14

    aput-object v8, v5, v14

    aget-object v8, v6, v12

    aget-object v8, v8, v14

    aput-object v8, v5, v12

    aget-object v6, v6, v7

    aget-object v6, v6, v14

    aput-object v6, v5, v7

    const-string v22, "chat_mediaLoaderPhotoIconSelected"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3241
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_photoStatesDrawables:[[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x7

    aget-object v8, v6, v7

    aget-object v8, v8, v13

    aput-object v8, v5, v13

    const/16 v8, 0x8

    aget-object v6, v6, v8

    aget-object v6, v6, v13

    aput-object v6, v5, v14

    const-string v30, "chat_outLoaderPhoto"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3242
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_photoStatesDrawables:[[Landroid/graphics/drawable/Drawable;

    aget-object v9, v6, v7

    aget-object v9, v9, v13

    aput-object v9, v5, v13

    aget-object v6, v6, v8

    aget-object v6, v6, v13

    aput-object v6, v5, v14

    const-string v22, "chat_outLoaderPhotoIcon"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3243
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_photoStatesDrawables:[[Landroid/graphics/drawable/Drawable;

    aget-object v9, v6, v7

    aget-object v9, v9, v14

    aput-object v9, v5, v13

    aget-object v6, v6, v8

    aget-object v6, v6, v14

    aput-object v6, v5, v14

    const-string v30, "chat_outLoaderPhotoSelected"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3244
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_photoStatesDrawables:[[Landroid/graphics/drawable/Drawable;

    aget-object v7, v6, v7

    aget-object v7, v7, v14

    aput-object v7, v5, v13

    aget-object v6, v6, v8

    aget-object v6, v6, v14

    aput-object v6, v5, v14

    const-string v22, "chat_outLoaderPhotoIconSelected"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3245
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_photoStatesDrawables:[[Landroid/graphics/drawable/Drawable;

    const/16 v7, 0xa

    aget-object v8, v6, v7

    aget-object v8, v8, v13

    aput-object v8, v5, v13

    const/16 v8, 0xb

    aget-object v6, v6, v8

    aget-object v6, v6, v13

    aput-object v6, v5, v14

    const-string v30, "chat_inLoaderPhoto"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3246
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_photoStatesDrawables:[[Landroid/graphics/drawable/Drawable;

    aget-object v9, v6, v7

    aget-object v9, v9, v13

    aput-object v9, v5, v13

    aget-object v6, v6, v8

    aget-object v6, v6, v13

    aput-object v6, v5, v14

    const-string v22, "chat_inLoaderPhotoIcon"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3247
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_photoStatesDrawables:[[Landroid/graphics/drawable/Drawable;

    aget-object v9, v6, v7

    aget-object v9, v9, v14

    aput-object v9, v5, v13

    aget-object v6, v6, v8

    aget-object v6, v6, v14

    aput-object v6, v5, v14

    const-string v30, "chat_inLoaderPhotoSelected"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3248
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_photoStatesDrawables:[[Landroid/graphics/drawable/Drawable;

    aget-object v7, v6, v7

    aget-object v7, v7, v14

    aput-object v7, v5, v13

    aget-object v6, v6, v8

    aget-object v6, v6, v14

    aput-object v6, v5, v14

    const-string v22, "chat_inLoaderPhotoIconSelected"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3249
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_contactDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v13

    aput-object v6, v5, v13

    const-string v30, "chat_inContactBackground"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3250
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_contactDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v13

    aput-object v6, v5, v13

    const-string v22, "chat_inContactIcon"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3251
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_contactDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v14

    aput-object v6, v5, v13

    const-string v30, "chat_outContactBackground"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3252
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_contactDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v14

    aput-object v6, v5, v13

    const-string v22, "chat_outContactIcon"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3253
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const/16 v25, 0x0

    const/16 v28, 0x0

    const-string v30, "chat_inLocationBackground"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3254
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v8, v14, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v3, v8, v13

    new-array v10, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_locationDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v13

    aput-object v3, v10, v13

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v12, "chat_inLocationIcon"

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3255
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    const/16 v20, 0x0

    const-string v22, "chat_outLocationBackground"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3256
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v8, v14, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v3, v8, v13

    new-array v10, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_locationDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v14

    aput-object v3, v10, v13

    const-string v12, "chat_outLocationIcon"

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3258
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    sget-object v19, Lorg/telegram/ui/ActionBar/Theme;->chat_composeBackgroundPaint:Landroid/graphics/Paint;

    const/16 v18, 0x0

    const-string v22, "chat_messagePanelBackground"

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3259
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    new-array v9, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v3, v9, v13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v11, "chat_messagePanelShadow"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3261
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChatText:Landroid/widget/TextView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v19, 0x0

    const-string v22, "chat_fieldOverlayText"

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3263
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v9, 0x0

    const-string v11, "chat_serviceText"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3265
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const-string v22, "chat_serviceText"

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3267
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    new-array v7, v14, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ChatUnreadCell;

    aput-object v3, v7, v13

    const-string v3, "backgroundLayout"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    const-string v12, "chat_unreadMessagesStartBackground"

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3268
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatUnreadCell;

    aput-object v5, v4, v13

    const-string v5, "imageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const/16 v22, 0x0

    const-string v23, "chat_unreadMessagesStartArrowIcon"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3269
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatUnreadCell;

    aput-object v5, v4, v13

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-string v32, "chat_unreadMessagesStartText"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3271
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView2:Landroid/view/View;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SERVICEBACKGROUND:I

    const/4 v8, 0x0

    const-string v12, "chat_serviceBackground"

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3272
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SERVICEBACKGROUND:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v22, "chat_serviceBackground"

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3274
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/4 v12, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getTimeItem()Landroid/widget/ImageView;

    move-result-object v3

    move-object v5, v3

    goto :goto_0

    :cond_0
    move-object v5, v12

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "chat_secretTimerBackground"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3275
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getTimeItem()Landroid/widget/ImageView;

    move-result-object v12

    :cond_1
    move-object/from16 v16, v12

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "chat_secretTimerText"

    move-object v15, v2

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3277
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "undo_background"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3278
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v13

    const-string v5, "undoImageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const/16 v22, 0x0

    const-string v23, "undo_cancelColor"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3279
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/16 v26, 0x0

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v13

    const-string v5, "undoTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-string v32, "undo_cancelColor"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3280
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v13

    const-string v5, "infoTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const-string v23, "undo_infoColor"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3281
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v13

    const-string v5, "textPaint"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    const-string v32, "undo_infoColor"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3282
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v13

    const-string v5, "progressPaint"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const-string v23, "undo_infoColor"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3283
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v13

    const-string v5, "leftImageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    const-string v32, "undo_infoColor"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onBecomeFullyHidden()V
    .locals 3

    .line 2220
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2221
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 2241
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    instance-of v0, p1, Landroid/app/DatePickerDialog;

    if-eqz v0, :cond_0

    .line 2242
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 274
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 275
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 276
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 277
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 278
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 279
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 280
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x1

    .line 281
    invoke-direct {p0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->loadMessages(Z)V

    .line 282
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->loadAdmins()V

    .line 284
    new-instance v1, Lorg/telegram/ui/ChannelAdminLogActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$2;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-static {p0, v1}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 296
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 297
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 298
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 299
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 300
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 301
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 302
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 303
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->allowAnimationIndex:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 2204
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 2205
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_0

    .line 2206
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onPause()V

    .line 2208
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 2209
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 2211
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->paused:Z

    .line 2212
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->wasPaused:Z

    .line 2213
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer;->hasVisibleInstance()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2214
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer;->getInstance()Lorg/telegram/ui/AvatarPreviewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/AvatarPreviewer;->close()V

    :cond_2
    return-void
.end method

.method public onRemoveFromParent()V
    .locals 4

    .line 1959
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->videoTextureView:Landroid/view/TextureView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Lorg/telegram/messenger/MediaController;->setTextureView(Landroid/view/TextureView;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/FrameLayout;Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 2187
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 2189
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_0

    .line 2190
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onResume()V

    :cond_0
    const/4 v0, 0x0

    .line 2192
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->paused:Z

    .line 2193
    invoke-direct {p0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->checkScrollForLoad(Z)V

    .line 2194
    iget-boolean v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->wasPaused:Z

    if-eqz v1, :cond_1

    .line 2195
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->wasPaused:Z

    .line 2196
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    if-eqz v0, :cond_1

    .line 2197
    invoke-virtual {v0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2180
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->allowAnimationIndex:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2171
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->allowAnimationIndex:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lorg/telegram/messenger/NotificationCenter;->botKeyboardDidLoad:I

    aput v2, v0, v1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->allowAnimationIndex:I

    :cond_0
    return-void
.end method

.method public openVCard(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 2227
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getSharingDirectory()Ljava/io/File;

    move-result-object v0

    .line 2228
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2229
    new-instance v6, Ljava/io/File;

    const-string v1, "vcard.vcf"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2230
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 2231
    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2232
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 2233
    new-instance p2, Lorg/telegram/ui/Components/PhonebookShareAlert;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v4, p1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Components/PhonebookShareAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/tgnet/TLRPC$User;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2235
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public showOpenUrlAlert(Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 2282
    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->isInternalUrl(Ljava/lang/String;[Z)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2285
    :cond_0
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2286
    sget v1, Lorg/telegram/messenger/R$string;->OpenUrlTitle:I

    const-string v3, "OpenUrlTitle"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2287
    sget v1, Lorg/telegram/messenger/R$string;->OpenUrlAlert2:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "OpenUrlAlert2"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2288
    sget v1, Lorg/telegram/messenger/R$string;->Open:I

    const-string v2, "Open"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2289
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v1, "Cancel"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2290
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_1

    .line 2283
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method
