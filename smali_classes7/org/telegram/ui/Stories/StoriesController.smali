.class public Lorg/telegram/ui/Stories/StoriesController;
.super Ljava/lang/Object;
.source "StoriesController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StoriesController$StoryLimit;,
        Lorg/telegram/ui/Stories/StoriesController$StoriesList;,
        Lorg/telegram/ui/Stories/StoriesController$UploadingStory;
    }
.end annotation


# static fields
.field public static final storiesComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/telegram/tgnet/TLRPC$StoryItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field allStoriesLoading:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private allStoriesMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$TL_userStories;",
            ">;"
        }
    .end annotation
.end field

.field private blockedOverride:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public blocklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blocklistCount:I

.field public blocklistFull:Z

.field private blocklistLoading:Z

.field private blocklistLoadingReset:Z

.field private blocklistReqId:I

.field private final currentAccount:I

.field public dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

.field private dialogListStories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_userStories;",
            ">;"
        }
    .end annotation
.end field

.field private final draftsController:Lorg/telegram/ui/Stories/recorder/DraftsController;

.field private final editingStories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/ui/Stories/StoriesController$UploadingStory;",
            ">;"
        }
    .end annotation
.end field

.field private firstLoad:Z

.field hasMore:Z

.field private hasMoreHidden:Z

.field private hiddenListStories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_userStories;",
            ">;"
        }
    .end annotation
.end field

.field private isAvatarsEnabled:Z

.field private isBarEnabled:Z

.field private isEnabled:Z

.field private isProfileAvatarEnabled:Z

.field private lastBlocklistRequested:J

.field loadingAllStories:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private loadingDialogsStories:Lorg/telegram/messenger/support/LongSparseIntArray;

.field loadingFromDatabase:Z

.field private loadingFromServer:Z

.field private loadingFromServerHidden:Z

.field mainSettings:Landroid/content/SharedPreferences;

.field final pollingViewsForSelfStoriesRequester:Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;

.field resolvedStories:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$StoryItem;",
            ">;"
        }
    .end annotation
.end field

.field public selfViewsModel:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;",
            ">;"
        }
    .end annotation
.end field

.field final sortStoriesRunnable:Ljava/lang/Runnable;

.field state:Ljava/lang/String;

.field private stateHidden:Ljava/lang/String;

.field private stealthMode:Lorg/telegram/tgnet/TLRPC$TL_storiesStealthMode;

.field private final storiesLists:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lorg/telegram/ui/Stories/StoriesController$StoriesList;",
            ">;"
        }
    .end annotation
.end field

.field private storiesReadLoaded:Z

.field storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

.field private storyLimitCached:Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

.field private storyLimitFetched:Z

.field private totalStoriesCount:I

.field private totalStoriesCountHidden:I

.field private final uploadingAndEditingStories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/StoriesController$UploadingStory;",
            ">;"
        }
    .end annotation
.end field

.field private final uploadingStories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/StoriesController$UploadingStory;",
            ">;"
        }
    .end annotation
.end field

.field private final userStoriesComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/telegram/tgnet/TLRPC$TL_userStories;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1Q_HPJiHydGx3yV1RpnWUBOMrsg(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->lambda$updateBlockedUsers$26(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4FNmOZh6FTO5RgX9CnpG2Bzg9sg(Lorg/telegram/ui/Stories/StoriesController;JZLorg/telegram/tgnet/TLRPC$TL_userStories;JLorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Stories/StoriesController;->lambda$loadSkippedStories$19(JZLorg/telegram/tgnet/TLRPC$TL_userStories;JLorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5AXgCr4KsErhc4uJd8u9iqmqIJc()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/Stories/StoriesController;->lambda$processAllStoriesResponse$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$J8pBDBIVYiE3uQNoYwzy2K5EpO0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->lambda$setStoryReaction$21(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jq_W2mWPUmdSBBQ5_eL1rSNEG2k(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->lambda$loadStoriesRead$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JtAwYEJMiinXd099ML0XpJi0Tf0(Lorg/telegram/ui/Stories/StoriesController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->lambda$loadStoriesRead$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$L6V7vNpFDZqM2IT_iphRh0DuvH8(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->lambda$deleteStories$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LWpvBlTVqLrZ4tw0FeKym6FPDwU(Lorg/telegram/tgnet/TLRPC$StoryItem;)I
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesController;->lambda$static$0(Lorg/telegram/tgnet/TLRPC$StoryItem;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PaENQwx6Ap5TFojWoQL2xSOCCaE(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->lambda$loadStories$5(Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PxJ4yCYPk6M-oXQnMygV28K7ZKc(Lorg/telegram/ui/Stories/StoriesController;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController;->lambda$markStoriesAsReadFromServer$18(JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$QWp8D80bwckmZtAlF9BxhoL8-10(Lorg/telegram/ui/Stories/StoriesController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->lambda$new$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$S2foWF1tZMmwMw8Z3bU7xrfxPtY(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/tgnet/TLRPC$TL_updateStory;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->lambda$processUpdate$10(Lorg/telegram/tgnet/TLRPC$TL_updateStory;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WMpfBq8-gNHL5W1hCGzixJn-ZvI(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->lambda$updateStoriesPinned$16(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WuzE829iKmnxrsUm8NBS-N0UgLY(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->lambda$deleteStory$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XZDwA_mOwKwGE8I4YnwSD1hYK4A(Lorg/telegram/ui/Stories/StoriesController;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/StoriesController;->lambda$loadAllStoriesForDialog$12(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z3K_OgyerBgpU6iEv6pXj-TmX7k(Lorg/telegram/ui/Stories/StoriesController;JZLorg/telegram/tgnet/TLRPC$TL_userStories;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Stories/StoriesController;->lambda$loadSkippedStories$20(JZLorg/telegram/tgnet/TLRPC$TL_userStories;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_il7dYO5IU8f7xqukw915_3hJeQ(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->lambda$toggleHidden$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$crLYkrHnJJK4SzgKg25dutuTHjY(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->lambda$updateStoriesPinned$15(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eTLS-9F_FZ7g-9LWxuKZx4HSYqk(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesController;->lambda$updateBlockedUsers$25(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kBQ0a118aM8FCE7a7A7T0xeQQGw(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->lambda$loadBlocklist$24(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lW_xKO1TTYfRcbbwoCc1MlGd5N8(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/messenger/support/LongSparseIntArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->lambda$new$1(Lorg/telegram/messenger/support/LongSparseIntArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lYhanRz8WsiQVMztPBjOOrOKTYA(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->lambda$loadBlocklist$23(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nPFkr7PXA9BJm24Zyn-AfaigmuY(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->lambda$checkStoryLimit$28(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oKpPXPPJlFYbRIQ9e-KkbVAK6NM(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->lambda$checkStoryLimit$27(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vtE3bN0RQKzAMAEqHE6j9FuU_1A(Lorg/telegram/ui/Stories/StoriesController;JLorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController;->lambda$loadAllStoriesForDialog$11(JLorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wY-GOquqDgKBfOJkOFgwbPtSqiM(Lorg/telegram/ui/Stories/StoriesController;ZLorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/StoriesController;->lambda$loadFromServer$8(ZLorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w_yB5dHugiu-sUvYDSEP2QtZvYs(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/tgnet/TLRPC$TL_userStories;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->lambda$new$22(Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/tgnet/TLRPC$TL_userStories;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xYvpF9J32JZlzs27WnbZ3Wkz-bI(Lorg/telegram/ui/Stories/StoriesController;ZLorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/StoriesController;->lambda$loadFromServer$7(ZLorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$zJtd_JCYgDIZipNOwG9c_NyDlVA(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->lambda$markStoryAsRead$17(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 159
    sget-object v0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda17;->INSTANCE:Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda17;

    invoke-static {v0}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Stories/StoriesController;->storiesComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingStories:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingAndEditingStories:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->editingStories:Ljava/util/HashMap;

    .line 147
    new-instance v0, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v0}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    .line 154
    new-instance v0, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v0}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingDialogsStories:Lorg/telegram/messenger/support/LongSparseIntArray;

    const-string v0, ""

    .line 166
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->state:Ljava/lang/String;

    .line 177
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->selfViewsModel:Landroid/util/SparseArray;

    const/4 v1, 0x1

    .line 179
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMoreHidden:Z

    .line 180
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController;->firstLoad:Z

    .line 858
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesLoading:Ljava/util/HashSet;

    .line 1143
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingAllStories:Ljava/util/HashSet;

    .line 1209
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->resolvedStories:Landroidx/collection/LongSparseArray;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/HashMap;

    .line 1920
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesLists:[Ljava/util/HashMap;

    .line 2618
    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stories/StoriesController;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->userStoriesComparator:Ljava/util/Comparator;

    .line 2670
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    .line 2671
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blockedOverride:Landroidx/collection/LongSparseArray;

    const/4 v1, 0x0

    .line 2674
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistFull:Z

    .line 2675
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistLoadingReset:Z

    .line 2676
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistLoading:Z

    const-wide/16 v2, 0x0

    .line 2678
    iput-wide v2, p0, Lorg/telegram/ui/Stories/StoriesController;->lastBlocklistRequested:J

    .line 184
    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    .line 185
    new-instance v2, Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Stories/StoriesStorage;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    .line 186
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    const-string v3, "last_stories_state"

    .line 187
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->state:Ljava/lang/String;

    .line 188
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    const-string v3, "last_stories_state_hidden"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->stateHidden:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    const-string v2, "total_stores_hidden"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCountHidden:I

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    const-string v2, "total_stores"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    const-string v2, "read_loaded"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesReadLoaded:Z

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    const-string v1, "stories_stealth_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController;->readStealthMode(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_storiesStealthMode;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->stealthMode:Lorg/telegram/tgnet/TLRPC$TL_storiesStealthMode;

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isStoriesEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isStoriesEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->isEnabled:Z

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isStoriesBarEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isStoriesBarEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->isBarEnabled:Z

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isStoriesAvatarsEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isStoriesAvatarsEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->isAvatarsEnabled:Z

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isStoriesProfileAvatarEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isStoriesProfileAvatarEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->isProfileAvatarEnabled:Z

    .line 199
    new-instance v0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;-><init>(Lorg/telegram/ui/Stories/StoriesController;I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->pollingViewsForSelfStoriesRequester:Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesStorage;->getMaxReadIds(Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 202
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/StoriesController;I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->sortStoriesRunnable:Ljava/lang/Runnable;

    .line 208
    new-instance v0, Lorg/telegram/ui/Stories/recorder/DraftsController;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->draftsController:Lorg/telegram/ui/Stories/recorder/DraftsController;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/StoriesController;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/StoriesController;)Ljava/util/ArrayList;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingStories:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/StoriesController;)Ljava/util/ArrayList;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingAndEditingStories:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/StoriesController;)Ljava/util/HashMap;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesController;->editingStories:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500(Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 79
    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesController;->storyItemIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 79
    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesController;->storyItemMessageIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addUserToHiddenList(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V
    .locals 6

    .line 530
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 533
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 534
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 539
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_3
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->checkArchiveFolder()V

    return-void
.end method

.method private applyNewStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V
    .locals 4

    .line 664
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {v0, v1, v2, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 665
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 666
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 667
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->applyToList(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    if-eqz v0, :cond_0

    .line 668
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->stories_hidden:Z

    if-nez v0, :cond_0

    .line 669
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->preloadUserStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    .line 672
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoriesController applyNewStories "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 673
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Stories/StoriesController;->updateStoriesInLists(JLjava/util/List;)V

    return-void
.end method

.method public static applyStoryUpdate(Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/tgnet/TLRPC$StoryItem;)Lorg/telegram/tgnet/TLRPC$StoryItem;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object p1

    .line 683
    :cond_1
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->min:Z

    if-eqz v0, :cond_5

    .line 684
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->pinned:Z

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->pinned:Z

    .line 685
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->isPublic:Z

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->isPublic:Z

    .line 686
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->close_friends:Z

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->close_friends:Z

    .line 687
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->date:I

    if-eqz v0, :cond_2

    .line 688
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->date:I

    .line 690
    :cond_2
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->expire_date:I

    if-eqz v0, :cond_3

    .line 691
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->expire_date:I

    .line 693
    :cond_3
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->caption:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->caption:Ljava/lang/String;

    .line 694
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->entities:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->entities:Ljava/util/ArrayList;

    .line 695
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_4

    .line 696
    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    :cond_4
    return-object p0

    :cond_5
    return-object p1
.end method

.method private applyToList(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V
    .locals 9

    .line 823
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "StoriesController can\'t apply story user == null"

    .line 825
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 829
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 830
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget-wide v7, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_1

    .line 831
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_1
    move v3, v1

    .line 836
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 837
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget-wide v7, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 838
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move v4, v2

    .line 843
    :goto_3
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_5

    .line 844
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StoriesController move user stories to first hidden="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$User;->stories_hidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " did="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 846
    :cond_5
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->stories_hidden:Z

    if-eqz v0, :cond_6

    .line 847
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 849
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_4
    if-nez v4, :cond_7

    .line 853
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->loadAllStoriesForDialog(J)V

    .line 855
    :cond_7
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->checkArchiveFolder()V

    return-void
.end method

.method private checkExpireStories(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_userStories;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1324
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1325
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move v4, v0

    .line 1326
    :goto_1
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    .line 1327
    iget v5, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-static {v5, v7}, Lorg/telegram/ui/Stories/StoriesUtilities;->isExpired(ILorg/telegram/tgnet/TLRPC$StoryItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1328
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    :cond_0
    add-int/2addr v4, v6

    goto :goto_1

    .line 1332
    :cond_1
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1333
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {v2, v4, v5}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 1334
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v2, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 1339
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private findStory(JI)Lorg/telegram/tgnet/TLRPC$StoryItem;
    .locals 1

    .line 1421
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 1423
    :goto_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 1424
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v0, p3, :cond_0

    .line 1425
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$StoryItem;

    return-object p1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private fixDeletedAndNonContactsStories(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_userStories;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 268
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 269
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    .line 270
    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 272
    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/StoriesController;->isContactOrService(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 273
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    move v5, v0

    .line 277
    :goto_2
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 278
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v6, :cond_1

    .line 279
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    :cond_1
    add-int/2addr v5, v4

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    .line 283
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 284
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_3
    add-int/2addr v1, v4

    goto :goto_0

    :cond_4
    return-void
.end method

.method private getSelfUserId()J
    .locals 2

    .line 994
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method private getStoriesList(JIZ)Lorg/telegram/ui/Stories/StoriesController$StoriesList;
    .locals 9

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1929
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1932
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesLists:[Ljava/util/HashMap;

    aget-object v1, v0, p3

    if-nez v1, :cond_1

    .line 1933
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, p3

    .line 1935
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesLists:[Ljava/util/HashMap;

    aget-object v0, v0, p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    .line 1937
    iget-object p4, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesLists:[Ljava/util/HashMap;

    aget-object p4, p4, p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v8, Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda18;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stories/StoriesController;)V

    const/4 v7, 0x0

    move-object v1, v8

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;-><init>(IJILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Stories/StoriesController$1;)V

    invoke-virtual {p4, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v8

    :cond_2
    return-object v0
.end method

.method private isContactOrService(Lorg/telegram/tgnet/TLRPC$User;)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 819
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-nez v0, :cond_0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v2, p1, Lorg/telegram/messenger/MessagesController;->storiesChangelogUserId:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPremium(J)Z
    .locals 1

    .line 2645
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2649
    :cond_0
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    return p1
.end method

.method private synthetic lambda$checkStoryLimit$27(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const/4 v0, 0x1

    .line 2871
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storyLimitFetched:Z

    .line 2872
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2873
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->storyLimitCached:Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    .line 2874
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesLimitUpdate:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 2876
    :cond_0
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stories/StoriesController;->checkStoryError(Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$checkStoryLimit$28(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 2870
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$deleteStories$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 965
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/StoriesController;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$deleteStory$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-nez p2, :cond_0

    .line 931
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/StoriesController;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadAllStoriesForDialog$11(JLorg/telegram/tgnet/TLObject;)V
    .locals 6

    .line 869
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesLoading:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-nez p3, :cond_0

    return-void

    .line 873
    :cond_0
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_stories_userStories;

    .line 874
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_userStories;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 875
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 876
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_userStories;->stories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    .line 877
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {v3, v4, v5, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 878
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController;->isContactOrService(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v0, :cond_2

    .line 879
    :cond_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/StoriesController;->applyToList(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    .line 880
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesStorage;->putUserStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    .line 883
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoriesController processAllStoriesResponse dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " overwrite stories "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_userStories;->stories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 884
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$loadAllStoriesForDialog$12(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 868
    new-instance p4, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda8;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/StoriesController;JLorg/telegram/tgnet/TLObject;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadBlocklist$23(Lorg/telegram/tgnet/TLObject;)V
    .locals 6

    .line 2717
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_blocked;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2718
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_blocked;

    .line 2719
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$contacts_Blocked;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 2720
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$contacts_Blocked;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 2722
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2723
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$contacts_Blocked;->blocked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_peerBlocked;

    .line 2724
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_peerBlocked;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    .line 2725
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2727
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$contacts_Blocked;->count:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistCount:I

    .line 2728
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistFull:Z

    goto :goto_3

    .line 2729
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockedSlice;

    if-eqz v0, :cond_4

    .line 2730
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockedSlice;

    .line 2731
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$contacts_Blocked;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 2732
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$contacts_Blocked;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 2734
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$contacts_Blocked;->blocked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_peerBlocked;

    .line 2735
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_peerBlocked;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    .line 2736
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2738
    :cond_2
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$contacts_Blocked;->count:I

    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistCount:I

    .line 2739
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistCount:I

    if-lt p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistFull:Z

    .line 2743
    :goto_3
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesBlocklistUpdate:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2744
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistLoading:Z

    .line 2745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController;->lastBlocklistRequested:J

    :cond_4
    return-void
.end method

.method private synthetic lambda$loadBlocklist$24(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2716
    new-instance p2, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadFromServer$7(ZLorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 413
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingFromServerHidden:Z

    goto :goto_0

    .line 415
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingFromServer:Z

    .line 417
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoriesController loaded stories from server state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;->state:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " more="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;->next:Z

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 418
    instance-of p2, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;

    const-string v1, "last_stories_has_more"

    const-string v2, "last_stories_state"

    const-string v3, "last_stories_has_more_hidden"

    const-string v4, "last_stories_state_hidden"

    if-eqz p2, :cond_2

    .line 419
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;

    .line 420
    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-object v5, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->users:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p2, v5, v6, v7, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    if-nez p1, :cond_1

    .line 422
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->count:I

    iput p2, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    .line 423
    iget-boolean p2, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->has_more:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMore:Z

    .line 424
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->state:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->state:Ljava/lang/String;

    .line 425
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController;->state:Ljava/lang/String;

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMore:Z

    .line 426
    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    const-string v2, "total_stores"

    .line 427
    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 428
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 430
    :cond_1
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->count:I

    iput p2, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCountHidden:I

    .line 431
    iget-boolean p2, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->has_more:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMoreHidden:Z

    .line 432
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->state:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->stateHidden:Ljava/lang/String;

    .line 433
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->stateHidden:Ljava/lang/String;

    invoke-interface {p2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMoreHidden:Z

    .line 434
    invoke-interface {p2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCountHidden:I

    const-string v2, "total_stores_hidden"

    .line 435
    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 436
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 438
    :goto_1
    invoke-direct {p0, p3, p1, v0, p4}, Lorg/telegram/ui/Stories/StoriesController;->processAllStoriesResponse(Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;ZZZ)V

    goto :goto_4

    .line 439
    :cond_2
    instance-of p2, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStoriesNotModified;

    if-eqz p2, :cond_5

    if-nez p1, :cond_3

    .line 441
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMore:Z

    .line 442
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStoriesNotModified;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStoriesNotModified;->state:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->state:Ljava/lang/String;

    .line 443
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesController;->state:Ljava/lang/String;

    invoke-interface {p2, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 445
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {p2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMoreHidden:Z

    .line 446
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStoriesNotModified;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStoriesNotModified;->state:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->stateHidden:Ljava/lang/String;

    .line 447
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesController;->stateHidden:Ljava/lang/String;

    invoke-interface {p2, v4, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_2
    if-eqz p1, :cond_4

    .line 449
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMoreHidden:Z

    goto :goto_3

    :cond_4
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMore:Z

    :goto_3
    if-eqz p1, :cond_5

    .line 451
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_5
    :goto_4
    return-void
.end method

.method private synthetic lambda$loadFromServer$8(ZLorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 411
    new-instance p5, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda13;

    move-object v0, p5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/StoriesController;ZLorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadSkippedStories$19(JZLorg/telegram/tgnet/TLRPC$TL_userStories;JLorg/telegram/tgnet/TLObject;)V
    .locals 3

    .line 1174
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingAllStories:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1175
    :cond_0
    invoke-virtual {p0, p5, p6}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object p4

    :goto_0
    if-nez p4, :cond_1

    return-void

    .line 1179
    :cond_1
    instance-of p1, p7, Lorg/telegram/tgnet/TLRPC$TL_stories_stories;

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 1180
    check-cast p7, Lorg/telegram/tgnet/TLRPC$TL_stories_stories;

    move p1, p2

    .line 1181
    :goto_1
    iget-object v0, p7, Lorg/telegram/tgnet/TLRPC$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    move v0, p2

    .line 1182
    :goto_2
    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1183
    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget-object v2, p7, Lorg/telegram/tgnet/TLRPC$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v1, v2, :cond_2

    .line 1184
    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    iget-object v2, p7, Lorg/telegram/tgnet/TLRPC$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1185
    iget-object v1, p7, Lorg/telegram/tgnet/TLRPC$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-direct {p0, p5, p6, v1}, Lorg/telegram/ui/Stories/StoriesController;->preloadStory(JLorg/telegram/tgnet/TLRPC$StoryItem;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    if-nez p3, :cond_5

    .line 1190
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Stories/StoriesStorage;->updateStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    .line 1193
    :cond_5
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p3, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$loadSkippedStories$20(JZLorg/telegram/tgnet/TLRPC$TL_userStories;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    .line 1173
    new-instance v9, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda9;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/StoriesController;JZLorg/telegram/tgnet/TLRPC$TL_userStories;JLorg/telegram/tgnet/TLObject;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadStories$5(Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;)V
    .locals 2

    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingFromDatabase:Z

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 313
    invoke-direct {p0, p1, v0, v1, v0}, Lorg/telegram/ui/Stories/StoriesController;->processAllStoriesResponse(Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;ZZZ)V

    .line 314
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController;->loadFromServer(Z)V

    .line 315
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/StoriesController;->loadFromServer(Z)V

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController;->cleanup()V

    .line 318
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController;->loadStories()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$loadStoriesRead$3()V
    .locals 3

    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesReadLoaded:Z

    .line 257
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "read_loaded"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic lambda$loadStoriesRead$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 250
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    if-nez p1, :cond_0

    return-void

    .line 254
    :cond_0
    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v4, 0x0

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)Z

    .line 255
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/StoriesController;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$markStoriesAsReadFromServer$18(JI)V
    .locals 3

    .line 1043
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1044
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v2, p1, p2, v0}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    .line 1045
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-virtual {v2, p1, p2, v0}, Lorg/telegram/ui/Stories/StoriesStorage;->updateMaxReadId(JI)V

    .line 1046
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1050
    :cond_0
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    if-le p3, p2, :cond_1

    .line 1051
    iput p3, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    .line 1052
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->userStoriesComparator:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1053
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$markStoryAsRead$17(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/messenger/support/LongSparseIntArray;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    return-void
.end method

.method private synthetic lambda$new$2(I)V
    .locals 2

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController;->sortDialogStories(Ljava/util/ArrayList;)V

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController;->sortDialogStories(Ljava/util/ArrayList;)V

    .line 205
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$22(Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/tgnet/TLRPC$TL_userStories;)I
    .locals 3

    .line 2619
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->hasUnreadStories(J)Z

    move-result v0

    .line 2620
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->hasUnreadStories(J)Z

    move-result v1

    if-ne v0, v1, :cond_4

    .line 2622
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v0

    .line 2623
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v1

    if-ne v0, v1, :cond_3

    .line 2625
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->isPremium(J)Z

    move-result v0

    .line 2626
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->isPremium(J)Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2628
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->date:I

    .line 2629
    :goto_0
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->date:I

    :goto_1
    sub-int/2addr v1, p1

    return v1

    :cond_2
    sub-int/2addr v1, v0

    return v1

    :cond_3
    sub-int/2addr v1, v0

    return v1

    :cond_4
    sub-int/2addr v1, v0

    return v1
.end method

.method private static synthetic lambda$processAllStoriesResponse$9()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$processUpdate$10(Lorg/telegram/tgnet/TLRPC$TL_updateStory;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 10

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->user_id:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoriesController update stories for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->user_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 716
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->user_id:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->story:Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->updateStoriesInLists(JLjava/util/List;)V

    .line 718
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 719
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    .line 720
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->user_id:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_d

    .line 724
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->story:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 725
    instance-of v7, p1, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v7, :cond_0

    .line 726
    iget v7, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v7

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v7, v3, v4, v8}, Lorg/telegram/messenger/NotificationsController;->processDeleteStory(JI)V

    :cond_0
    move v7, v5

    .line 729
    :goto_0
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 730
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget v9, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v8, v9, :cond_4

    .line 732
    instance-of v8, p1, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v8, :cond_1

    .line 733
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 734
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StoriesController remove story id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    move v7, v6

    goto :goto_1

    .line 737
    :cond_1
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 738
    invoke-static {v8, p1}, Lorg/telegram/ui/Stories/StoriesController;->applyStoryUpdate(Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/tgnet/TLRPC$StoryItem;)Lorg/telegram/tgnet/TLRPC$StoryItem;

    move-result-object p1

    .line 739
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v9, v7, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 741
    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 742
    iget-object v7, v8, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    iput-object v7, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    .line 744
    :cond_2
    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->firstFramePath:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 745
    iget-object v7, v8, Lorg/telegram/tgnet/TLRPC$StoryItem;->firstFramePath:Ljava/lang/String;

    iput-object v7, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->firstFramePath:Ljava/lang/String;

    .line 747
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StoriesController update story id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    move v8, v5

    move v7, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    move v7, v5

    :goto_1
    move v8, v7

    :goto_2
    if-nez v7, :cond_a

    .line 753
    instance-of v7, p1, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v7, :cond_6

    const-string p1, "StoriesController can\'t add new story DELETED"

    .line 754
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    .line 757
    :cond_6
    iget v7, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v7, p1}, Lorg/telegram/ui/Stories/StoriesUtilities;->isExpired(ILorg/telegram/tgnet/TLRPC$StoryItem;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string p1, "StoriesController can\'t add new story isExpired"

    .line 758
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :cond_7
    if-eqz p2, :cond_9

    .line 761
    iget-boolean v7, p2, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v7, :cond_8

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/StoriesController;->isContactOrService(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_3

    .line 765
    :cond_8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoriesController add new story id="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total stories count "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 769
    invoke-direct {p0, v3, v4, p1}, Lorg/telegram/ui/Stories/StoriesController;->preloadStory(JLorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 771
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController;->applyToList(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    move p1, v6

    move v8, p1

    goto :goto_4

    :cond_9
    :goto_3
    const-string p1, "StoriesController can\'t add new story user is not contact"

    .line 762
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    move p1, v5

    :goto_4
    if-eqz v8, :cond_c

    .line 774
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 775
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 776
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 777
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 778
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    sub-int/2addr p1, v6

    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    goto/16 :goto_5

    .line 780
    :cond_b
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    sget-object p2, Lorg/telegram/ui/Stories/StoriesController;->storiesComparator:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_5

    :cond_c
    move v6, p1

    goto/16 :goto_5

    .line 785
    :cond_d
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->story:Lorg/telegram/tgnet/TLRPC$StoryItem;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    const-string v3, "StoriesController can\'t add user "

    if-eqz v1, :cond_e

    .line 786
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->user_id:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " with new story DELETED"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    .line 789
    :cond_e
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v1, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->isExpired(ILorg/telegram/tgnet/TLRPC$StoryItem;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 790
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->user_id:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " with new story isExpired"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :cond_f
    if-eqz p2, :cond_13

    .line 793
    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v0, :cond_10

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/StoriesController;->isContactOrService(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p2

    if-nez p2, :cond_10

    goto :goto_6

    .line 797
    :cond_10
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_userStories;-><init>()V

    .line 798
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->user_id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    .line 799
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->story:Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoriesController add new user with story id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->story:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 801
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/StoriesController;->applyNewStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    .line 803
    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    add-int/2addr p2, v6

    iput p2, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    .line 804
    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->user_id:J

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadAllStoriesForDialog(J)V

    .line 806
    :goto_5
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    if-eq v2, p1, :cond_11

    .line 807
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    const-string v0, "total_stores"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 809
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->fixDeletedAndNonContactsStories(Ljava/util/ArrayList;)V

    .line 810
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->fixDeletedAndNonContactsStories(Ljava/util/ArrayList;)V

    if-eqz v6, :cond_12

    .line 812
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 814
    :cond_12
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->checkArchiveFolder()V

    return-void

    :cond_13
    :goto_6
    const-string p1, "StoriesController can\'t add user cause is not contact"

    .line 794
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$setStoryReaction$21(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$static$0(Lorg/telegram/tgnet/TLRPC$StoryItem;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->date:I

    return p0
.end method

.method private static synthetic lambda$toggleHidden$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$updateBlockedUsers$25(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2774
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateBlockedUsers$26(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2772
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$updateStoriesPinned$15(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 988
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$updateStoriesPinned$16(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 986
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadAllStoriesForDialog(J)V
    .locals 3

    .line 861
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesLoading:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 864
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesLoading:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoriesController loadAllStoriesForDialog "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 866
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getUserStories;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_getUserStories;-><init>()V

    .line 867
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getUserStories;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 868
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Stories/StoriesController;J)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private loadFromServer(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 390
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingFromServerHidden:Z

    if-nez v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingFromServer:Z

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingFromDatabase:Z

    if-eqz v0, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 394
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingFromServerHidden:Z

    goto :goto_0

    .line 396
    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingFromServer:Z

    .line 398
    :goto_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;-><init>()V

    if-eqz p1, :cond_5

    .line 399
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->stateHidden:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->state:Ljava/lang/String;

    :goto_1
    if-eqz p1, :cond_6

    .line 400
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMoreHidden:Z

    goto :goto_2

    :cond_6
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMore:Z

    .line 401
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 402
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;->state:Ljava/lang/String;

    .line 403
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;->flags:I

    or-int/2addr v4, v0

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;->flags:I

    :cond_7
    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 406
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 407
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;->next:Z

    goto :goto_3

    :cond_8
    move v0, v4

    .line 409
    :goto_3
    iput-boolean p1, v1, Lorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;->include_hidden:Z

    .line 411
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda28;

    invoke-direct {v3, p0, p1, v1, v0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Stories/StoriesController;ZLorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;Z)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private loadStoriesRead()V
    .locals 3

    .line 245
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesReadLoaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 248
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getAllReadUserStories;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_getAllReadUserStories;-><init>()V

    .line 249
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Stories/StoriesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private preloadStory(JLorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 7

    .line 570
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 573
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController;->canPreloadStories()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 577
    :cond_1
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 578
    :goto_0
    iput-wide p1, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    if-eqz v0, :cond_3

    .line 580
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 p2, 0x3e8

    invoke-static {p1, p2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    .line 581
    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {p2, v0, p3, v2, v1}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 582
    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1, p2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v3, "jpg"

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;II)V

    goto :goto_2

    .line 584
    :cond_3
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    :goto_1
    if-eqz p1, :cond_5

    .line 585
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    const v0, 0x7fffffff

    .line 586
    invoke-static {p2, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p2

    .line 587
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-static {p2, p1}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v4, "jpg"

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;II)V

    :cond_5
    :goto_2
    return-void
.end method

.method private processAllStoriesResponse(Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;ZZZ)V
    .locals 10

    if-nez p4, :cond_1

    if-nez p2, :cond_0

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 463
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 466
    :cond_1
    :goto_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v1

    .line 468
    :goto_1
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->user_stories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 469
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, ", "

    .line 470
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    :cond_2
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->user_stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 474
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StoriesController cache="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " hidden="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " processAllStoriesResponse {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 476
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    move v0, v1

    .line 478
    :goto_2
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->user_stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_e

    .line 479
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->user_stories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move v3, v1

    .line 480
    :goto_3
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 481
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v4, :cond_5

    .line 482
    iget v4, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v4

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/messenger/NotificationsController;->processDeleteStory(JI)V

    .line 483
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 487
    :cond_6
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 488
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {v3, v4, v5, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    move v3, v1

    :goto_4
    const/4 v4, 0x2

    if-ge v3, v4, :cond_a

    if-nez v3, :cond_7

    .line 490
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    goto :goto_5

    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    :goto_5
    move v5, v1

    .line 491
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 492
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_8

    .line 493
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 498
    :cond_a
    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_8

    .line 502
    :cond_b
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->stories_hidden:Z

    if-eqz v3, :cond_c

    .line 503
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/StoriesController;->addUserToHiddenList(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    goto :goto_8

    .line 505
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/StoriesController;->preloadUserStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    goto :goto_8

    .line 509
    :cond_d
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->remove(J)V

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_e
    if-nez p3, :cond_f

    .line 513
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->user_stories:Ljava/util/ArrayList;

    sget-object v0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda15;->INSTANCE:Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda15;

    invoke-virtual {p3, p1, p4, p2, v0}, Lorg/telegram/ui/Stories/StoriesStorage;->saveAllStories(Ljava/util/ArrayList;ZZLjava/lang/Runnable;)V

    .line 525
    :cond_f
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->sortUserStories()V

    return-void
.end method

.method private readStealthMode(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_storiesStealthMode;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 215
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    const/4 p1, 0x1

    .line 217
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v2

    invoke-static {v1, v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_storiesStealthMode;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_storiesStealthMode;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 221
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private sortDialogStories(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_userStories;",
            ">;)V"
        }
    .end annotation

    .line 263
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->fixDeletedAndNonContactsStories(Ljava/util/ArrayList;)V

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->userStoriesComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private sortUserStories()V
    .locals 1

    .line 545
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->sortStoriesRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->sortStoriesRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static storyItemIds(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$StoryItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "null"

    return-object p0

    :cond_0
    const-string v0, ""

    const/4 v1, 0x0

    .line 1948
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    .line 1949
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1950
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    const-string p0, "err"

    return-object p0
.end method

.method private static storyItemMessageIds(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "null"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, ""

    const/4 v2, 0x0

    .line 1964
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    if-lez v2, :cond_1

    .line 1965
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1966
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-nez v3, :cond_2

    .line 1968
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1970
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :catch_0
    const-string p0, "err"

    return-object p0
.end method

.method private writeStealthMode(Lorg/telegram/tgnet/TLRPC$TL_storiesStealthMode;)V
    .locals 4

    .line 227
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "stories_stealth_mode"

    if-nez p1, :cond_0

    .line 229
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 232
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 233
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/TLRPC$TL_storiesStealthMode;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 234
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public applyStoryViewsBlocked(Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 2803
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->views:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2806
    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2807
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_storyViewsList;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_storyView;

    .line 2808
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->blockedOverride:Landroidx/collection/LongSparseArray;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_storyView;->user_id:J

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2809
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->blockedOverride:Landroidx/collection/LongSparseArray;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_storyView;->user_id:J

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_storyView;->blocked_my_stories_from:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public checkExpiredStories()V
    .locals 1

    .line 1318
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController;->checkExpireStories(Ljava/util/ArrayList;)V

    .line 1319
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController;->checkExpireStories(Ljava/util/ArrayList;)V

    return-void
.end method

.method public checkExpiredStories(J)V
    .locals 3

    .line 1344
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    move v0, p2

    .line 1348
    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1349
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->isExpired(ILorg/telegram/tgnet/TLRPC$StoryItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1350
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1354
    :cond_2
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1355
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1356
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1357
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public checkStoryError(Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 2884
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v3, "STORY_SEND_FLOOD_WEEKLY_"

    .line 2885
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    .line 2888
    :try_start_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/16 v2, 0x18

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2890
    :catch_0
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    const/4 v2, 0x2

    invoke-direct {p1, v2, v3, v4}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;-><init>(IJ)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->storyLimitCached:Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    goto :goto_0

    .line 2892
    :cond_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v5, "STORY_SEND_FLOOD_MONTHLY_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2895
    :try_start_1
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/16 v2, 0x19

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2897
    :catch_1
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    const/4 v2, 0x3

    invoke-direct {p1, v2, v3, v4}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;-><init>(IJ)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->storyLimitCached:Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    goto :goto_0

    .line 2899
    :cond_1
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v5, "STORIES_TOO_MUCH"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2900
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    invoke-direct {p1, v1, v3, v4}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;-><init>(IJ)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->storyLimitCached:Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    goto :goto_0

    .line 2902
    :cond_2
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "PREMIUM_ACCOUNT_REQUIRED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2903
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    .line 2904
    iget-object v2, p1, Lorg/telegram/messenger/MessagesController;->storiesPosting:Ljava/lang/String;

    const-string v3, "enabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2905
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "premium"

    iput-object v3, p1, Lorg/telegram/messenger/MessagesController;->storiesPosting:Ljava/lang/String;

    const-string p1, "storiesPosting"

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2906
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->storiesEnabledUpdate:I

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v1, v0

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 2912
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->storiesLimitUpdate:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_5
    return v1
.end method

.method public checkStoryLimit()Lorg/telegram/ui/Stories/StoriesController$StoryLimit;
    .locals 4

    .line 2858
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2859
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->storyExpiringLimitPremium:I

    goto :goto_0

    .line 2860
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->storyExpiringLimitDefault:I

    .line 2862
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController;->getMyStoriesCount()I

    move-result v1

    if-lt v1, v0, :cond_1

    .line 2863
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;-><init>(IJ)V

    return-object v0

    .line 2866
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storyLimitFetched:Z

    if-eqz v0, :cond_2

    .line 2867
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storyLimitCached:Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    return-object v0

    .line 2870
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_stories_canSendStory;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_stories_canSendStory;-><init>()V

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Stories/StoriesController;)V

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public cleanup()V
    .locals 3

    const/4 v0, 0x0

    .line 1123
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesReadLoaded:Z

    const-string v1, ""

    .line 1124
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->stateHidden:Ljava/lang/String;

    .line 1125
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->state:Ljava/lang/String;

    .line 1126
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "stories_loaded"

    .line 1127
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_stories_state"

    .line 1128
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "stories_loaded_hidden"

    .line 1129
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_stories_state_hidden"

    .line 1130
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "read_loaded"

    .line 1131
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1132
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1133
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->draftsController:Lorg/telegram/ui/Stories/recorder/DraftsController;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/recorder/DraftsController;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1135
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController;->loadStories()V

    .line 1136
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->loadStoriesRead()V

    return-void
.end method

.method public deleteStories(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$StoryItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 944
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_deleteStories;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_deleteStories;-><init>()V

    .line 945
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    const/4 v2, 0x0

    move v3, v2

    .line 946
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 947
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 948
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v5, :cond_1

    goto :goto_3

    :cond_1
    if-eqz v1, :cond_3

    move v5, v2

    .line 952
    :goto_1
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 953
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v6, v7, :cond_2

    .line 954
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 955
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 956
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->remove(J)V

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 962
    :cond_3
    :goto_2
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_deleteStories;->id:Ljava/util/ArrayList;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 964
    :cond_4
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Stories/StoriesController;)V

    invoke-virtual {v1, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 967
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, p1}, Lorg/telegram/ui/Stories/StoriesController;->updateDeletedStoriesInLists(JLjava/util/List;)V

    .line 968
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_deleteStories;->id:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4, v0}, Lorg/telegram/ui/Stories/StoriesStorage;->deleteStories(JLjava/util/ArrayList;)V

    .line 969
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public deleteStory(Lorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 910
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 913
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v2, v1

    .line 915
    :goto_0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 916
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v3, v4, :cond_1

    .line 917
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 918
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 919
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 920
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 921
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 927
    :cond_2
    :goto_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_deleteStories;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_deleteStories;-><init>()V

    .line 928
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_deleteStories;->id:Ljava/util/ArrayList;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda23;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Stories/StoriesController;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 934
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v2

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Stories/StoriesStorage;->deleteStory(JI)V

    .line 935
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 936
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->checkArchiveFolder()V

    .line 937
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v2

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/tgnet/TLRPC$StoryItem;

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v2, v3, p1}, Lorg/telegram/ui/Stories/StoriesController;->updateDeletedStoriesInLists(JLjava/util/List;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public destroyStoryList(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V
    .locals 3

    .line 2003
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesLists:[Ljava/util/HashMap;

    iget v1, p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 2004
    aget-object v0, v0, v1

    iget-wide v1, p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public fillMessagesWithStories(Landroidx/collection/LongSparseArray;Ljava/lang/Runnable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;",
            "Ljava/lang/Runnable;",
            "I)V"
        }
    .end annotation

    .line 1206
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesStorage;->fillMessagesWithStories(Landroidx/collection/LongSparseArray;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public findEditingStory(Lorg/telegram/tgnet/TLRPC$StoryItem;)Lorg/telegram/ui/Stories/StoriesController$UploadingStory;
    .locals 4

    if-eqz p1, :cond_1

    .line 646
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 649
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->editingStories:Ljava/util/HashMap;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBlocklistCount()I
    .locals 1

    .line 2750
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistCount:I

    return v0
.end method

.method public getDialogListStories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_userStories;",
            ">;"
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->draftsController:Lorg/telegram/ui/Stories/recorder/DraftsController;

    return-object v0
.end method

.method public getEditingStory()Lorg/telegram/ui/Stories/StoriesController$UploadingStory;
    .locals 3

    .line 653
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->editingStories:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 656
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->editingStories:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 657
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 660
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    return-object v0
.end method

.method public getHiddenList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_userStories;",
            ">;"
        }
    .end annotation

    .line 1249
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMyStoriesCount()I
    .locals 3

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingAndEditingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 638
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 639
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 640
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getSelfStoriesCount()I
    .locals 3

    .line 901
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    .line 905
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public getStealthMode()Lorg/telegram/tgnet/TLRPC$TL_storiesStealthMode;
    .locals 1

    .line 1366
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->stealthMode:Lorg/telegram/tgnet/TLRPC$TL_storiesStealthMode;

    return-object v0
.end method

.method public getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;
    .locals 1

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    return-object p1
.end method

.method public getStoriesList(JI)Lorg/telegram/ui/Stories/StoriesController$StoriesList;
    .locals 1

    const/4 v0, 0x1

    .line 1924
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesList(JIZ)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object p1

    return-object p1
.end method

.method public getStoriesStorage()Lorg/telegram/ui/Stories/StoriesStorage;
    .locals 1

    .line 1310
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    return-object v0
.end method

.method public getTotalStoriesCount(Z)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1264
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMoreHidden:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCountHidden:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    return p1

    .line 1266
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMore:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    return p1
.end method

.method public getUnreadState(J)I
    .locals 1

    const/4 v0, 0x0

    .line 1080
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(JI)I

    move-result p1

    return p1
.end method

.method public getUnreadState(JI)I
    .locals 5

    .line 1084
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    if-nez v0, :cond_0

    .line 1086
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1088
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 1094
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v2, p1, v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 1095
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    .line 1100
    :cond_2
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v4, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    move p2, v1

    move v2, p2

    .line 1101
    :goto_0
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_6

    if-eqz p3, :cond_3

    .line 1102
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v4, p3, :cond_5

    :cond_3
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-le v4, p1, :cond_5

    .line 1104
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->close_friends:Z

    if-eqz v2, :cond_4

    const/4 p1, 0x2

    return p1

    :cond_4
    move v2, v3

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    return v3

    :cond_7
    return v1
.end method

.method public getUnreadStoriesCount(J)I
    .locals 3

    .line 1253
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    const/4 p2, 0x0

    move v0, p2

    .line 1254
    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1255
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ge v1, v2, :cond_0

    .line 1256
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public getUploadingAndEditingStories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/StoriesController$UploadingStory;",
            ">;"
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingAndEditingStories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUploadingStories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/StoriesController$UploadingStory;",
            ">;"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingStories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasHiddenStories()Z
    .locals 1

    .line 1314
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasLoadingStories()Z
    .locals 1

    .line 1362
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingDialogsStories:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOnlySelfStories()Z
    .locals 7

    .line 2661
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController;->hasSelfStories()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController;->getDialogListStories()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController;->getDialogListStories()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController;->getDialogListStories()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v5, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public hasSelfStories()Z
    .locals 3

    .line 889
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 893
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasStories()Z
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController;->hasSelfStories()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStories(J)Z
    .locals 2

    .line 296
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController;->hasUploadingStories()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 299
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    if-eqz p1, :cond_1

    .line 300
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasStoryLimit()Z
    .locals 2

    .line 2918
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController;->checkStoryLimit()Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2919
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->active(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUnreadStories(J)Z
    .locals 4

    .line 1059
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1063
    :cond_0
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long p1, p1, v2

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 1064
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    return p2

    :cond_1
    move p1, v1

    .line 1068
    :goto_0
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 1072
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    if-le v2, v3, :cond_2

    return p2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public hasUploadingStories()Z
    .locals 1

    .line 1117
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->editingStories:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public invalidateStoryLimit()V
    .locals 1

    const/4 v0, 0x0

    .line 2923
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storyLimitFetched:Z

    const/4 v0, 0x0

    .line 2924
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storyLimitCached:Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    return-void
.end method

.method public isAvatarsEnabled()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->isEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->isAvatarsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBarEnabled()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->isEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->isBarEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBlocked(Lorg/telegram/tgnet/TLRPC$TL_storyView;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2783
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blockedOverride:Landroidx/collection/LongSparseArray;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_storyView;->user_id:J

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2784
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->blockedOverride:Landroidx/collection/LongSparseArray;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_storyView;->user_id:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 2786
    :cond_1
    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController;->lastBlocklistRequested:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 2787
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_storyView;->blocked_my_stories_from:Z

    if-nez v1, :cond_2

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_storyView;->blocked:Z

    if-eqz p1, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    return v0

    .line 2789
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$TL_storyView;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    .line 2792
    :cond_5
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_storyView;->blocked_my_stories_from:Z

    if-nez v1, :cond_6

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_storyView;->blocked:Z

    if-eqz p1, :cond_7

    :cond_6
    move v0, v2

    :cond_7
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->isEnabled:Z

    return v0
.end method

.method public isLastUploadingFailed()Z
    .locals 2

    .line 626
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 629
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    return v0
.end method

.method public isLoading(J)Z
    .locals 2

    .line 1288
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingDialogsStories:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move v1, p2

    :cond_0
    return v1
.end method

.method public isProfileAvatarEnabled()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->isEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->isProfileAvatarEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadAllStories()V
    .locals 1

    .line 238
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->firstLoad:Z

    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController;->loadStories()V

    .line 240
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->loadStoriesRead()V

    :cond_0
    return-void
.end method

.method public loadBlocklist(Z)V
    .locals 7

    .line 2686
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistLoading:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2687
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistLoadingReset:Z

    if-nez v0, :cond_0

    .line 2688
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistReqId:I

    invoke-virtual {v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2689
    iput v2, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistReqId:I

    .line 2690
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistLoadingReset:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistLoading:Z

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 2696
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/telegram/ui/Stories/StoriesController;->lastBlocklistRequested:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x1b7740

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    .line 2700
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistFull:Z

    if-eqz v0, :cond_3

    return-void

    .line 2704
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistLoading:Z

    .line 2705
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistLoadingReset:Z

    .line 2706
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;-><init>()V

    .line 2707
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->my_stories_from:Z

    if-eqz p1, :cond_4

    .line 2709
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->offset:I

    const/16 p1, 0x64

    .line 2710
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->limit:I

    .line 2711
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistFull:Z

    goto :goto_1

    .line 2713
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->offset:I

    const/16 p1, 0x19

    .line 2714
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->limit:I

    .line 2716
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Stories/StoriesController;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public loadBlocklistAtFirst()V
    .locals 4

    .line 2681
    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController;->lastBlocklistRequested:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2682
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoriesController;->loadBlocklist(Z)V

    :cond_0
    return-void
.end method

.method public loadHiddenStories()V
    .locals 1

    .line 329
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMoreHidden:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 330
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController;->loadFromServer(Z)V

    :cond_0
    return-void
.end method

.method public loadNextStories(Z)V
    .locals 1

    .line 1200
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMore:Z

    if-eqz v0, :cond_0

    .line 1201
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->loadFromServer(Z)V

    :cond_0
    return-void
.end method

.method loadSkippedStories(J)V
    .locals 0

    .line 1146
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;Z)V

    return-void
.end method

.method loadSkippedStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;Z)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 1153
    :cond_0
    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    if-eqz p2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    int-to-long v0, v0

    mul-long v2, v6, v0

    .line 1155
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingAllStories:Ljava/util/HashSet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1160
    :goto_1
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 1161
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_storyItemSkipped;

    if-eqz v4, :cond_4

    if-nez v0, :cond_3

    .line 1163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1165
    :cond_3
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 1169
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingAllStories:Ljava/util/HashSet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1170
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesByID;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesByID;-><init>()V

    .line 1171
    iput-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesByID;->id:Ljava/util/ArrayList;

    .line 1172
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesByID;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1173
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda27;

    move-object v0, v10

    move-object v1, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Stories/StoriesController;JZLorg/telegram/tgnet/TLRPC$TL_userStories;J)V

    invoke-virtual {v9, v8, v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_6
    return-void
.end method

.method public loadStories()V
    .locals 3

    .line 308
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->firstLoad:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 309
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingFromDatabase:Z

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoriesController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesStorage;->getAllStories(Lcom/google/android/exoplayer2/util/Consumer;)V

    goto :goto_0

    .line 322
    :cond_0
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/StoriesController;->loadFromServer(Z)V

    .line 323
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/StoriesController;->loadFromServer(Z)V

    .line 325
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController;->firstLoad:Z

    return-void
.end method

.method public markStoriesAsReadFromServer(JI)V
    .locals 1

    .line 1042
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/StoriesController;JI)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public markStoryAsRead(JLorg/telegram/tgnet/TLRPC$StoryItem;)Z
    .locals 2

    .line 1004
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1006
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1008
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    :cond_0
    const/4 p1, 0x0

    .line 1011
    invoke-virtual {p0, v0, p3, p1}, Lorg/telegram/ui/Stories/StoriesController;->markStoryAsRead(Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/tgnet/TLRPC$StoryItem;Z)Z

    move-result p1

    return p1
.end method

.method public markStoryAsRead(Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/tgnet/TLRPC$StoryItem;Z)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 1018
    :cond_0
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    .line 1019
    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    .line 1020
    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->justUploaded:Z

    .line 1022
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v3

    .line 1023
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    iget v5, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1024
    iget v5, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v4}, Lorg/telegram/messenger/NotificationsController;->processReadStories(JI)V

    .line 1025
    iput v4, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    .line 1026
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p1, v1, v2, v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    if-le v4, v3, :cond_3

    if-nez p3, :cond_2

    .line 1029
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-virtual {p1, v1, v2, v4}, Lorg/telegram/ui/Stories/StoriesStorage;->updateMaxReadId(JI)V

    .line 1031
    :cond_2
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_stories_readStories;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_stories_readStories;-><init>()V

    .line 1032
    iget p3, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p3

    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_readStories;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1033
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_readStories;->max_id:I

    .line 1034
    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    sget-object p3, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda31;->INSTANCE:Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda31;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public onPremiumChanged()V
    .locals 1

    .line 1433
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->selfViewsModel:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public pollViewsForSelfStories(Z)V
    .locals 1

    .line 1140
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->pollingViewsForSelfStoriesRequester:Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->start(Z)V

    return-void
.end method

.method public preloadUserStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 551
    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 552
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    if-le v2, v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 557
    :cond_1
    :goto_1
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 560
    :cond_2
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->preloadStory(JLorg/telegram/tgnet/TLRPC$StoryItem;)V

    if-lez v0, :cond_3

    .line 562
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->preloadStory(JLorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 564
    :cond_3
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    .line 565
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-direct {p0, v1, v2, p1}, Lorg/telegram/ui/Stories/StoriesController;->preloadStory(JLorg/telegram/tgnet/TLRPC$StoryItem;)V

    :cond_4
    return-void
.end method

.method public processUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateStory;)V
    .locals 3

    .line 706
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->story:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-nez v0, :cond_0

    return-void

    .line 709
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 710
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController;->isContactOrService(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v1, :cond_2

    .line 711
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->processUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateStory;)V

    .line 713
    :cond_2
    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/tgnet/TLRPC$TL_updateStory;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public putStories(JLorg/telegram/tgnet/TLRPC$TL_userStories;)V
    .locals 1

    .line 1271
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1272
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 1273
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->isContactOrService(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz p1, :cond_1

    .line 1274
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Stories/StoriesStorage;->putUserStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    .line 1275
    invoke-direct {p0, p3}, Lorg/telegram/ui/Stories/StoriesController;->applyToList(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    :cond_1
    return-void
.end method

.method public putUploadingDrafts(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry;",
            ">;)V"
        }
    .end annotation

    .line 607
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 608
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingStories:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;-><init>(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 610
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public removeContact(J)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1292
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1293
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1294
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v1, v0

    .line 1298
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1299
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 1300
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1304
    :cond_3
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/Stories/StoriesStorage;->deleteAllUserStories(J)V

    .line 1305
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->checkArchiveFolder()V

    .line 1306
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public resolveStoryLink(JILcom/google/android/exoplayer2/util/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/google/android/exoplayer2/util/Consumer<",
            "Lorg/telegram/tgnet/TLRPC$StoryItem;",
            ">;)V"
        }
    .end annotation

    .line 1212
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1214
    :goto_0
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1215
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v2, p3, :cond_0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_storyItemSkipped;

    if-nez v2, :cond_0

    .line 1216
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-interface {p4, p1}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    int-to-long v0, p3

    add-long/2addr v0, p1

    const/16 v2, 0xc

    shl-long/2addr v0, v2

    .line 1222
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->resolvedStories:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v2, :cond_2

    .line 1224
    invoke-interface {p4, v2}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 1227
    :cond_2
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesByID;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesByID;-><init>()V

    .line 1228
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesByID;->id:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    iget p3, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p1

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesByID;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1230
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stories/StoriesController$1;

    invoke-direct {p2, p0, v0, v1, p4}, Lorg/telegram/ui/Stories/StoriesController$1;-><init>(Lorg/telegram/ui/Stories/StoriesController;JLcom/google/android/exoplayer2/util/Consumer;)V

    invoke-virtual {p1, v2, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V
    .locals 2

    .line 129
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isStoriesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/StoriesController;->setEnabled(Z)V

    .line 130
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isStoriesBarEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/StoriesController;->setBarEnabled(Z)V

    .line 131
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isStoriesAvatarsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/StoriesController;->setAvatarsEnabled(Z)V

    .line 132
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isStoriesProfileAvatarEnabled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->setProfileAvatarEnabled(Z)V

    return-void
.end method

.method public scheduleSort()V
    .locals 1

    .line 2655
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->sortStoriesRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2656
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->sortStoriesRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public setAvatarsEnabled(Z)V
    .locals 2

    .line 119
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController;->isAvatarsEnabled:Z

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isStoriesAvatarsEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBarEnabled(Z)V
    .locals 2

    .line 114
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController;->isBarEnabled:Z

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isStoriesBarEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 108
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController;->isEnabled:Z

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isStoriesEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public setLoading(JZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 1281
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingDialogsStories:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2, v0}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    goto :goto_0

    .line 1283
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingDialogsStories:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/support/LongSparseIntArray;->delete(J)V

    :goto_0
    return-void
.end method

.method public setProfileAvatarEnabled(Z)V
    .locals 2

    .line 124
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController;->isProfileAvatarEnabled:Z

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isStoriesProfileAvatarEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setStealthMode(Lorg/telegram/tgnet/TLRPC$TL_storiesStealthMode;)V
    .locals 3

    .line 1370
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->stealthMode:Lorg/telegram/tgnet/TLRPC$TL_storiesStealthMode;

    .line 1371
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stealthModeChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1372
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->writeStealthMode(Lorg/telegram/tgnet/TLRPC$TL_storiesStealthMode;)V

    return-void
.end method

.method public setStoryReaction(JLorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 5

    if-nez p3, :cond_0

    return-void

    .line 1379
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_sendReaction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_sendReaction;-><init>()V

    .line 1380
    iget v1, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_sendReaction;->story_id:I

    .line 1381
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_sendReaction;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    if-nez p4, :cond_1

    .line 1383
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_reactionEmpty;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_reactionEmpty;-><init>()V

    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_sendReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 1385
    iget p4, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->flags:I

    const v1, -0x8001

    and-int/2addr p4, v1

    iput p4, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->flags:I

    const/4 p4, 0x0

    .line 1386
    iput-object p4, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    goto :goto_0

    .line 1387
    :cond_1
    iget-wide v1, p4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const v2, 0x8000

    if-eqz v1, :cond_2

    .line 1388
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;-><init>()V

    .line 1389
    iget-wide v3, p4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    .line 1390
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_sendReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 1392
    iget p4, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->flags:I

    or-int/2addr p4, v2

    iput p4, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->flags:I

    .line 1393
    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    goto :goto_0

    .line 1394
    :cond_2
    iget-object v1, p4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1395
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;-><init>()V

    .line 1396
    iget-object p4, p4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    iput-object p4, v1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    .line 1397
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_sendReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 1398
    iget p4, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->flags:I

    or-int/2addr p4, v2

    iput p4, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->flags:I

    .line 1399
    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 1401
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController;->updateStoryItem(JLorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 1402
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda29;->INSTANCE:Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda29;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public sortHiddenStories()V
    .locals 3

    .line 2665
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController;->sortDialogStories(Ljava/util/ArrayList;)V

    .line 2666
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public toggleHidden(JZZZ)V
    .locals 8

    if-eqz p3, :cond_0

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    .line 341
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    .line 344
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    .line 348
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    .line 349
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    cmp-long v4, v6, p1

    if-nez v4, :cond_1

    .line 351
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v5

    :goto_2
    const/4 v3, 0x1

    if-eqz v0, :cond_5

    move v4, v2

    .line 360
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 361
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    cmp-long v6, v6, p1

    if-nez v6, :cond_3

    move v4, v3

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_4
    if-nez v4, :cond_5

    .line 367
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->sortStoriesRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->sortStoriesRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_5
    if-eqz p5, :cond_6

    .line 373
    iget p5, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p5

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p5, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 375
    :cond_6
    iget p5, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    invoke-virtual {p5}, Lorg/telegram/messenger/MessagesController;->checkArchiveFolder()V

    if-eqz p4, :cond_7

    .line 377
    iget p4, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p4, p5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p4

    .line 378
    iput-boolean p3, p4, Lorg/telegram/tgnet/TLRPC$User;->stories_hidden:Z

    .line 379
    iget p5, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p5

    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p5, v0, v5, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 380
    iget p5, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    invoke-virtual {p5, p4, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 381
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleStoriesHidden;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleStoriesHidden;-><init>()V

    .line 382
    iget p5, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    invoke-virtual {p5, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p1

    iput-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleStoriesHidden;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 383
    iput-boolean p3, p4, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleStoriesHidden;->hidden:Z

    .line 384
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda30;->INSTANCE:Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda30;

    invoke-virtual {p1, p4, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_7
    return-void
.end method

.method public updateBlockUser(JZ)V
    .locals 1

    const/4 v0, 0x1

    .line 2815
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Stories/StoriesController;->updateBlockUser(JZZ)V

    return-void
.end method

.method public updateBlockUser(JZZ)V
    .locals 3

    .line 2819
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2820
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    if-eqz v1, :cond_0

    goto :goto_2

    .line 2824
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blockedOverride:Landroidx/collection/LongSparseArray;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2825
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, p3, :cond_2

    if-eqz p3, :cond_1

    .line 2827
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2828
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistCount:I

    goto :goto_0

    .line 2830
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2831
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistCount:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistCount:I

    :cond_2
    :goto_0
    if-eqz p4, :cond_4

    if-eqz p3, :cond_3

    .line 2838
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_block;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_block;-><init>()V

    .line 2839
    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_block;->my_stories_from:Z

    .line 2840
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_block;->id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    .line 2843
    :cond_3
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;-><init>()V

    .line 2844
    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;->my_stories_from:Z

    .line 2845
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;->id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2848
    :goto_1
    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2851
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesBlocklistUpdate:I

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public updateBlockedUsers(Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 2754
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_setBlocked;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_setBlocked;-><init>()V

    const/4 v1, 0x1

    .line 2755
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_setBlocked;->my_stories_from:Z

    .line 2756
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_setBlocked;->limit:I

    .line 2757
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistCount:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistCount:I

    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 2759
    iput v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistCount:I

    .line 2761
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 2762
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2763
    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2764
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    if-eqz v4, :cond_2

    goto :goto_0

    .line 2767
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2768
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_setBlocked;->id:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2770
    :cond_3
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistCount:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklistCount:I

    .line 2771
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_setBlocked;->limit:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->blocklist:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_setBlocked;->limit:I

    .line 2772
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda19;

    invoke-direct {v1, p2}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda19;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public updateDeletedStoriesInLists(JLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$StoryItem;",
            ">;)V"
        }
    .end annotation

    .line 1991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDeletedStoriesInLists "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " storyItems["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/StoriesController;->storyItemIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1992
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesList(JIZ)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object v1

    const/4 v2, 0x1

    .line 1993
    invoke-direct {p0, p1, p2, v2, v0}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesList(JIZ)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object p1

    if-eqz v1, :cond_0

    .line 1995
    invoke-virtual {v1, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updateDeletedStories(Ljava/util/List;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1998
    invoke-virtual {p1, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updateDeletedStories(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public updateStoriesInLists(JLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$StoryItem;",
            ">;)V"
        }
    .end annotation

    .line 1979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateStoriesInLists "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " storyItems["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/StoriesController;->storyItemIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1980
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesList(JIZ)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object v1

    const/4 v2, 0x1

    .line 1981
    invoke-direct {p0, p1, p2, v2, v0}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesList(JIZ)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object p1

    if-eqz v1, :cond_0

    .line 1983
    invoke-virtual {v1, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updateStories(Ljava/util/List;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1986
    invoke-virtual {p1, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updateStories(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public updateStoriesPinned(Ljava/util/ArrayList;ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$StoryItem;",
            ">;Z",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 973
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_togglePinned;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_togglePinned;-><init>()V

    const/4 v1, 0x0

    .line 974
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 975
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 976
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 979
    :cond_0
    iput-boolean p2, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->pinned:Z

    .line 981
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_togglePinned;->id:Ljava/util/ArrayList;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "StoriesController updateStoriesPinned"

    .line 983
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 984
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/ui/Stories/StoriesController;->updateStoriesInLists(JLjava/util/List;)V

    .line 985
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_togglePinned;->pinned:Z

    .line 986
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda20;

    invoke-direct {p2, p3}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public updateStoryItem(JLorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 4

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoriesController updateStoryItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 999
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesStorage;->updateStoryItem(JLorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 1000
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController;->updateStoriesInLists(JLjava/util/List;)V

    return-void
.end method

.method public updateStoryReaction(JILorg/telegram/tgnet/TLRPC$Reaction;)V
    .locals 1

    .line 1408
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController;->findStory(JI)Lorg/telegram/tgnet/TLRPC$StoryItem;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 1410
    iput-object p4, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-eqz p4, :cond_0

    .line 1412
    iget p4, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->flags:I

    const v0, 0x8000

    or-int/2addr p4, v0

    iput p4, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->flags:I

    goto :goto_0

    .line 1414
    :cond_0
    iget p4, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->flags:I

    const v0, -0x8001

    and-int/2addr p4, v0

    iput p4, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->flags:I

    .line 1416
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController;->updateStoryItem(JLorg/telegram/tgnet/TLRPC$StoryItem;)V

    :cond_1
    return-void
.end method

.method public uploadStory(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V
    .locals 1

    .line 593
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;-><init>(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    if-eqz p2, :cond_1

    .line 595
    iget-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz p2, :cond_0

    .line 596
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->editingStories:Ljava/util/HashMap;

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 598
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingAndEditingStories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->start()V

    .line 603
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
