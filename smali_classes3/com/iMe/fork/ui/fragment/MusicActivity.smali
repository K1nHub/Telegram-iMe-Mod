.class public final Lcom/iMe/fork/ui/fragment/MusicActivity;
.super Lcom/iMe/ui/pager/TelegramViewPagerFragment;
.source "MusicActivity.kt"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/fragment/MusicActivity$Companion;,
        Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMusicActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MusicActivity.kt\ncom/iMe/fork/ui/fragment/MusicActivity\n+ 2 LongSparseArray.kt\nandroidx/core/util/LongSparseArrayKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,346:1\n104#2,4:347\n1855#3,2:351\n*S KotlinDebug\n*F\n+ 1 MusicActivity.kt\ncom/iMe/fork/ui/fragment/MusicActivity\n*L\n226#1:347,4\n254#1:351,2\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/iMe/fork/ui/fragment/MusicActivity$Companion;

.field private static final notifications:[I


# instance fields
.field private final albums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final albumsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final bots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final botsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final channelsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final countsMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final musicCountComparator$delegate:Lkotlin/Lazy;

.field private parallelCounter:I

.field private parallelLoading:Z


# direct methods
.method public static synthetic $r8$lambda$1kxALjV_8oGAmJiAPpAxSw5oBgg(Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->notifyDialogsAdapters$lambda$6(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LqfbDJY1mgRgRLzKc9z5-9vJ90M(Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getThemeDescriptions$lambda$2$lambda$1(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    const-class v0, Lcom/iMe/fork/ui/fragment/MusicActivity;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 40
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "albumsAdapter"

    const-string v4, "getAlbumsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 43
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "channelsAdapter"

    const-string v4, "getChannelsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 46
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v4, "botsAdapter"

    const-string v6, "getBotsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;"

    invoke-direct {v2, v0, v4, v6, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/fork/ui/fragment/MusicActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/fork/ui/fragment/MusicActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/fragment/MusicActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/ui/fragment/MusicActivity;->Companion:Lcom/iMe/fork/ui/fragment/MusicActivity$Companion;

    new-array v0, v3, [I

    .line 339
    sget v1, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoad:I

    aput v1, v0, v5

    .line 338
    sput-object v0, Lcom/iMe/fork/ui/fragment/MusicActivity;->notifications:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;-><init>()V

    .line 40
    new-instance v0, Lcom/iMe/fork/ui/fragment/MusicActivity$albumsAdapter$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$albumsAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->albumsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 43
    new-instance v0, Lcom/iMe/fork/ui/fragment/MusicActivity$channelsAdapter$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$channelsAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->channelsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 46
    new-instance v0, Lcom/iMe/fork/ui/fragment/MusicActivity$botsAdapter$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$botsAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->botsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 49
    new-instance v0, Lcom/iMe/fork/ui/fragment/MusicActivity$musicCountComparator$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$musicCountComparator$2;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->musicCountComparator$delegate:Lkotlin/Lazy;

    .line 53
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->countsMap:Landroid/util/LongSparseArray;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->albums:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->channels:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->bots:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getAlbums$p(Lcom/iMe/fork/ui/fragment/MusicActivity;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->albums:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getBots$p(Lcom/iMe/fork/ui/fragment/MusicActivity;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->bots:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getChannels$p(Lcom/iMe/fork/ui/fragment/MusicActivity;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->channels:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getCountsMap$p(Lcom/iMe/fork/ui/fragment/MusicActivity;)Landroid/util/LongSparseArray;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->countsMap:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method public static final synthetic access$getParallelLoading$p(Lcom/iMe/fork/ui/fragment/MusicActivity;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->parallelLoading:Z

    return p0
.end method

.method private final getAlbumsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->albumsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/MusicActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    return-object v0
.end method

.method private final getBotsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->botsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/MusicActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    return-object v0
.end method

.method private final getChannelsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->channelsAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/MusicActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    return-object v0
.end method

.method private final getMusicCountComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->musicCountComparator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$2$lambda$1(Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->updateColors()V

    :cond_0
    return-void
.end method

.method private final notifyDialogsAdapters()V
    .locals 1

    .line 267
    new-instance v0, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final notifyDialogsAdapters$lambda$6(Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getAlbumsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 269
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getChannelsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 270
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getBotsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final prepareDialogsAdaptersData()V
    .locals 8

    .line 226
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->countsMap:Landroid/util/LongSparseArray;

    .line 104
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 105
    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-lez v5, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-gez v6, :cond_1

    .line 229
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Lcom/iMe/fork/controller/AlbumsController;->isDialogAlbum(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 230
    iget-object v5, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->albums:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/16 v6, 0xa

    if-lt v5, v6, :cond_2

    .line 232
    iget-object v5, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->channels:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    :cond_1
    iget-object v5, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->bots:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    :cond_3
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getMusicCountComparator()Ljava/util/Comparator;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->albums:Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 241
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->channels:Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 242
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->bots:Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private final startParallelLoadingMusicCounts()V
    .locals 10

    .line 247
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Landroidx/collection/LongSparseArray;)V

    .line 248
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsAlbumsOnly:Ljava/util/ArrayList;

    const-string v1, "messagesController.dialogsAlbumsOnly"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsChannelsOnly:Ljava/util/ArrayList;

    const-string v2, "messagesController.dialogsChannelsOnly"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsBotOnly:Ljava/util/ArrayList;

    const-string v2, "messagesController.dialogsBotOnly"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 251
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 252
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->parallelCounter:I

    .line 253
    iput-boolean v2, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->parallelLoading:Z

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 255
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    .line 256
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const-wide/16 v5, 0x0

    const/4 v7, 0x4

    .line 259
    iget v8, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    const/4 v9, 0x1

    .line 255
    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/MediaDataController;->getMediaCount(JJIIZ)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    const-string p2, "args"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    sget p2, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoad:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x4

    .line 147
    aget-object p2, p3, p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 148
    aget-object p2, p3, p1

    const-string v1, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 p2, 0x2

    .line 149
    aget-object p2, p3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 150
    iget-object p3, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->countsMap:Landroid/util/LongSparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, v1, v2, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 151
    iget p2, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->parallelCounter:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->parallelCounter:I

    if-nez p2, :cond_0

    .line 153
    iput-boolean p1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity;->parallelLoading:Z

    .line 154
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->prepareDialogsAdaptersData()V

    .line 155
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->notifyDialogsAdapters()V

    :cond_0
    return-void
.end method

.method public getFragmentContextViewParams()Lcom/iMe/ui/pager/FragmentContextViewParams;
    .locals 3

    .line 68
    new-instance v0, Lcom/iMe/ui/pager/FragmentContextViewParams;

    .line 69
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-direct {v0, v1, v2, v2}, Lcom/iMe/ui/pager/FragmentContextViewParams;-><init>(ZZZ)V

    return-object v0
.end method

.method public getInitialTabId()I
    .locals 1

    .line 74
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/MusicController;->getSelectedMusicTab()Lcom/iMe/ui/music/MusicTab;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-super/range {p0 .. p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 166
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 167
    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v15, 0x1

    new-array v9, v15, [Ljava/lang/Class;

    .line 169
    const-class v6, Landroid/view/View;

    aput-object v6, v9, v3

    .line 170
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    .line 165
    new-instance v12, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda1;

    move-object/from16 v13, p0

    invoke-direct {v12, v13}, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    .line 173
    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    move-object v6, v14

    move/from16 v13, v16

    .line 166
    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    .line 165
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 178
    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v18

    .line 179
    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 184
    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object/from16 v17, v6

    .line 177
    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    .line 176
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 189
    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    .line 190
    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 195
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    move-object v7, v6

    .line 188
    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    .line 187
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 200
    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v17

    .line 201
    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v7, v15, [Ljava/lang/Class;

    .line 202
    const-class v8, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    aput-object v8, v7, v3

    const-string v8, "emptyTextView1"

    .line 203
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v20

    .line 207
    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage_threeLines:I

    move-object/from16 v16, v6

    move-object/from16 v19, v7

    .line 199
    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    .line 198
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 212
    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v26

    .line 213
    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v15, [Ljava/lang/Class;

    .line 214
    const-class v7, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    aput-object v7, v5, v3

    const-string v7, "emptyTextView2"

    .line 215
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    .line 219
    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    move-object/from16 v25, v6

    move-object/from16 v28, v5

    .line 211
    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    .line 210
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_0
    return-object v0
.end method

.method public getToolbarTitle()Ljava/lang/String;
    .locals 2

    .line 66
    sget v0, Lorg/telegram/messenger/R$string;->AttachMusic:I

    const-string v1, "AttachMusic"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"AttachMusic\", R.string.AttachMusic)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initPageData()[Lcom/iMe/ui/pager/ViewPageData;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/ui/pager/ViewPageData;

    .line 77
    new-instance v1, Lcom/iMe/ui/pager/ViewPageData;

    .line 78
    sget-object v2, Lcom/iMe/ui/music/MusicTab;->ALBUMS:Lcom/iMe/ui/music/MusicTab;

    invoke-virtual {v2}, Lcom/iMe/ui/music/MusicTab;->getTitleResId()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInternalString(MusicTab.ALBUMS.titleResId)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getAlbumsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v3

    .line 80
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_fab_albums:I

    .line 77
    invoke-direct {v1, v2, v3, v4}, Lcom/iMe/ui/pager/ViewPageData;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 82
    new-instance v1, Lcom/iMe/ui/pager/ViewPageData;

    .line 83
    sget-object v3, Lcom/iMe/ui/music/MusicTab;->CHANNELS:Lcom/iMe/ui/music/MusicTab;

    invoke-virtual {v3}, Lcom/iMe/ui/music/MusicTab;->getTitleResId()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInternalString(MusicTab.CHANNELS.titleResId)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getChannelsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v4

    .line 82
    invoke-direct {v1, v3, v4, v2}, Lcom/iMe/ui/pager/ViewPageData;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;I)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 87
    new-instance v1, Lcom/iMe/ui/pager/ViewPageData;

    .line 88
    sget-object v3, Lcom/iMe/ui/music/MusicTab;->BOTS:Lcom/iMe/ui/music/MusicTab;

    invoke-virtual {v3}, Lcom/iMe/ui/music/MusicTab;->getTitleResId()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInternalString(MusicTab.BOTS.titleResId)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->getBotsAdapter()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v4

    .line 87
    invoke-direct {v1, v3, v4, v2}, Lcom/iMe/ui/pager/ViewPageData;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public isAllowPinnedPlayer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onFabClick(I)V
    .locals 1

    .line 121
    sget-object v0, Lcom/iMe/ui/music/MusicTab;->ALBUMS:Lcom/iMe/ui/music/MusicTab;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 122
    invoke-static {}, Lorg/telegram/ui/DialogsActivity;->newInstanceInAlbumsMode()Lorg/telegram/ui/DialogsActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 4

    .line 129
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIIZ)V

    .line 130
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v2, Lcom/iMe/fork/ui/fragment/MusicActivity;->notifications:[I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 131
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->startParallelLoadingMusicCounts()V

    return v1
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 136
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 137
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/iMe/fork/ui/fragment/MusicActivity;->notifications:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 138
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v0

    .line 139
    invoke-static {}, Lcom/iMe/ui/music/MusicTab;->values()[Lcom/iMe/ui/music/MusicTab;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getCurrentTabId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/MusicController;->setSelectedMusicTab(Lcom/iMe/ui/music/MusicTab;)V

    .line 140
    invoke-virtual {v0}, Lcom/iMe/fork/controller/MusicController;->saveConfig()V

    return-void
.end method

.method public onListItemClick(Landroid/view/View;IFF)V
    .locals 2

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    instance-of p2, p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz p2, :cond_1

    .line 102
    new-instance p2, Lorg/telegram/ui/Components/MediaActivity;

    const/4 p3, 0x2

    new-array p3, p3, [Lkotlin/Pair;

    const/4 p4, 0x0

    .line 104
    check-cast p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "dialog_id"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, p3, p4

    const/4 p1, 0x1

    .line 105
    sget p4, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_MUSIC:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "custom_screen_type"

    invoke-static {v0, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p4

    aput-object p4, p3, p1

    .line 103
    invoke-static {p3}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    const/4 p3, 0x0

    .line 102
    invoke-direct {p2, p1, p3}, Lorg/telegram/ui/Components/MediaActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    .line 101
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method public onListItemLongClick(Landroid/view/View;IFF)Z
    .locals 0

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onMenuItemClick(I)V
    .locals 0

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method
