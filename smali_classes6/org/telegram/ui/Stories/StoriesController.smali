.class public Lorg/telegram/ui/Stories/StoriesController;
.super Ljava/lang/Object;
.source "StoriesController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.method public static synthetic $r8$lambda$VkoN3YGNUkdlITREVJL03li3Jk4(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/tgnet/TLRPC$TL_userStories;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->lambda$new$21(Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/tgnet/TLRPC$TL_userStories;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WMpfBq8-gNHL5W1hCGzixJn-ZvI(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->lambda$updateStoriesPinned$16(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

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

.method public static synthetic $r8$lambda$hB1cEm_YX8gDpbH3pmjbcHTVJlc(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->lambda$deleteStory$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hoqXsz7QdDA_lUZTUQ5P1Sn0dog(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->lambda$deleteStories$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lW_xKO1TTYfRcbbwoCc1MlGd5N8(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/messenger/support/LongSparseIntArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->lambda$new$1(Lorg/telegram/messenger/support/LongSparseIntArray;)V

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

    .line 151
    sget-object v0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda13;->INSTANCE:Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda13;

    invoke-static {v0}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Stories/StoriesController;->storiesComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingStories:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingAndEditingStories:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->editingStories:Ljava/util/HashMap;

    .line 139
    new-instance v0, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v0}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    .line 146
    new-instance v0, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v0}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingDialogsStories:Lorg/telegram/messenger/support/LongSparseIntArray;

    const-string v0, ""

    .line 158
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->state:Ljava/lang/String;

    .line 169
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->selfViewsModel:Landroid/util/SparseArray;

    const/4 v1, 0x1

    .line 171
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMoreHidden:Z

    .line 172
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController;->firstLoad:Z

    .line 791
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesLoading:Ljava/util/HashSet;

    .line 1072
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingAllStories:Ljava/util/HashSet;

    .line 1138
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->resolvedStories:Landroidx/collection/LongSparseArray;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/HashMap;

    .line 1666
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesLists:[Ljava/util/HashMap;

    .line 2303
    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/StoriesController;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->userStoriesComparator:Ljava/util/Comparator;

    .line 175
    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    .line 176
    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Stories/StoriesStorage;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    .line 177
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    const-string v2, "last_stories_state"

    .line 178
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->state:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    const-string v2, "last_stories_state_hidden"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->stateHidden:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    const-string v1, "total_stores_hidden"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCountHidden:I

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    const-string v1, "total_stores"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    const-string v1, "read_loaded"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesReadLoaded:Z

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isStoriesEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isStoriesEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->isEnabled:Z

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isStoriesBarEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isStoriesBarEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->isBarEnabled:Z

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isStoriesAvatarsEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isStoriesAvatarsEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->isAvatarsEnabled:Z

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isStoriesProfileAvatarEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isStoriesProfileAvatarEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->isProfileAvatarEnabled:Z

    .line 189
    new-instance v0, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;-><init>(Lorg/telegram/ui/Stories/StoriesController;I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->pollingViewsForSelfStoriesRequester:Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesStorage;->getMaxReadIds(Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 192
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/StoriesController;I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->sortStoriesRunnable:Ljava/lang/Runnable;

    .line 198
    new-instance v0, Lorg/telegram/ui/Stories/recorder/DraftsController;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->draftsController:Lorg/telegram/ui/Stories/recorder/DraftsController;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/StoriesController;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/StoriesController;)Ljava/util/ArrayList;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingStories:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/StoriesController;)Ljava/util/ArrayList;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingAndEditingStories:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/StoriesController;)Ljava/util/HashMap;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesController;->editingStories:Ljava/util/HashMap;

    return-object p0
.end method

.method private addUserToHiddenList(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V
    .locals 6

    .line 482
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

    .line 485
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 486
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

    .line 491
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_3
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->checkArchiveFolder()V

    return-void
.end method

.method private applyNewStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V
    .locals 4

    .line 602
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {v0, v1, v2, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 603
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 604
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 605
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->applyToList(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    if-eqz v0, :cond_0

    .line 606
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->stories_hidden:Z

    if-nez v0, :cond_0

    .line 607
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->preloadUserStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    .line 610
    :cond_0
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

    .line 620
    :cond_1
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->min:Z

    if-eqz v0, :cond_5

    .line 621
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->pinned:Z

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->pinned:Z

    .line 622
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->isPublic:Z

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->isPublic:Z

    .line 623
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->close_friends:Z

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->close_friends:Z

    .line 624
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->date:I

    if-eqz v0, :cond_2

    .line 625
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->date:I

    .line 627
    :cond_2
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->expire_date:I

    if-eqz v0, :cond_3

    .line 628
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->expire_date:I

    .line 630
    :cond_3
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->caption:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->caption:Ljava/lang/String;

    .line 631
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->entities:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->entities:Ljava/util/ArrayList;

    .line 632
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_4

    .line 633
    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    :cond_4
    return-object p0

    :cond_5
    return-object p1
.end method

.method private applyToList(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V
    .locals 9

    .line 756
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

    .line 758
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 762
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 763
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget-wide v7, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_1

    .line 764
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

    .line 769
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 770
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget-wide v7, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 771
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move v4, v2

    .line 776
    :goto_3
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_5

    .line 777
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

    .line 779
    :cond_5
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->stories_hidden:Z

    if-eqz v0, :cond_6

    .line 780
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 782
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_4
    if-nez v4, :cond_7

    .line 786
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->loadAllStoriesForDialog(J)V

    .line 788
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

    .line 1253
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1254
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move v4, v0

    .line 1255
    :goto_1
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    .line 1256
    iget v5, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-static {v5, v7}, Lorg/telegram/ui/Stories/StoriesUtilities;->isExpired(ILorg/telegram/tgnet/TLRPC$StoryItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1257
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    :cond_0
    add-int/2addr v4, v6

    goto :goto_1

    .line 1261
    :cond_1
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1262
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {v2, v4, v5}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 1263
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v2, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 1268
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private fixDeletedAndNonContactsStories(Ljava/util/ArrayList;)V
    .locals 6
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

    .line 232
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 233
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    .line 234
    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 235
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-nez v3, :cond_0

    .line 236
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_0
    move v3, v0

    .line 239
    :goto_1
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 240
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v4, :cond_1

    .line 241
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 245
    :cond_2
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 246
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private getSelfUserId()J
    .locals 2

    .line 926
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method private getStoriesList(JIZ)Lorg/telegram/ui/Stories/StoriesController$StoriesList;
    .locals 9

    .line 1674
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesLists:[Ljava/util/HashMap;

    aget-object v1, v0, p3

    if-nez v1, :cond_0

    .line 1675
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, p3

    .line 1677
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesLists:[Ljava/util/HashMap;

    aget-object v0, v0, p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    .line 1679
    iget-object p4, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesLists:[Ljava/util/HashMap;

    aget-object p4, p4, p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v8, Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda14;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/StoriesController;)V

    const/4 v7, 0x0

    move-object v1, v8

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;-><init>(IJILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Stories/StoriesController$1;)V

    invoke-virtual {p4, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v8

    :cond_1
    return-object v0
.end method

.method private isPremium(J)Z
    .locals 1

    .line 2330
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

    .line 2334
    :cond_0
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    return p1
.end method

.method private static synthetic lambda$deleteStories$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$deleteStory$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$loadAllStoriesForDialog$11(JLorg/telegram/tgnet/TLObject;)V
    .locals 6

    .line 802
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesLoading:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-nez p3, :cond_0

    return-void

    .line 806
    :cond_0
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_stories_userStories;

    .line 807
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_userStories;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 808
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 809
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_userStories;->stories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    .line 810
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {v3, v4, v5, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 811
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-nez v3, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v0, :cond_2

    .line 812
    :cond_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/StoriesController;->applyToList(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    .line 813
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesStorage;->putUserStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    .line 816
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

    .line 817
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

    .line 801
    new-instance p4, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda6;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/StoriesController;JLorg/telegram/tgnet/TLObject;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadFromServer$7(ZLorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 372
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingFromServerHidden:Z

    goto :goto_0

    .line 374
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingFromServer:Z

    .line 376
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

    .line 377
    instance-of p2, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;

    const-string v1, "last_stories_has_more"

    const-string v2, "last_stories_state"

    const-string v3, "last_stories_has_more_hidden"

    const-string v4, "last_stories_state_hidden"

    if-eqz p2, :cond_2

    .line 378
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;

    if-nez p1, :cond_1

    .line 380
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->count:I

    iput p2, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    .line 381
    iget-boolean p2, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->has_more:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMore:Z

    .line 382
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->state:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->state:Ljava/lang/String;

    .line 383
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController;->state:Ljava/lang/String;

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMore:Z

    .line 384
    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    const-string v2, "total_stores"

    .line 385
    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 386
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 388
    :cond_1
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->count:I

    iput p2, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCountHidden:I

    .line 389
    iget-boolean p2, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->has_more:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMoreHidden:Z

    .line 390
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->state:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->stateHidden:Ljava/lang/String;

    .line 391
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->stateHidden:Ljava/lang/String;

    invoke-interface {p2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMoreHidden:Z

    .line 392
    invoke-interface {p2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCountHidden:I

    const-string v2, "total_stores_hidden"

    .line 393
    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 394
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 396
    :goto_1
    invoke-direct {p0, p3, p1, v0, p4}, Lorg/telegram/ui/Stories/StoriesController;->processAllStoriesResponse(Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;ZZZ)V

    goto :goto_4

    .line 397
    :cond_2
    instance-of p2, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStoriesNotModified;

    if-eqz p2, :cond_5

    if-nez p1, :cond_3

    .line 399
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMore:Z

    .line 400
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStoriesNotModified;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStoriesNotModified;->state:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->state:Ljava/lang/String;

    .line 401
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesController;->state:Ljava/lang/String;

    invoke-interface {p2, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 403
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {p2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMoreHidden:Z

    .line 404
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStoriesNotModified;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_allStoriesNotModified;->state:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->stateHidden:Ljava/lang/String;

    .line 405
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesController;->stateHidden:Ljava/lang/String;

    invoke-interface {p2, v4, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_2
    if-eqz p1, :cond_4

    .line 407
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMoreHidden:Z

    goto :goto_3

    :cond_4
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMore:Z

    :goto_3
    if-eqz p1, :cond_5

    .line 409
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

    .line 370
    new-instance p5, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda9;

    move-object v0, p5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/StoriesController;ZLorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadSkippedStories$19(JZLorg/telegram/tgnet/TLRPC$TL_userStories;JLorg/telegram/tgnet/TLObject;)V
    .locals 3

    .line 1103
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingAllStories:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1104
    :cond_0
    invoke-virtual {p0, p5, p6}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object p4

    :goto_0
    if-nez p4, :cond_1

    return-void

    .line 1108
    :cond_1
    instance-of p1, p7, Lorg/telegram/tgnet/TLRPC$TL_stories_stories;

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 1109
    check-cast p7, Lorg/telegram/tgnet/TLRPC$TL_stories_stories;

    move p1, p2

    .line 1110
    :goto_1
    iget-object v0, p7, Lorg/telegram/tgnet/TLRPC$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    move v0, p2

    .line 1111
    :goto_2
    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1112
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

    .line 1113
    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    iget-object v2, p7, Lorg/telegram/tgnet/TLRPC$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1114
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

    .line 1119
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Stories/StoriesStorage;->updateStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    .line 1122
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

    .line 1102
    new-instance v9, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda7;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/StoriesController;JZLorg/telegram/tgnet/TLRPC$TL_userStories;JLorg/telegram/tgnet/TLObject;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadStories$5(Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;)V
    .locals 2

    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingFromDatabase:Z

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 272
    invoke-direct {p0, p1, v0, v1, v0}, Lorg/telegram/ui/Stories/StoriesController;->processAllStoriesResponse(Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;ZZZ)V

    .line 273
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController;->loadFromServer(Z)V

    .line 274
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/StoriesController;->loadFromServer(Z)V

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController;->cleanup()V

    .line 277
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController;->loadStories()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$loadStoriesRead$3()V
    .locals 3

    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesReadLoaded:Z

    .line 221
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

    .line 214
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    if-nez p1, :cond_0

    return-void

    .line 218
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

    .line 219
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/StoriesController;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$markStoriesAsReadFromServer$18(JI)V
    .locals 3

    .line 972
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 973
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v2, p1, p2, v0}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    .line 974
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-virtual {v2, p1, p2, v0}, Lorg/telegram/ui/Stories/StoriesStorage;->updateMaxReadId(JI)V

    .line 975
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 979
    :cond_0
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    if-le p3, p2, :cond_1

    .line 980
    iput p3, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    .line 981
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->userStoriesComparator:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 982
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

    .line 190
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    return-void
.end method

.method private synthetic lambda$new$2(I)V
    .locals 2

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController;->sortDialogStories(Ljava/util/ArrayList;)V

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController;->sortDialogStories(Ljava/util/ArrayList;)V

    .line 195
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$21(Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/tgnet/TLRPC$TL_userStories;)I
    .locals 3

    .line 2304
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->hasUnreadStories(J)Z

    move-result v0

    .line 2305
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->hasUnreadStories(J)Z

    move-result v1

    if-ne v0, v1, :cond_4

    .line 2307
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v0

    .line 2308
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v1

    if-ne v0, v1, :cond_3

    .line 2310
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->isPremium(J)Z

    move-result v0

    .line 2311
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->isPremium(J)Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2313
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

    .line 2314
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

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->user_id:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoriesController update stories for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->user_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 653
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->user_id:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->story:Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->updateStoriesInLists(JLjava/util/List;)V

    .line 655
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 656
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    .line 657
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->user_id:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_d

    .line 661
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->story:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 662
    instance-of v7, p1, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v7, :cond_0

    .line 663
    iget v7, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v7

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v7, v3, v4, v8}, Lorg/telegram/messenger/NotificationsController;->processDeleteStory(JI)V

    :cond_0
    move v7, v5

    .line 666
    :goto_0
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 667
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget v9, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v8, v9, :cond_4

    .line 669
    instance-of v8, p1, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v8, :cond_1

    .line 670
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 671
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

    .line 674
    :cond_1
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 675
    invoke-static {v8, p1}, Lorg/telegram/ui/Stories/StoriesController;->applyStoryUpdate(Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/tgnet/TLRPC$StoryItem;)Lorg/telegram/tgnet/TLRPC$StoryItem;

    move-result-object p1

    .line 676
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v9, v7, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 678
    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 679
    iget-object v7, v8, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    iput-object v7, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    .line 681
    :cond_2
    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->firstFramePath:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 682
    iget-object v7, v8, Lorg/telegram/tgnet/TLRPC$StoryItem;->firstFramePath:Ljava/lang/String;

    iput-object v7, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->firstFramePath:Ljava/lang/String;

    .line 684
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

    .line 690
    instance-of v7, p1, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v7, :cond_6

    const-string p1, "StoriesController can\'t add new story DELETED"

    .line 691
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    .line 694
    :cond_6
    iget v7, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v7, p1}, Lorg/telegram/ui/Stories/StoriesUtilities;->isExpired(ILorg/telegram/tgnet/TLRPC$StoryItem;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string p1, "StoriesController can\'t add new story isExpired"

    .line 695
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :cond_7
    if-eqz p2, :cond_9

    .line 698
    iget-boolean v7, p2, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v7, :cond_8

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-nez p2, :cond_8

    goto :goto_3

    .line 702
    :cond_8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
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

    .line 706
    invoke-direct {p0, v3, v4, p1}, Lorg/telegram/ui/Stories/StoriesController;->preloadStory(JLorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 708
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController;->applyToList(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    move p1, v6

    move v8, p1

    goto :goto_4

    :cond_9
    :goto_3
    const-string p1, "StoriesController can\'t add new story user is not contact"

    .line 699
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    move p1, v5

    :goto_4
    if-eqz v8, :cond_c

    .line 711
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 712
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 713
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 714
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 715
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    sub-int/2addr p1, v6

    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    goto/16 :goto_5

    .line 717
    :cond_b
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    sget-object p2, Lorg/telegram/ui/Stories/StoriesController;->storiesComparator:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_5

    :cond_c
    move v6, p1

    goto/16 :goto_5

    .line 722
    :cond_d
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->story:Lorg/telegram/tgnet/TLRPC$StoryItem;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    const-string v3, "StoriesController can\'t add user "

    if-eqz v1, :cond_e

    .line 723
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

    .line 726
    :cond_e
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v1, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->isExpired(ILorg/telegram/tgnet/TLRPC$StoryItem;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 727
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

    .line 730
    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v0, :cond_10

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-nez p2, :cond_10

    goto :goto_6

    .line 734
    :cond_10
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_userStories;-><init>()V

    .line 735
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->user_id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    .line 736
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->story:Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
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

    .line 738
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/StoriesController;->applyNewStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    .line 740
    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    add-int/2addr p2, v6

    iput p2, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    .line 741
    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->user_id:J

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadAllStoriesForDialog(J)V

    .line 743
    :goto_5
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    if-eq v2, p1, :cond_11

    .line 744
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController;->totalStoriesCount:I

    const-string v0, "total_stores"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 746
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->fixDeletedAndNonContactsStories(Ljava/util/ArrayList;)V

    .line 747
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->fixDeletedAndNonContactsStories(Ljava/util/ArrayList;)V

    if-eqz v6, :cond_12

    .line 749
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 751
    :cond_12
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->checkArchiveFolder()V

    return-void

    :cond_13
    :goto_6
    const-string p1, "StoriesController can\'t add user cause is not contact"

    .line 731
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$static$0(Lorg/telegram/tgnet/TLRPC$StoryItem;)I
    .locals 0

    .line 151
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->date:I

    return p0
.end method

.method private static synthetic lambda$toggleHidden$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

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

    .line 920
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$updateStoriesPinned$16(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 918
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadAllStoriesForDialog(J)V
    .locals 3

    .line 794
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesLoading:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 797
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesLoading:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoriesController loadAllStoriesForDialog "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 799
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getUserStories;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_getUserStories;-><init>()V

    .line 800
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getUserStories;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 801
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Stories/StoriesController;J)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private loadFromServer(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 349
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

    .line 353
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingFromServerHidden:Z

    goto :goto_0

    .line 355
    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingFromServer:Z

    .line 357
    :goto_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;-><init>()V

    if-eqz p1, :cond_5

    .line 358
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->stateHidden:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->state:Ljava/lang/String;

    :goto_1
    if-eqz p1, :cond_6

    .line 359
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMoreHidden:Z

    goto :goto_2

    :cond_6
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMore:Z

    .line 360
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 361
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;->state:Ljava/lang/String;

    .line 362
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;->flags:I

    or-int/2addr v4, v0

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;->flags:I

    :cond_7
    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 365
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 366
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;->next:Z

    goto :goto_3

    :cond_8
    move v0, v4

    .line 368
    :goto_3
    iput-boolean p1, v1, Lorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;->include_hidden:Z

    .line 370
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0, p1, v1, v0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stories/StoriesController;ZLorg/telegram/tgnet/TLRPC$TL_stories_getAllStories;Z)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private loadStoriesRead()V
    .locals 3

    .line 209
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesReadLoaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 212
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_getAllReadUserStories;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_getAllReadUserStories;-><init>()V

    .line 213
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stories/StoriesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private preloadStory(JLorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 7

    .line 522
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 525
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController;->canPreloadStories()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 529
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

    .line 530
    :goto_0
    iput-wide p1, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    if-eqz v0, :cond_3

    .line 532
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 p2, 0x3e8

    invoke-static {p1, p2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    .line 533
    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {p2, v0, p3, v2, v1}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 534
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

    .line 536
    :cond_3
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    :goto_1
    if-eqz p1, :cond_5

    .line 537
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    const v0, 0x7fffffff

    .line 538
    invoke-static {p2, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p2

    .line 539
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

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 424
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoriesController processAllStoriesResponse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->user_stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 426
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    move v0, v2

    .line 428
    :goto_1
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->user_stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 429
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->user_stories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move v3, v2

    .line 430
    :goto_2
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 431
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v4, :cond_2

    .line 432
    iget v4, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v4

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/messenger/NotificationsController;->processDeleteStory(JI)V

    .line 433
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 437
    :cond_3
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 438
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {v3, v4, v5, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    move v3, v2

    :goto_3
    const/4 v4, 0x2

    if-ge v3, v4, :cond_7

    if-nez v3, :cond_4

    .line 440
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    :goto_4
    move v5, v2

    .line 442
    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 443
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 444
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 450
    :cond_7
    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_7

    .line 454
    :cond_8
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->stories_hidden:Z

    if-eqz v3, :cond_9

    .line 455
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/StoriesController;->addUserToHiddenList(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    goto :goto_7

    .line 457
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/StoriesController;->preloadUserStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    goto :goto_7

    .line 461
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->remove(J)V

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_b
    if-nez p3, :cond_c

    .line 465
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_allStories;->user_stories:Ljava/util/ArrayList;

    sget-object v0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda11;->INSTANCE:Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda11;

    invoke-virtual {p3, p1, p4, p2, v0}, Lorg/telegram/ui/Stories/StoriesStorage;->saveAllStories(Ljava/util/ArrayList;ZZLjava/lang/Runnable;)V

    .line 477
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->sortUserStories()V

    return-void
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

    .line 227
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->fixDeletedAndNonContactsStories(Ljava/util/ArrayList;)V

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->userStoriesComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private sortUserStories()V
    .locals 1

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->sortStoriesRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 498
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->sortStoriesRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public checkExpiredStories()V
    .locals 1

    .line 1247
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController;->checkExpireStories(Ljava/util/ArrayList;)V

    .line 1248
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController;->checkExpireStories(Ljava/util/ArrayList;)V

    return-void
.end method

.method public checkExpiredStories(J)V
    .locals 3

    .line 1273
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    .line 1274
    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1275
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->isExpired(ILorg/telegram/tgnet/TLRPC$StoryItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1276
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1280
    :cond_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1281
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1282
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1283
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public cleanup()V
    .locals 3

    const/4 v0, 0x0

    .line 1052
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesReadLoaded:Z

    const-string v1, ""

    .line 1053
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->stateHidden:Ljava/lang/String;

    .line 1054
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->state:Ljava/lang/String;

    .line 1055
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "stories_loaded"

    .line 1056
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_stories_state"

    .line 1057
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "stories_loaded_hidden"

    .line 1058
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_stories_state_hidden"

    .line 1059
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "read_loaded"

    .line 1060
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1061
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1062
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->draftsController:Lorg/telegram/ui/Stories/recorder/DraftsController;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/recorder/DraftsController;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1064
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController;->loadStories()V

    .line 1065
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

    .line 877
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_deleteStories;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_deleteStories;-><init>()V

    .line 878
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    const/4 v2, 0x0

    move v3, v2

    .line 879
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 880
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 881
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v5, :cond_1

    goto :goto_3

    :cond_1
    if-eqz v1, :cond_3

    move v5, v2

    .line 885
    :goto_1
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 886
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v6, v7, :cond_2

    .line 887
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 888
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 889
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->remove(J)V

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 895
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

    .line 897
    :cond_4
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget-object v3, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda22;->INSTANCE:Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda22;

    invoke-virtual {v1, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 900
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, p1}, Lorg/telegram/ui/Stories/StoriesController;->updateDeletedStoriesInLists(JLjava/util/List;)V

    .line 901
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_deleteStories;->id:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4, v0}, Lorg/telegram/ui/Stories/StoriesStorage;->deleteStories(JLjava/util/ArrayList;)V

    .line 902
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

    .line 843
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 846
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

    .line 848
    :goto_0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 849
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ne v3, v4, :cond_1

    .line 850
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 851
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 852
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 853
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 854
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 860
    :cond_2
    :goto_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_deleteStories;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_deleteStories;-><init>()V

    .line 861
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_deleteStories;->id:Ljava/util/ArrayList;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    sget-object v3, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda21;->INSTANCE:Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda21;

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 867
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v2

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Stories/StoriesStorage;->deleteStory(JI)V

    .line 868
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 869
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->checkArchiveFolder()V

    .line 870
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

    .line 1707
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesLists:[Ljava/util/HashMap;

    iget v1, p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 1708
    aget-object v0, v0, v1

    iget-wide v1, p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public fillMessagesWithStories(Landroidx/collection/LongSparseArray;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1135
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/StoriesStorage;->fillMessagesWithStories(Landroidx/collection/LongSparseArray;Ljava/lang/Runnable;)V

    return-void
.end method

.method public findEditingStory(Lorg/telegram/tgnet/TLRPC$StoryItem;)Lorg/telegram/ui/Stories/StoriesController$UploadingStory;
    .locals 4

    if-eqz p1, :cond_1

    .line 584
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 587
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

    .line 559
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->draftsController:Lorg/telegram/ui/Stories/recorder/DraftsController;

    return-object v0
.end method

.method public getEditingStory()Lorg/telegram/ui/Stories/StoriesController$UploadingStory;
    .locals 3

    .line 591
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->editingStories:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 594
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->editingStories:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 595
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 598
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

    .line 1178
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMyStoriesCount()I
    .locals 3

    .line 575
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingAndEditingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 576
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 578
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getSelfStoriesCount()I
    .locals 3

    .line 834
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

    .line 836
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    .line 838
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;
    .locals 1

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    return-object p1
.end method

.method public getStoriesList(JI)Lorg/telegram/ui/Stories/StoriesController$StoriesList;
    .locals 1

    const/4 v0, 0x1

    .line 1670
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesList(JIZ)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object p1

    return-object p1
.end method

.method public getStoriesStorage()Lorg/telegram/ui/Stories/StoriesStorage;
    .locals 1

    .line 1239
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    return-object v0
.end method

.method public getTotalStoriesCount(Z)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1193
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

    .line 1195
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

    .line 1009
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(JI)I

    move-result p1

    return p1
.end method

.method public getUnreadState(JI)I
    .locals 5

    .line 1013
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    if-nez v0, :cond_0

    .line 1015
    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1017
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 1023
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v2, p1, v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 1024
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    .line 1029
    :cond_2
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v4, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    move p2, v1

    move v2, p2

    .line 1030
    :goto_0
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_6

    if-eqz p3, :cond_3

    .line 1031
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

    .line 1033
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

    .line 1182
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    const/4 p2, 0x0

    move v0, p2

    .line 1183
    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1184
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-ge v1, v2, :cond_0

    .line 1185
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

    .line 571
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

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingStories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasHiddenStories()Z
    .locals 1

    .line 1243
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasLoadingStories()Z
    .locals 1

    .line 1288
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

    .line 2346
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

    .line 822
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

    .line 823
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 826
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

    .line 263
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
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasUnreadStories(J)Z
    .locals 4

    .line 988
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 992
    :cond_0
    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long p1, p1, v2

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 993
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    return p2

    :cond_1
    move p1, v1

    .line 997
    :goto_0
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 1001
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

    .line 1046
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

.method public isAvatarsEnabled()Z
    .locals 1

    .line 92
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

    .line 88
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

.method public isEnabled()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->isEnabled:Z

    return v0
.end method

.method public isLoading(J)Z
    .locals 2

    .line 1217
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

    .line 96
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

    .line 202
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->firstLoad:Z

    if-nez v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController;->loadStories()V

    .line 204
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->loadStoriesRead()V

    :cond_0
    return-void
.end method

.method public loadHiddenStories()V
    .locals 1

    .line 288
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMoreHidden:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 289
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController;->loadFromServer(Z)V

    :cond_0
    return-void
.end method

.method public loadNextStories(Z)V
    .locals 1

    .line 1129
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hasMore:Z

    if-eqz v0, :cond_0

    .line 1130
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->loadFromServer(Z)V

    :cond_0
    return-void
.end method

.method loadSkippedStories(J)V
    .locals 0

    .line 1075
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

    .line 1082
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

    .line 1084
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

    .line 1089
    :goto_1
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 1090
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_storyItemSkipped;

    if-eqz v4, :cond_4

    if-nez v0, :cond_3

    .line 1092
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1094
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

    .line 1098
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingAllStories:Ljava/util/HashSet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1099
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesByID;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesByID;-><init>()V

    .line 1100
    iput-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesByID;->id:Ljava/util/ArrayList;

    .line 1101
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesByID;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1102
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda18;

    move-object v0, v10

    move-object v1, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stories/StoriesController;JZLorg/telegram/tgnet/TLRPC$TL_userStories;J)V

    invoke-virtual {v9, v8, v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_6
    return-void
.end method

.method public loadStories()V
    .locals 3

    .line 267
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController;->firstLoad:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 268
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingFromDatabase:Z

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoriesController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesStorage;->getAllStories(Lcom/google/android/exoplayer2/util/Consumer;)V

    goto :goto_0

    .line 281
    :cond_0
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/StoriesController;->loadFromServer(Z)V

    .line 282
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/StoriesController;->loadFromServer(Z)V

    .line 284
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController;->firstLoad:Z

    return-void
.end method

.method public markStoriesAsReadFromServer(JI)V
    .locals 1

    .line 971
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/StoriesController;JI)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public markStoryAsRead(JLorg/telegram/tgnet/TLRPC$StoryItem;)Z
    .locals 1

    .line 935
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object v0

    if-nez v0, :cond_0

    .line 937
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p1

    .line 938
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    :cond_0
    const/4 p1, 0x0

    .line 940
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

    .line 947
    :cond_0
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    .line 948
    iget v3, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    .line 949
    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->justUploaded:Z

    .line 951
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v3

    .line 952
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    iget v5, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 953
    iget v5, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v4}, Lorg/telegram/messenger/NotificationsController;->processReadStories(JI)V

    .line 954
    iput v4, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    .line 955
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p1, v1, v2, v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    if-le v4, v3, :cond_3

    if-nez p3, :cond_2

    .line 958
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-virtual {p1, v1, v2, v4}, Lorg/telegram/ui/Stories/StoriesStorage;->updateMaxReadId(JI)V

    .line 960
    :cond_2
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_stories_readStories;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_stories_readStories;-><init>()V

    .line 961
    iget p3, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p3

    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_readStories;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 962
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_stories_readStories;->max_id:I

    .line 963
    iget p2, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    sget-object p3, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda23;->INSTANCE:Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda23;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public pollViewsForSelfStories(Z)V
    .locals 1

    .line 1069
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->pollingViewsForSelfStoriesRequester:Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/ViewsForSelfStoriesRequester;->start(Z)V

    return-void
.end method

.method public preloadUserStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 503
    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 504
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

    .line 509
    :cond_1
    :goto_1
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 512
    :cond_2
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->preloadStory(JLorg/telegram/tgnet/TLRPC$StoryItem;)V

    if-lez v0, :cond_3

    .line 514
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->preloadStory(JLorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 516
    :cond_3
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    .line 517
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

    .line 643
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStory;->story:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-nez v0, :cond_0

    return-void

    .line 646
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

    .line 647
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v1, :cond_2

    .line 648
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->processUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateStory;)V

    .line 650
    :cond_2
    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/tgnet/TLRPC$TL_updateStory;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public putStories(JLorg/telegram/tgnet/TLRPC$TL_userStories;)V
    .locals 1

    .line 1200
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->allStoriesMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1201
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 1202
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-nez p2, :cond_0

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz p1, :cond_1

    .line 1203
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Stories/StoriesStorage;->putUserStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    .line 1204
    invoke-direct {p0, p3}, Lorg/telegram/ui/Stories/StoriesController;->applyToList(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    :cond_1
    return-void
.end method

.method public removeContact(J)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1221
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1222
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1223
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v1, v0

    .line 1227
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1228
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 1229
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1233
    :cond_3
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/Stories/StoriesStorage;->deleteAllUserStories(J)V

    .line 1234
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->checkArchiveFolder()V

    .line 1235
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

    .line 1141
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1143
    :goto_0
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1144
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

    .line 1145
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

    .line 1151
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController;->resolvedStories:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v2, :cond_2

    .line 1153
    invoke-interface {p4, v2}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 1156
    :cond_2
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesByID;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesByID;-><init>()V

    .line 1157
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesByID;->id:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    iget p3, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p1

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_stories_getStoriesByID;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1159
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

    .line 121
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isStoriesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/StoriesController;->setEnabled(Z)V

    .line 122
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isStoriesBarEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/StoriesController;->setBarEnabled(Z)V

    .line 123
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isStoriesAvatarsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/StoriesController;->setAvatarsEnabled(Z)V

    .line 124
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isStoriesProfileAvatarEnabled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->setProfileAvatarEnabled(Z)V

    return-void
.end method

.method public scheduleSort()V
    .locals 1

    .line 2340
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->sortStoriesRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2341
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->sortStoriesRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public setAvatarsEnabled(Z)V
    .locals 2

    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController;->isAvatarsEnabled:Z

    .line 112
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

    .line 106
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController;->isBarEnabled:Z

    .line 107
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

    .line 100
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController;->isEnabled:Z

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->mainSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isStoriesEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
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

    .line 1210
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingDialogsStories:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2, v0}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    goto :goto_0

    .line 1212
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesController;->loadingDialogsStories:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/support/LongSparseIntArray;->delete(J)V

    :goto_0
    return-void
.end method

.method public setProfileAvatarEnabled(Z)V
    .locals 2

    .line 116
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController;->isProfileAvatarEnabled:Z

    .line 117
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

.method public sortHiddenStories()V
    .locals 3

    .line 2350
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController;->sortDialogStories(Ljava/util/ArrayList;)V

    .line 2351
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

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    .line 300
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->hiddenListStories:Ljava/util/ArrayList;

    .line 303
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogListStories:Ljava/util/ArrayList;

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    .line 307
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    .line 308
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    cmp-long v4, v6, p1

    if-nez v4, :cond_1

    .line 310
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

    .line 319
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 320
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

    .line 326
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->sortStoriesRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->sortStoriesRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_5
    if-eqz p5, :cond_6

    .line 332
    iget p5, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p5

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p5, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 334
    :cond_6
    iget p5, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    invoke-virtual {p5}, Lorg/telegram/messenger/MessagesController;->checkArchiveFolder()V

    if-eqz p4, :cond_7

    .line 336
    iget p4, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p4, p5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p4

    .line 337
    iput-boolean p3, p4, Lorg/telegram/tgnet/TLRPC$User;->stories_hidden:Z

    .line 338
    iget p5, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p5

    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p5, v0, v5, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 339
    iget p5, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    invoke-virtual {p5, p4, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 340
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleStoriesHidden;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleStoriesHidden;-><init>()V

    .line 341
    iget p5, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    invoke-virtual {p5, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p1

    iput-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleStoriesHidden;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 342
    iput-boolean p3, p4, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleStoriesHidden;->hidden:Z

    .line 343
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda20;->INSTANCE:Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda20;

    invoke-virtual {p1, p4, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_7
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

    const/4 v0, 0x0

    .line 1696
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesList(JIZ)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object v1

    const/4 v2, 0x1

    .line 1697
    invoke-direct {p0, p1, p2, v2, v0}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesList(JIZ)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object p1

    if-eqz v1, :cond_0

    .line 1699
    invoke-virtual {v1, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updateDeletedStories(Ljava/util/List;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1702
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

    const/4 v0, 0x0

    .line 1685
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesList(JIZ)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object v1

    const/4 v2, 0x1

    .line 1686
    invoke-direct {p0, p1, p2, v2, v0}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesList(JIZ)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object p1

    if-eqz v1, :cond_0

    .line 1688
    invoke-virtual {v1, p3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updateStories(Ljava/util/List;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1691
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

    .line 906
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_togglePinned;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_togglePinned;-><init>()V

    const/4 v1, 0x0

    .line 907
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 908
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 909
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 912
    :cond_0
    iput-boolean p2, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->pinned:Z

    .line 914
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_togglePinned;->id:Ljava/util/ArrayList;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 916
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfUserId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/ui/Stories/StoriesController;->updateStoriesInLists(JLjava/util/List;)V

    .line 917
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_togglePinned;->pinned:Z

    .line 918
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda15;

    invoke-direct {p2, p3}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public updateStoryItem(JLorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 1

    .line 930
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesStorage;->updateStoryItem(JLorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 931
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController;->updateStoriesInLists(JLjava/util/List;)V

    return-void
.end method

.method public uploadStory(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V
    .locals 1

    .line 545
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;-><init>(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    if-eqz p2, :cond_1

    .line 547
    iget-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz p2, :cond_0

    .line 548
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController;->editingStories:Ljava/util/HashMap;

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 550
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController;->uploadingAndEditingStories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->start()V

    .line 555
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
