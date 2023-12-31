.class public final Lcom/iMe/manager/common/MediaEditManager;
.super Ljava/lang/Object;
.source "MediaEditManager.kt"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/manager/common/MediaEditManager$Companion;
    }
.end annotation


# instance fields
.field private final conversionObservers:[I

.field private final currentAccount:I

.field private final delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

.field private final fileLoadingObserver:I

.field private final imageLoader$delegate:Lkotlin/Lazy;

.field private final imageUpdater$delegate:Lkotlin/Lazy;

.field private final loadingAlertDialog$delegate:Lkotlin/Lazy;

.field private loadingFileUrl:Ljava/lang/String;

.field private final notificationCenter:Lorg/telegram/messenger/NotificationCenter;

.field private final parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public static synthetic $r8$lambda$0NCvHcr67n2bhrM2zbbECJ4kk9o(Lcom/iMe/manager/common/MediaEditManager;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/iMe/manager/common/MediaEditManager;->prepareAvatarEditing$lambda$3$lambda$2$lambda$1(Lcom/iMe/manager/common/MediaEditManager;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DFuMsdEyZle1SI-yB5x65Qt79Xk(Lcom/iMe/manager/common/MediaEditManager;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/iMe/manager/common/MediaEditManager;->changeAvatar$lambda$9$lambda$8(Lcom/iMe/manager/common/MediaEditManager;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OIjDt5H4v_PmYa4WJ-j7Zq1igGs(Lcom/iMe/manager/common/MediaEditManager;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/iMe/manager/common/MediaEditManager;->changeAvatar$lambda$9(Lcom/iMe/manager/common/MediaEditManager;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VT2XP5OHU-myw0AERsPYponcwXg(Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/manager/common/MediaEditManager;->showLoading$lambda$12$lambda$11(Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jaY4PBLKt3Y9MpKK3dNOdUkkVGo(Lcom/iMe/manager/common/MediaEditManager;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/iMe/manager/common/MediaEditManager;->prepareAvatarEditing$lambda$3$lambda$2(Lcom/iMe/manager/common/MediaEditManager;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/manager/common/MediaEditManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/manager/common/MediaEditManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V
    .locals 1

    const-string v0, "parentFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/iMe/manager/common/MediaEditManager;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 45
    iput p2, p0, Lcom/iMe/manager/common/MediaEditManager;->currentAccount:I

    .line 46
    iput-object p3, p0, Lcom/iMe/manager/common/MediaEditManager;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    .line 50
    new-instance p2, Lcom/iMe/manager/common/MediaEditManager$loadingAlertDialog$2;

    invoke-direct {p2, p0}, Lcom/iMe/manager/common/MediaEditManager$loadingAlertDialog$2;-><init>(Lcom/iMe/manager/common/MediaEditManager;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/manager/common/MediaEditManager;->loadingAlertDialog$delegate:Lkotlin/Lazy;

    .line 51
    sget-object p2, Lcom/iMe/manager/common/MediaEditManager$imageLoader$2;->INSTANCE:Lcom/iMe/manager/common/MediaEditManager$imageLoader$2;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/manager/common/MediaEditManager;->imageLoader$delegate:Lkotlin/Lazy;

    .line 52
    sget-object p2, Lcom/iMe/manager/common/MediaEditManager$imageUpdater$2;->INSTANCE:Lcom/iMe/manager/common/MediaEditManager$imageUpdater$2;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/manager/common/MediaEditManager;->imageUpdater$delegate:Lkotlin/Lazy;

    .line 59
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/manager/common/MediaEditManager;->notificationCenter:Lorg/telegram/messenger/NotificationCenter;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 61
    sget p2, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPrepared:I

    const/4 p3, 0x0

    aput p2, p1, p3

    .line 62
    sget p2, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPreparingFailed:I

    const/4 p3, 0x1

    aput p2, p1, p3

    .line 60
    iput-object p1, p0, Lcom/iMe/manager/common/MediaEditManager;->conversionObservers:[I

    .line 64
    sget p1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    iput p1, p0, Lcom/iMe/manager/common/MediaEditManager;->fileLoadingObserver:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 43
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/manager/common/MediaEditManager;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public static final synthetic access$getDelegate$p(Lcom/iMe/manager/common/MediaEditManager;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/iMe/manager/common/MediaEditManager;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    return-object p0
.end method

.method public static final synthetic access$getImageLoader(Lcom/iMe/manager/common/MediaEditManager;)Lorg/telegram/messenger/ImageLoader;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/iMe/manager/common/MediaEditManager;->getImageLoader()Lorg/telegram/messenger/ImageLoader;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getImageUpdater(Lcom/iMe/manager/common/MediaEditManager;)Lorg/telegram/ui/Components/ImageUpdater;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/iMe/manager/common/MediaEditManager;->getImageUpdater()Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLoadingAlertDialog(Lcom/iMe/manager/common/MediaEditManager;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/iMe/manager/common/MediaEditManager;->getLoadingAlertDialog()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getParentFragment$p(Lcom/iMe/manager/common/MediaEditManager;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/iMe/manager/common/MediaEditManager;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method public static final synthetic access$initLoadingDialog(Lcom/iMe/manager/common/MediaEditManager;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/iMe/manager/common/MediaEditManager;->initLoadingDialog()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setLoadingFileUrl$p(Lcom/iMe/manager/common/MediaEditManager;Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/iMe/manager/common/MediaEditManager;->loadingFileUrl:Ljava/lang/String;

    return-void
.end method

.method private final changeAvatar(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 1

    .line 255
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;-><init>()V

    if-eqz p1, :cond_0

    .line 257
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 258
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    :cond_0
    if-eqz p2, :cond_1

    .line 261
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->video:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 262
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    .line 263
    iput-wide p3, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->video_start_ts:D

    or-int/lit8 p1, p1, 0x4

    .line 264
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    .line 267
    :cond_1
    iget-object p1, p0, Lcom/iMe/manager/common/MediaEditManager;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lcom/iMe/manager/common/MediaEditManager$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p5, p7, p6}, Lcom/iMe/manager/common/MediaEditManager$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/manager/common/MediaEditManager;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 314
    sget p2, Lorg/telegram/messenger/R$string;->custom_avatar_upload:I

    new-instance p3, Lcom/iMe/manager/common/MediaEditManager$changeAvatar$1;

    invoke-direct {p3, p0, p1}, Lcom/iMe/manager/common/MediaEditManager$changeAvatar$1;-><init>(Lcom/iMe/manager/common/MediaEditManager;I)V

    invoke-direct {p0, p2, p3}, Lcom/iMe/manager/common/MediaEditManager;->showLoading(ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final changeAvatar$lambda$9(Lcom/iMe/manager/common/MediaEditManager;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    new-instance v0, Lcom/iMe/manager/common/MediaEditManager$$ExternalSyntheticLambda2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p5

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/iMe/manager/common/MediaEditManager$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/manager/common/MediaEditManager;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final changeAvatar$lambda$9$lambda$8(Lcom/iMe/manager/common/MediaEditManager;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iget v0, p0, Lcom/iMe/manager/common/MediaEditManager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_5

    .line 272
    iget-object p1, p0, Lcom/iMe/manager/common/MediaEditManager;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-nez p1, :cond_1

    .line 274
    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object v3, p0, Lcom/iMe/manager/common/MediaEditManager;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    :goto_0
    const-string v3, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.TL_photos_photo"

    .line 283
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;

    .line 284
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto;-><init>()V

    .line 285
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    const/4 v4, 0x0

    if-eqz p4, :cond_2

    .line 286
    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_1

    :cond_2
    move-object p4, v4

    :goto_1
    iput-object p4, v3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz p5, :cond_3

    .line 287
    iget-object p4, p5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_2

    :cond_3
    move-object p4, v4

    :goto_2
    iput-object p4, v3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 284
    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 290
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    const-string p4, "photosPhoto.photo.video_sizes"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$VideoSize;

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 292
    iget p4, p0, Lcom/iMe/manager/common/MediaEditManager;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p4

    const-string p5, "mp4"

    .line 293
    invoke-virtual {p4, p2, p5, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p2

    .line 294
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 297
    :cond_4
    iget-object p2, p0, Lcom/iMe/manager/common/MediaEditManager;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    .line 298
    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, p3, p4}, Lorg/telegram/messenger/MessagesStorage;->clearUserPhotos(J)V

    new-array p3, v2, [Lorg/telegram/tgnet/TLRPC$User;

    aput-object p1, p3, v1

    .line 299
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1, v4, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 301
    sget p1, Lorg/telegram/messenger/R$string;->custom_avatar_success:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getInternalString(R.string.custom_avatar_success)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    .line 303
    :cond_5
    invoke-direct {p0}, Lcom/iMe/manager/common/MediaEditManager;->getLoadingAlertDialog()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 304
    iget-object p0, p0, Lcom/iMe/manager/common/MediaEditManager;->notificationCenter:Lorg/telegram/messenger/NotificationCenter;

    .line 306
    sget p1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array p2, v2, [Ljava/lang/Object;

    .line 307
    sget p3, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_ALL:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    .line 305
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 309
    sget p1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 311
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    return-void
.end method

.method private final convertGifNft(Ljava/lang/String;)V
    .locals 3

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "temp_app_avatar.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Lcom/otaliastudios/gif/GIFCompressor;->into(Ljava/lang/String;)Lcom/otaliastudios/gif/GIFOptions$Builder;

    move-result-object v1

    .line 209
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/otaliastudios/gif/GIFOptions$Builder;->addDataSource(Landroid/content/Context;Ljava/lang/String;)Lcom/otaliastudios/gif/GIFOptions$Builder;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 210
    invoke-static {v1}, Lcom/otaliastudios/gif/strategy/DefaultStrategy;->fraction(F)Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;->build()Lcom/otaliastudios/gif/strategy/DefaultStrategy;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/otaliastudios/gif/GIFOptions$Builder;->setStrategy(Lcom/otaliastudios/gif/strategy/Strategy;)Lcom/otaliastudios/gif/GIFOptions$Builder;

    move-result-object p1

    .line 211
    new-instance v1, Lcom/iMe/manager/common/MediaEditManager$convertGifNft$gifCompressing$1;

    invoke-direct {v1, p0, v0}, Lcom/iMe/manager/common/MediaEditManager$convertGifNft$gifCompressing$1;-><init>(Lcom/iMe/manager/common/MediaEditManager;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/otaliastudios/gif/GIFOptions$Builder;->setListener(Lcom/otaliastudios/gif/GIFListener;)Lcom/otaliastudios/gif/GIFOptions$Builder;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Lcom/otaliastudios/gif/GIFOptions$Builder;->compress()Ljava/util/concurrent/Future;

    move-result-object p1

    const-string v0, "private fun convertGifNf\u2026cel(true)\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    sget v0, Lorg/telegram/messenger/R$string;->custom_avatar_processing:I

    new-instance v1, Lcom/iMe/manager/common/MediaEditManager$convertGifNft$1;

    invoke-direct {v1, p1}, Lcom/iMe/manager/common/MediaEditManager$convertGifNft$1;-><init>(Ljava/util/concurrent/Future;)V

    invoke-direct {p0, v0, v1}, Lcom/iMe/manager/common/MediaEditManager;->showLoading(ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final getImageLoader()Lorg/telegram/messenger/ImageLoader;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/iMe/manager/common/MediaEditManager;->imageLoader$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-imageLoader>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/telegram/messenger/ImageLoader;

    return-object v0
.end method

.method private final getImageUpdater()Lorg/telegram/ui/Components/ImageUpdater;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/iMe/manager/common/MediaEditManager;->imageUpdater$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ImageUpdater;

    return-object v0
.end method

.method private final getLoadingAlertDialog()Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/iMe/manager/common/MediaEditManager;->loadingAlertDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method

.method private final initLoadingDialog()Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 3

    .line 170
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 171
    iget-object v1, p0, Lcom/iMe/manager/common/MediaEditManager;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    .line 170
    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private final onCommonError()V
    .locals 2

    .line 400
    sget v0, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    const-string v1, "ErrorOccurred"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"ErrorOccurred\", R.string.ErrorOccurred)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final onNftLoaded(Ljava/lang/String;)V
    .locals 4

    .line 181
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "webp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :sswitch_1
    const-string v1, "webm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :sswitch_2
    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :sswitch_3
    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :sswitch_4
    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 184
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/iMe/manager/common/MediaEditManager;->getImageUpdater()Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v2, v3, v1}, Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_2

    :sswitch_5
    const-string v1, "jpg"

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 190
    :cond_1
    invoke-direct {p0}, Lcom/iMe/manager/common/MediaEditManager;->getImageUpdater()Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3, v3}, Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_2

    :sswitch_6
    const-string v1, "gif"

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 193
    :cond_2
    invoke-direct {p0, p1}, Lcom/iMe/manager/common/MediaEditManager;->convertGifNft(Ljava/lang/String;)V

    goto :goto_2

    .line 199
    :cond_3
    :goto_1
    sget p1, Lorg/telegram/messenger/R$string;->ImportErrorFileFormatInvalid:I

    const-string v0, "ImportErrorFileFormatInvalid"

    .line 197
    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(\n             \u2026lid\n                    )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x18fc4 -> :sswitch_6
        0x19be1 -> :sswitch_5
        0x1a6f1 -> :sswitch_4
        0x1b229 -> :sswitch_3
        0x31e068 -> :sswitch_2
        0x379f99 -> :sswitch_1
        0x379f9c -> :sswitch_0
    .end sparse-switch
.end method

.method private final openExistingFileForAvatarEdit(Ljava/lang/String;Z)V
    .locals 3

    .line 176
    invoke-direct {p0}, Lcom/iMe/manager/common/MediaEditManager;->prepareAvatarEditing()V

    .line 177
    invoke-direct {p0}, Lcom/iMe/manager/common/MediaEditManager;->getImageUpdater()Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method private final openStickerEditor(Ljava/lang/String;ZZ)V
    .locals 14

    move-object v0, p0

    .line 320
    new-instance v13, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object v1, v13

    move-object v6, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    .line 321
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    .line 322
    iget-object v2, v0, Lcom/iMe/manager/common/MediaEditManager;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 325
    :cond_0
    iget-object v2, v0, Lcom/iMe/manager/common/MediaEditManager;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 326
    new-instance v2, Lcom/iMe/manager/common/MediaEditManager$openStickerEditor$1$1;

    move-object v3, p1

    move/from16 v4, p2

    invoke-direct {v2, v13, p0, p1, v4}, Lcom/iMe/manager/common/MediaEditManager$openStickerEditor$1$1;-><init>(Lorg/telegram/messenger/MediaController$PhotoEntry;Lcom/iMe/manager/common/MediaEditManager;Ljava/lang/String;Z)V

    move/from16 v3, p3

    invoke-virtual {v1, v13, v3, v2}, Lorg/telegram/ui/PhotoViewer;->openStickerEditor(Lorg/telegram/messenger/MediaController$PhotoEntry;ZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)V

    return-void
.end method

.method private final prepareAvatarEditing()V
    .locals 2

    .line 237
    invoke-direct {p0}, Lcom/iMe/manager/common/MediaEditManager;->getImageUpdater()Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/iMe/manager/common/MediaEditManager;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 239
    new-instance v1, Lcom/iMe/manager/common/MediaEditManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/iMe/manager/common/MediaEditManager$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/manager/common/MediaEditManager;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ImageUpdater;->setDelegate(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    return-void
.end method

.method private static final prepareAvatarEditing$lambda$3$lambda$2(Lcom/iMe/manager/common/MediaEditManager;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 10

    const-string v0, "this$0"

    move-object v2, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    new-instance v0, Lcom/iMe/manager/common/MediaEditManager$$ExternalSyntheticLambda1;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/iMe/manager/common/MediaEditManager$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/manager/common/MediaEditManager;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final prepareAvatarEditing$lambda$3$lambda$2$lambda$1(Lcom/iMe/manager/common/MediaEditManager;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-direct/range {p0 .. p7}, Lcom/iMe/manager/common/MediaEditManager;->changeAvatar(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    return-void
.end method

.method private final showLoading(ILkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 392
    invoke-direct {p0}, Lcom/iMe/manager/common/MediaEditManager;->getLoadingAlertDialog()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 393
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 394
    new-instance p1, Lcom/iMe/manager/common/MediaEditManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/iMe/manager/common/MediaEditManager$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 395
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void
.end method

.method static synthetic showLoading$default(Lcom/iMe/manager/common/MediaEditManager;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 391
    sget-object p2, Lcom/iMe/manager/common/MediaEditManager$showLoading$1;->INSTANCE:Lcom/iMe/manager/common/MediaEditManager$showLoading$1;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/iMe/manager/common/MediaEditManager;->showLoading(ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final showLoading$lambda$12$lambda$11(Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "$onCancelAction"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 4

    const-string p2, "args"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    sget p2, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPrepared:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    const/4 v3, 0x0

    if-ne p1, p2, :cond_1

    .line 130
    aget-object p1, p3, v3

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 131
    aget-object p2, p3, v0

    const-string p3, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 132
    invoke-virtual {p0}, Lcom/iMe/manager/common/MediaEditManager;->finishLoading()V

    const/4 p3, 0x2

    const-string v0, "temp_app_avatar.mp4"

    .line 133
    invoke-static {p1, v0, v3, p3, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/iMe/manager/common/MediaEditManager;->getImageUpdater()Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object p3

    invoke-virtual {p3, p1, v1, v3, p2}, Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-direct {p0, p1, p2, v3}, Lcom/iMe/manager/common/MediaEditManager;->openStickerEditor(Ljava/lang/String;ZZ)V

    .line 138
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    if-ne p1, p2, :cond_2

    .line 142
    aget-object p1, p3, v3

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 143
    iget-object p2, p0, Lcom/iMe/manager/common/MediaEditManager;->loadingFileUrl:Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 144
    aget-object p1, p3, v0

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/iMe/manager/common/MediaEditManager;->finishLoading()V

    .line 146
    invoke-direct {p0, p1}, Lcom/iMe/manager/common/MediaEditManager;->onNftLoaded(Ljava/lang/String;)V

    goto :goto_1

    .line 150
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPreparingFailed:I

    if-ne p1, p2, :cond_3

    .line 151
    invoke-virtual {p0}, Lcom/iMe/manager/common/MediaEditManager;->finishLoading()V

    .line 152
    invoke-direct {p0}, Lcom/iMe/manager/common/MediaEditManager;->onCommonError()V

    goto :goto_1

    .line 155
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    if-ne p1, p2, :cond_4

    .line 156
    aget-object p1, p3, v3

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 157
    iget-object p2, p0, Lcom/iMe/manager/common/MediaEditManager;->loadingFileUrl:Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 158
    iput-object v1, p0, Lcom/iMe/manager/common/MediaEditManager;->loadingFileUrl:Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcom/iMe/manager/common/MediaEditManager;->finishLoading()V

    .line 160
    invoke-direct {p0}, Lcom/iMe/manager/common/MediaEditManager;->onCommonError()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final editAnimatedSticker(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/RLottieDrawable;Z)V
    .locals 8

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 71
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->custom_avatar_processing:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/manager/common/MediaEditManager;->showLoading$default(Lcom/iMe/manager/common/MediaEditManager;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    if-eqz p3, :cond_1

    .line 73
    invoke-direct {p0}, Lcom/iMe/manager/common/MediaEditManager;->prepareAvatarEditing()V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/iMe/manager/common/MediaEditManager;->notificationCenter:Lorg/telegram/messenger/NotificationCenter;

    iget-object v1, p0, Lcom/iMe/manager/common/MediaEditManager;->conversionObservers:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 76
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    .line 77
    iget v3, p0, Lcom/iMe/manager/common/MediaEditManager;->currentAccount:I

    .line 79
    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->getDuration()J

    move-result-wide v5

    if-eqz p3, :cond_2

    const-string p2, "temp_app_avatar.mp4"

    goto :goto_0

    :cond_2
    const-string p2, "temp_app_sticker.mp4"

    :goto_0
    move-object v7, p2

    move-object v4, p1

    .line 76
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MediaController;->exportAnimatedSticker(ILorg/telegram/tgnet/TLRPC$Document;JLjava/lang/String;)V

    return-void
.end method

.method public final editMedia(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 3

    const-string v0, "document"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lcom/iMe/manager/common/MediaEditManager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    .line 86
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    const-string p1, "path"

    if-eqz p2, :cond_2

    .line 90
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/iMe/manager/common/MediaEditManager;->openExistingFileForAvatarEdit(Ljava/lang/String;Z)V

    goto :goto_1

    .line 92
    :cond_2
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2, v2}, Lcom/iMe/manager/common/MediaEditManager;->openStickerEditor(Ljava/lang/String;ZZ)V

    :goto_1
    return-void
.end method

.method public final finishLoading()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/iMe/manager/common/MediaEditManager;->notificationCenter:Lorg/telegram/messenger/NotificationCenter;

    iget-object v1, p0, Lcom/iMe/manager/common/MediaEditManager;->conversionObservers:[I

    iget v2, p0, Lcom/iMe/manager/common/MediaEditManager;->fileLoadingObserver:I

    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt;->plus([II)[I

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 118
    invoke-direct {p0}, Lcom/iMe/manager/common/MediaEditManager;->getLoadingAlertDialog()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final setKiklikoAvatar(Ljava/lang/String;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/iMe/manager/common/MediaEditManager;->openExistingFileForAvatarEdit(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setNftAvatar(Ljava/lang/String;)V
    .locals 3

    const-string v0, "nftTokenUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 101
    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ext"

    .line 102
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/iMe/manager/common/MediaEditManager;->prepareAvatarEditing()V

    .line 104
    iget-object v1, p0, Lcom/iMe/manager/common/MediaEditManager;->notificationCenter:Lorg/telegram/messenger/NotificationCenter;

    iget v2, p0, Lcom/iMe/manager/common/MediaEditManager;->fileLoadingObserver:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 105
    iput-object p1, p0, Lcom/iMe/manager/common/MediaEditManager;->loadingFileUrl:Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Lcom/iMe/manager/common/MediaEditManager;->getImageLoader()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    iget v2, p0, Lcom/iMe/manager/common/MediaEditManager;->currentAccount:I

    invoke-virtual {v1, p1, v0, v2}, Lorg/telegram/messenger/ImageLoader;->loadHttpFile(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    sget v0, Lorg/telegram/messenger/R$string;->custom_avatar_downloading:I

    new-instance v1, Lcom/iMe/manager/common/MediaEditManager$setNftAvatar$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/manager/common/MediaEditManager$setNftAvatar$1;-><init>(Lcom/iMe/manager/common/MediaEditManager;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/iMe/manager/common/MediaEditManager;->showLoading(ILkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/iMe/manager/common/MediaEditManager;->onCommonError()V

    :goto_1
    return-void
.end method
