.class public Lorg/telegram/messenger/UserConfig;
.super Lorg/telegram/messenger/BaseController;
.source "UserConfig.java"


# static fields
.field public static final ADDITIONAL_MAX_ACCOUNT_COUNT:I = 0x1

.field private static volatile Instance:[Lorg/telegram/messenger/UserConfig; = null

.field public static final MAX_ACCOUNT_COUNT:I = 0x5

.field public static final MAX_ACCOUNT_DEFAULT_COUNT:I = 0x3

.field public static final i_dialogsLoadOffsetAccess:I = 0x5

.field public static final i_dialogsLoadOffsetChannelId:I = 0x4

.field public static final i_dialogsLoadOffsetChatId:I = 0x3

.field public static final i_dialogsLoadOffsetDate:I = 0x1

.field public static final i_dialogsLoadOffsetId:I = 0x0

.field public static final i_dialogsLoadOffsetUserId:I = 0x2

.field public static selectedAccount:I


# instance fields
.field public autoDownloadConfigLoadTime:J

.field public awaitBillingProductIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public billingPaymentPurpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

.field public botRatingLoadTime:I

.field chanelSaveGalleryExceptions:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;",
            ">;"
        }
    .end annotation
.end field

.field public clientUserId:J

.field private volatile configLoaded:Z

.field public contactsReimported:Z

.field public contactsSavedCount:I

.field private final cryptoAccessManager:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;",
            ">;"
        }
    .end annotation
.end field

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field public defaultTopicIcons:Ljava/lang/String;

.field public draftsLoaded:Z

.field public filtersLoaded:Z

.field public genericAnimationsStickerPack:Ljava/lang/String;

.field globalTtl:I

.field groupsSaveGalleryExceptions:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;",
            ">;"
        }
    .end annotation
.end field

.field public hasSecureData:Z

.field public hasValidDialogLoadIds:Z

.field public lastBroadcastId:I

.field public lastContactsSyncTime:I

.field public lastHintsSyncTime:I

.field lastLoadingTime:J

.field public lastMyLocationShareTime:I

.field public lastSendMessageId:I

.field public lastUpdatedDefaultTopicIcons:J

.field public lastUpdatedGenericAnimations:J

.field public lastUpdatedPremiumGiftsStickerPack:J

.field public loginTime:I

.field public migrateOffsetAccess:J

.field public migrateOffsetChannelId:J

.field public migrateOffsetChatId:J

.field public migrateOffsetDate:I

.field public migrateOffsetId:I

.field public migrateOffsetUserId:J

.field public notificationsSettingsLoaded:Z

.field public notificationsSignUpSettingsLoaded:Z

.field public premiumGiftsStickerPack:Ljava/lang/String;

.field public ratingLoadTime:I

.field public registeredForPush:Z

.field public volatile savedPasswordHash:[B

.field public volatile savedPasswordTime:J

.field public volatile savedSaltedPassword:[B

.field public sharingMyLocationUntil:I

.field public suggestContacts:Z

.field private final sync:Ljava/lang/Object;

.field public syncContacts:Z

.field public tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

.field ttlIsLoading:Z

.field public unacceptedTermsOfService:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

.field public unreadDialogsLoaded:Z

.field userSaveGalleryExceptions:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$FiKru6oxrthO_7eVf1ITDlQU3g8(Lorg/telegram/messenger/UserConfig;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/UserConfig;->lambda$saveConfig$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$RWFvbVkUySyIpvVsRGX3siH_IsE(Lorg/telegram/messenger/UserConfig;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/UserConfig;->lambda$loadGlobalTTl$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WqTKkzzKSY-gPsd-OfgltDv-WN0(Lorg/telegram/messenger/UserConfig;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/UserConfig;->lambda$updateUserId$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$g3gmeSEjPfBk6Pw-3bGANcSzh24(Lorg/telegram/messenger/UserConfig;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/UserConfig;->lambda$loadGlobalTTl$3(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wEtbc6Q6Bdx0WI2hsNHelaH8ODo(Lorg/telegram/messenger/UserConfig;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/UserConfig;->lambda$checkPremiumSelf$2(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/messenger/UserConfig;

    .line 144
    sput-object v0, Lorg/telegram/messenger/UserConfig;->Instance:[Lorg/telegram/messenger/UserConfig;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 169
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 38
    const-class p1, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-static {p1}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/UserConfig;->cryptoAccessManager:Lkotlin/Lazy;

    .line 89
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    const p1, -0x33450

    .line 93
    iput p1, p0, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    const/4 p1, -0x1

    .line 94
    iput p1, p0, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lorg/telegram/messenger/UserConfig;->unreadDialogsLoaded:Z

    .line 106
    iput p1, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    .line 107
    iput p1, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    const-wide/16 v1, -0x1

    .line 108
    iput-wide v1, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:J

    .line 109
    iput-wide v1, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:J

    .line 110
    iput-wide v1, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:J

    .line 111
    iput-wide v1, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    .line 119
    iput-boolean v0, p0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    .line 120
    iput-boolean v0, p0, Lorg/telegram/messenger/UserConfig;->suggestContacts:Z

    .line 126
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/UserConfig;->awaitBillingProductIds:Ljava/util/List;

    const/4 p1, 0x0

    .line 659
    iput p1, p0, Lorg/telegram/messenger/UserConfig;->globalTtl:I

    .line 660
    iput-boolean p1, p0, Lorg/telegram/messenger/UserConfig;->ttlIsLoading:Z

    return-void
.end method

.method private checkPremiumSelf(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    .line 335
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    if-eq p1, v0, :cond_1

    .line 336
    :cond_0
    new-instance p1, Lorg/telegram/messenger/UserConfig$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lorg/telegram/messenger/UserConfig$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/UserConfig;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static getActivatedAccountsCount()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 161
    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static getInstance(I)Lorg/telegram/messenger/UserConfig;
    .locals 3

    .line 146
    sget-object v0, Lorg/telegram/messenger/UserConfig;->Instance:[Lorg/telegram/messenger/UserConfig;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    .line 148
    const-class v1, Lorg/telegram/messenger/UserConfig;

    monitor-enter v1

    .line 149
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->Instance:[Lorg/telegram/messenger/UserConfig;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lorg/telegram/messenger/UserConfig;->Instance:[Lorg/telegram/messenger/UserConfig;

    new-instance v2, Lorg/telegram/messenger/UserConfig;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/UserConfig;-><init>(I)V

    aput-object v2, v0, p0

    move-object v0, v2

    .line 153
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getMaxAccountCount()I
    .locals 1

    .line 182
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->hasPremiumOnAccounts()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public static hasPremiumOnAccounts()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 174
    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isValidAccount(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    .line 297
    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$checkPremiumSelf$2(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    .line 337
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->updatePremium(Z)V

    .line 338
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 339
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->premiumStatusChangedGlobal:I

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 341
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MediaDataController;->loadPremiumPromo(Z)V

    .line 342
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MediaDataController;->loadReactions(ZZ)V

    return-void
.end method

.method private synthetic lambda$loadGlobalTTl$3(Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 675
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_defaultHistoryTTL;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_defaultHistoryTTL;->period:I

    div-int/lit8 p1, p1, 0x3c

    iput p1, p0, Lorg/telegram/messenger/UserConfig;->globalTtl:I

    .line 676
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didUpdateGlobalAutoDeleteTimer:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 677
    iput-boolean v1, p0, Lorg/telegram/messenger/UserConfig;->ttlIsLoading:Z

    .line 678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/UserConfig;->lastLoadingTime:J

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadGlobalTTl$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 673
    new-instance p2, Lorg/telegram/messenger/UserConfig$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/UserConfig$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/UserConfig;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$saveConfig$1(Z)V
    .locals 6

    .line 196
    iget-boolean v0, p0, Lorg/telegram/messenger/UserConfig;->configLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 202
    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    if-nez v2, :cond_1

    const-string v2, "selectedAccount"

    .line 203
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const-string v2, "registeredForPush"

    .line 205
    iget-boolean v3, p0, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "lastSendMessageId"

    .line 206
    iget v3, p0, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "contactsSavedCount"

    .line 207
    iget v3, p0, Lorg/telegram/messenger/UserConfig;->contactsSavedCount:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "lastBroadcastId"

    .line 208
    iget v3, p0, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "lastContactsSyncTime"

    .line 209
    iget v3, p0, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "lastHintsSyncTime"

    .line 210
    iget v3, p0, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "draftsLoaded"

    .line 211
    iget-boolean v3, p0, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "unreadDialogsLoaded"

    .line 212
    iget-boolean v3, p0, Lorg/telegram/messenger/UserConfig;->unreadDialogsLoaded:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "ratingLoadTime"

    .line 213
    iget v3, p0, Lorg/telegram/messenger/UserConfig;->ratingLoadTime:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "botRatingLoadTime"

    .line 214
    iget v3, p0, Lorg/telegram/messenger/UserConfig;->botRatingLoadTime:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "contactsReimported"

    .line 215
    iget-boolean v3, p0, Lorg/telegram/messenger/UserConfig;->contactsReimported:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "loginTime"

    .line 216
    iget v3, p0, Lorg/telegram/messenger/UserConfig;->loginTime:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "syncContacts"

    .line 217
    iget-boolean v3, p0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "suggestContacts"

    .line 218
    iget-boolean v3, p0, Lorg/telegram/messenger/UserConfig;->suggestContacts:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "hasSecureData"

    .line 219
    iget-boolean v3, p0, Lorg/telegram/messenger/UserConfig;->hasSecureData:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "notificationsSettingsLoaded3"

    .line 220
    iget-boolean v3, p0, Lorg/telegram/messenger/UserConfig;->notificationsSettingsLoaded:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "notificationsSignUpSettingsLoaded"

    .line 221
    iget-boolean v3, p0, Lorg/telegram/messenger/UserConfig;->notificationsSignUpSettingsLoaded:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "autoDownloadConfigLoadTime"

    .line 222
    iget-wide v3, p0, Lorg/telegram/messenger/UserConfig;->autoDownloadConfigLoadTime:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "hasValidDialogLoadIds"

    .line 223
    iget-boolean v3, p0, Lorg/telegram/messenger/UserConfig;->hasValidDialogLoadIds:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "sharingMyLocationUntil"

    .line 224
    iget v3, p0, Lorg/telegram/messenger/UserConfig;->sharingMyLocationUntil:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "lastMyLocationShareTime"

    .line 225
    iget v3, p0, Lorg/telegram/messenger/UserConfig;->lastMyLocationShareTime:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "filtersLoaded"

    .line 226
    iget-boolean v3, p0, Lorg/telegram/messenger/UserConfig;->filtersLoaded:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "awaitBillingProductIds"

    .line 227
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lorg/telegram/messenger/UserConfig;->awaitBillingProductIds:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 228
    iget-object v2, p0, Lorg/telegram/messenger/UserConfig;->billingPaymentPurpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 229
    new-instance v4, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v2

    invoke-direct {v4, v2}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 230
    iget-object v2, p0, Lorg/telegram/messenger/UserConfig;->billingPaymentPurpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    invoke-virtual {v2, v4}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const-string v2, "billingPaymentPurpose"

    .line 231
    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v5

    invoke-static {v5, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    goto :goto_0

    :cond_2
    const-string v2, "billingPaymentPurpose"

    .line 234
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    const-string v2, "premiumGiftsStickerPack"

    .line 236
    iget-object v4, p0, Lorg/telegram/messenger/UserConfig;->premiumGiftsStickerPack:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "lastUpdatedPremiumGiftsStickerPack"

    .line 237
    iget-wide v4, p0, Lorg/telegram/messenger/UserConfig;->lastUpdatedPremiumGiftsStickerPack:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "genericAnimationsStickerPack"

    .line 239
    iget-object v4, p0, Lorg/telegram/messenger/UserConfig;->genericAnimationsStickerPack:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "lastUpdatedGenericAnimations"

    .line 240
    iget-wide v4, p0, Lorg/telegram/messenger/UserConfig;->lastUpdatedGenericAnimations:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "6migrateOffsetId"

    .line 242
    iget v4, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 243
    iget v2, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    const-string v2, "6migrateOffsetDate"

    .line 244
    iget v4, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "6migrateOffsetUserId"

    .line 245
    iget-wide v4, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "6migrateOffsetChatId"

    .line 246
    iget-wide v4, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "6migrateOffsetChannelId"

    .line 247
    iget-wide v4, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "6migrateOffsetAccess"

    .line 248
    iget-wide v4, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 251
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/UserConfig;->unacceptedTermsOfService:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 253
    :try_start_1
    new-instance v4, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v2

    invoke-direct {v4, v2}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 254
    iget-object v2, p0, Lorg/telegram/messenger/UserConfig;->unacceptedTermsOfService:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    invoke-virtual {v2, v4}, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const-string/jumbo v2, "terms"

    .line 255
    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v5

    invoke-static {v5, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_2
    const-string/jumbo v2, "terms"

    .line 261
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 264
    :catch_0
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 266
    iget-object v2, p0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v2, :cond_5

    .line 267
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v2}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .line 268
    iget-object v4, p0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    invoke-virtual {v4, v2}, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 269
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v4

    invoke-static {v4, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "tmpPassword"

    .line 270
    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 271
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    goto :goto_2

    :cond_5
    const-string/jumbo v2, "tmpPassword"

    .line 273
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 276
    :goto_2
    iget-object v2, p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_6

    if-eqz p1, :cond_7

    .line 278
    new-instance p1, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {p1}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .line 279
    iget-object v2, p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 280
    invoke-virtual {p1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user"

    .line 281
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 282
    invoke-virtual {p1}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    goto :goto_3

    :cond_6
    const-string/jumbo p1, "user"

    .line 285
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    :cond_7
    :goto_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 290
    :try_start_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 292
    :goto_4
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private synthetic lambda$updateUserId$0()V
    .locals 4

    .line 65
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/AlbumsController;->loadAlbums()V

    .line 66
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkTopicsController;->loadTopics()V

    .line 67
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iMe/fork/controller/ForkTopicsController;->updateCatalog(ZLcom/iMe/fork/utils/Callbacks$Callback1;)V

    .line 68
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/RecentChatsController;->loadRecentChats()V

    .line 69
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getHiddenChatsController()Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/HiddenChatsController;->loadHiddenChats()V

    .line 70
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FiltersController;->loadFilterSettings()V

    .line 71
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getDialogTranslationSettingsController()Lcom/iMe/fork/controller/DialogTranslationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/DialogTranslationController;->loadDialogTranslationSettings()V

    .line 72
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getTemplatesController()Lcom/iMe/fork/controller/TemplatesController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/TemplatesController;->loadTemplates()V

    .line 73
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getBookmarksController()Lcom/iMe/fork/controller/BookmarksController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/BookmarksController;->loadBookmarks()V

    .line 74
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/MusicController;->loadPlaylists()V

    .line 75
    iget-wide v2, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v2, v3}, Lcom/iMe/storage/data/locale/prefs/migration/PreferencesMigrationManager$Crypto;->migrateCryptoPrefs(J)V

    .line 76
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/BackupController;->backup(Z)V

    return-void
.end method

.method private updateUserId()V
    .locals 4

    .line 58
    iget-wide v0, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iget-object v2, p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    .line 63
    iget-object v1, p0, Lorg/telegram/messenger/UserConfig;->cryptoAccessManager:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->onUserChanged()V

    .line 64
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/UserConfig$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/UserConfig$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/UserConfig;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 78
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public checkSavedPassword()V
    .locals 4

    .line 476
    iget-object v0, p0, Lorg/telegram/messenger/UserConfig;->savedSaltedPassword:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/UserConfig;->savedPasswordHash:[B

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/UserConfig;->savedPasswordTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    return-void

    .line 479
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->resetSavedPassword()V

    return-void
.end method

.method public clearConfig()V
    .locals 7

    .line 545
    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    .line 547
    iput v0, p0, Lorg/telegram/messenger/UserConfig;->sharingMyLocationUntil:I

    .line 548
    iput v0, p0, Lorg/telegram/messenger/UserConfig;->lastMyLocationShareTime:I

    const/4 v1, 0x0

    .line 549
    iput-object v1, p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const-wide/16 v2, 0x0

    .line 550
    iput-wide v2, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    .line 551
    iput-boolean v0, p0, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 552
    iput v0, p0, Lorg/telegram/messenger/UserConfig;->contactsSavedCount:I

    const v2, -0x33450

    .line 553
    iput v2, p0, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    const/4 v2, -0x1

    .line 554
    iput v2, p0, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    .line 555
    iput-boolean v0, p0, Lorg/telegram/messenger/UserConfig;->notificationsSettingsLoaded:Z

    .line 556
    iput-boolean v0, p0, Lorg/telegram/messenger/UserConfig;->notificationsSignUpSettingsLoaded:Z

    .line 557
    iput v2, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    .line 558
    iput v2, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    const-wide/16 v2, -0x1

    .line 559
    iput-wide v2, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:J

    .line 560
    iput-wide v2, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:J

    .line 561
    iput-wide v2, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:J

    .line 562
    iput-wide v2, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    .line 563
    iput v0, p0, Lorg/telegram/messenger/UserConfig;->ratingLoadTime:I

    .line 564
    iput v0, p0, Lorg/telegram/messenger/UserConfig;->botRatingLoadTime:I

    .line 565
    iput-boolean v0, p0, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    const/4 v2, 0x1

    .line 566
    iput-boolean v2, p0, Lorg/telegram/messenger/UserConfig;->contactsReimported:Z

    .line 567
    iput-boolean v2, p0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    .line 568
    iput-boolean v2, p0, Lorg/telegram/messenger/UserConfig;->suggestContacts:Z

    .line 569
    iput-boolean v2, p0, Lorg/telegram/messenger/UserConfig;->unreadDialogsLoaded:Z

    .line 570
    iput-boolean v2, p0, Lorg/telegram/messenger/UserConfig;->hasValidDialogLoadIds:Z

    .line 571
    iput-object v1, p0, Lorg/telegram/messenger/UserConfig;->unacceptedTermsOfService:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    .line 572
    iput-boolean v0, p0, Lorg/telegram/messenger/UserConfig;->filtersLoaded:Z

    .line 573
    iput-boolean v0, p0, Lorg/telegram/messenger/UserConfig;->hasSecureData:Z

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v1, v3

    iput v1, p0, Lorg/telegram/messenger/UserConfig;->loginTime:I

    .line 575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v5

    long-to-int v1, v3

    const v3, 0x14370

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v5

    long-to-int v1, v3

    const v3, 0x15f90

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    .line 577
    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->resetSavedPassword()V

    move v1, v0

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    .line 580
    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 586
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->clearConfig()V

    .line 588
    :cond_2
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    return-void
.end method

.method public clearFilters()V
    .locals 2

    .line 689
    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filtersLoaded"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    .line 690
    iput-boolean v0, p0, Lorg/telegram/messenger/UserConfig;->filtersLoaded:Z

    return-void
.end method

.method public clearPinnedDialogsLoaded()V
    .locals 4

    .line 600
    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 601
    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "2pinnedDialogsLoaded"

    .line 602
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 603
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 606
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getClientPhone()Ljava/lang/String;
    .locals 2

    .line 313
    iget-object v0, p0, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 315
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getClientUserId()J
    .locals 3

    .line 307
    iget-object v0, p0, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_0

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 309
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 2

    .line 319
    iget-object v0, p0, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 321
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDialogLoadOffsets(I)[J
    .locals 16

    move-object/from16 v0, p0

    .line 625
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2dialogsLoadOffsetId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    if-nez p1, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, v0, Lorg/telegram/messenger/UserConfig;->hasValidDialogLoadIds:Z

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 627
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2dialogsLoadOffsetDate"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    move-object v7, v3

    goto :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_2
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v7, v0, Lorg/telegram/messenger/UserConfig;->hasValidDialogLoadIds:Z

    if-eqz v7, :cond_3

    move v5, v6

    :cond_3
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 628
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2dialogsLoadOffsetUserId"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_4

    move-object v7, v3

    goto :goto_3

    :cond_4
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_3
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v7, v0, Lorg/telegram/messenger/UserConfig;->hasValidDialogLoadIds:Z

    const-wide/16 v10, -0x1

    if-eqz v7, :cond_5

    const-wide/16 v12, 0x0

    goto :goto_4

    :cond_5
    move-wide v12, v10

    :goto_4
    invoke-static {v1, v5, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->getPrefIntOrLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v12

    .line 629
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2dialogsLoadOffsetChatId"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_6

    move-object v7, v3

    goto :goto_5

    :cond_6
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_5
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v7, v0, Lorg/telegram/messenger/UserConfig;->hasValidDialogLoadIds:Z

    if-eqz v7, :cond_7

    const-wide/16 v14, 0x0

    goto :goto_6

    :cond_7
    move-wide v14, v10

    :goto_6
    invoke-static {v1, v5, v14, v15}, Lorg/telegram/messenger/AndroidUtilities;->getPrefIntOrLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v14

    .line 630
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2dialogsLoadOffsetChannelId"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_8

    move-object v7, v3

    goto :goto_7

    :cond_8
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v7, v0, Lorg/telegram/messenger/UserConfig;->hasValidDialogLoadIds:Z

    if-eqz v7, :cond_9

    const-wide/16 v8, 0x0

    goto :goto_8

    :cond_9
    move-wide v8, v10

    :goto_8
    invoke-static {v1, v5, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->getPrefIntOrLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v7

    .line 631
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "2dialogsLoadOffsetAccess"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_a

    goto :goto_9

    :cond_a
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_9
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, v0, Lorg/telegram/messenger/UserConfig;->hasValidDialogLoadIds:Z

    if-eqz v5, :cond_b

    const-wide/16 v10, 0x0

    :cond_b
    invoke-interface {v1, v3, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    const/4 v1, 0x6

    new-array v1, v1, [J

    int-to-long v2, v2

    aput-wide v2, v1, v6

    const/4 v2, 0x1

    int-to-long v3, v4

    aput-wide v3, v1, v2

    const/4 v2, 0x2

    aput-wide v12, v1, v2

    const/4 v2, 0x3

    aput-wide v14, v1, v2

    const/4 v2, 0x4

    aput-wide v7, v1, v2

    const/4 v2, 0x5

    aput-wide v9, v1, v2

    return-object v1
.end method

.method public getEmojiStatus()Ljava/lang/Long;
    .locals 1

    .line 655
    iget-object v0, p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalTTl()I
    .locals 1

    .line 664
    iget v0, p0, Lorg/telegram/messenger/UserConfig;->globalTtl:I

    return v0
.end method

.method public getNewMessageId()I
    .locals 3

    .line 187
    iget-object v0, p0, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    iget v1, p0, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    add-int/lit8 v2, v1, -0x1

    .line 189
    iput v2, p0, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 190
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 4

    .line 495
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 496
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "userconfing"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 498
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userconfig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getPreferencesPublic()Landroid/content/SharedPreferences;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSaveGalleryExceptions(I)Landroid/util/LongSparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "_"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 504
    iget-object p1, p0, Lorg/telegram/messenger/UserConfig;->userSaveGalleryExceptions:Landroid/util/LongSparseArray;

    if-nez p1, :cond_0

    .line 505
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->USERS_PREF_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->loadExceptions(Landroid/content/SharedPreferences;)Landroid/util/LongSparseArray;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/UserConfig;->userSaveGalleryExceptions:Landroid/util/LongSparseArray;

    .line 507
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/UserConfig;->userSaveGalleryExceptions:Landroid/util/LongSparseArray;

    return-object p1

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 509
    iget-object p1, p0, Lorg/telegram/messenger/UserConfig;->groupsSaveGalleryExceptions:Landroid/util/LongSparseArray;

    if-nez p1, :cond_2

    .line 510
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->GROUPS_PREF_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->loadExceptions(Landroid/content/SharedPreferences;)Landroid/util/LongSparseArray;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/UserConfig;->groupsSaveGalleryExceptions:Landroid/util/LongSparseArray;

    .line 512
    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/UserConfig;->groupsSaveGalleryExceptions:Landroid/util/LongSparseArray;

    return-object p1

    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    .line 514
    iget-object p1, p0, Lorg/telegram/messenger/UserConfig;->chanelSaveGalleryExceptions:Landroid/util/LongSparseArray;

    if-nez p1, :cond_4

    .line 515
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->CHANNELS_PREF_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->loadExceptions(Landroid/content/SharedPreferences;)Landroid/util/LongSparseArray;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/UserConfig;->chanelSaveGalleryExceptions:Landroid/util/LongSparseArray;

    .line 517
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/UserConfig;->chanelSaveGalleryExceptions:Landroid/util/LongSparseArray;

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTotalDialogsCount(I)I
    .locals 3

    .line 617
    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2totalDialogsLoadCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public hasPreferenceKey(Ljava/lang/String;)Z
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isClientActivated()Z
    .locals 2

    .line 301
    iget-object v0, p0, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 303
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isConfigLoaded()Z
    .locals 1

    .line 466
    iget-boolean v0, p0, Lorg/telegram/messenger/UserConfig;->configLoaded:Z

    return v0
.end method

.method public isPinnedDialogsLoaded(I)Z
    .locals 3

    .line 592
    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2pinnedDialogsLoaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isPremium()Z
    .locals 1

    .line 648
    iget-object v0, p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 651
    :cond_0
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    return v0
.end method

.method public loadConfig()V
    .locals 11

    .line 349
    iget-object v0, p0, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/messenger/UserConfig;->configLoaded:Z

    if-eqz v1, :cond_0

    .line 351
    monitor-exit v0

    return-void

    .line 353
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 354
    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string v2, "selectedAccount"

    .line 355
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 358
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iMe/fork/controller/AlbumsController;->loadConfig(Landroid/content/SharedPreferences;)V

    .line 359
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iMe/fork/controller/BackupController;->loadConfig(Landroid/content/SharedPreferences;)V

    .line 360
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iMe/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    .line 361
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iMe/fork/controller/ForkCommonController;->loadConfig(Landroid/content/SharedPreferences;)V

    .line 362
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iMe/fork/controller/LockedSectionsController;->loadConfig(Landroid/content/SharedPreferences;)V

    .line 363
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iMe/fork/controller/MultiPanelController;->loadConfig(Landroid/content/SharedPreferences;)V

    .line 364
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNeuroBotsController()Lcom/iMe/fork/controller/NeuroBotsController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iMe/fork/controller/NeuroBotsController;->loadConfig(Landroid/content/SharedPreferences;)V

    .line 365
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getTemplatesController()Lcom/iMe/fork/controller/TemplatesController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iMe/fork/controller/TemplatesController;->loadConfig(Landroid/content/SharedPreferences;)V

    .line 366
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getForkTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iMe/fork/controller/ForkTopicsController;->loadConfig(Landroid/content/SharedPreferences;)V

    .line 367
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iMe/fork/controller/RecentChatsController;->loadConfig(Landroid/content/SharedPreferences;)V

    .line 368
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iMe/fork/controller/ToolsController;->loadConfig(Landroid/content/SharedPreferences;)V

    .line 369
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getWalletFingerprintController()Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iMe/fork/controller/WalletFingerprintController;->loadConfig(Landroid/content/SharedPreferences;)V

    .line 370
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getHiddenChatsController()Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iMe/fork/controller/HiddenChatsController;->loadConfig(Landroid/content/SharedPreferences;)V

    .line 371
    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v2, v1}, Lcom/iMe/common/TelegramPreferenceMigrationManager;->migrateUserPreferences(ILandroid/content/SharedPreferences;)V

    const-string v2, "registeredForPush"

    .line 373
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    const-string v2, "lastSendMessageId"

    const v4, -0x33450

    .line 374
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    const-string v2, "contactsSavedCount"

    .line 375
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/UserConfig;->contactsSavedCount:I

    const-string v2, "lastBroadcastId"

    const/4 v4, -0x1

    .line 376
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    const-string v2, "lastContactsSyncTime"

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    const v6, 0x14370

    sub-int/2addr v5, v6

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    const-string v2, "lastHintsSyncTime"

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v7

    long-to-int v5, v5

    const v6, 0x15f90

    sub-int/2addr v5, v6

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    const-string v2, "draftsLoaded"

    .line 379
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    const-string/jumbo v2, "unreadDialogsLoaded"

    .line 380
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/UserConfig;->unreadDialogsLoaded:Z

    const-string v2, "contactsReimported"

    .line 381
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/UserConfig;->contactsReimported:Z

    const-string v2, "ratingLoadTime"

    .line 382
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/UserConfig;->ratingLoadTime:I

    const-string v2, "botRatingLoadTime"

    .line 383
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/UserConfig;->botRatingLoadTime:I

    const-string v2, "loginTime"

    .line 384
    iget v5, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/UserConfig;->loginTime:I

    const-string/jumbo v2, "syncContacts"

    const/4 v5, 0x1

    .line 385
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    const-string/jumbo v2, "suggestContacts"

    .line 386
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/UserConfig;->suggestContacts:Z

    const-string v2, "hasSecureData"

    .line 387
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/UserConfig;->hasSecureData:Z

    const-string v2, "notificationsSettingsLoaded3"

    .line 388
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/UserConfig;->notificationsSettingsLoaded:Z

    const-string v2, "notificationsSignUpSettingsLoaded"

    .line 389
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/UserConfig;->notificationsSignUpSettingsLoaded:Z

    const-string v2, "autoDownloadConfigLoadTime"

    const-wide/16 v6, 0x0

    .line 390
    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/messenger/UserConfig;->autoDownloadConfigLoadTime:J

    const-string v2, "2dialogsLoadOffsetId"

    .line 391
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "hasValidDialogLoadIds"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v5

    :goto_1
    iput-boolean v2, p0, Lorg/telegram/messenger/UserConfig;->hasValidDialogLoadIds:Z

    const-string/jumbo v2, "sharingMyLocationUntil"

    .line 392
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/UserConfig;->sharingMyLocationUntil:I

    const-string v2, "lastMyLocationShareTime"

    .line 393
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/UserConfig;->lastMyLocationShareTime:I

    const-string v2, "filtersLoaded"

    .line 394
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/UserConfig;->filtersLoaded:Z

    .line 395
    new-instance v2, Ljava/util/ArrayList;

    const-string v8, "awaitBillingProductIds"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lorg/telegram/messenger/UserConfig;->awaitBillingProductIds:Ljava/util/List;

    const-string v2, "billingPaymentPurpose"

    .line 396
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_4

    const-string v2, "billingPaymentPurpose"

    .line 397
    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 399
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    if-eqz v2, :cond_4

    .line 401
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v2}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .line 402
    invoke-virtual {v2, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v9

    invoke-static {v2, v9, v3}, Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/UserConfig;->billingPaymentPurpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    .line 403
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    :cond_4
    const-string v2, "premiumGiftsStickerPack"

    .line 407
    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/UserConfig;->premiumGiftsStickerPack:Ljava/lang/String;

    const-string v2, "lastUpdatedPremiumGiftsStickerPack"

    .line 408
    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lorg/telegram/messenger/UserConfig;->lastUpdatedPremiumGiftsStickerPack:J

    const-string v2, "genericAnimationsStickerPack"

    .line 410
    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/UserConfig;->genericAnimationsStickerPack:Ljava/lang/String;

    const-string v2, "lastUpdatedGenericAnimations"

    .line 411
    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lorg/telegram/messenger/UserConfig;->lastUpdatedGenericAnimations:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v2, "terms"

    .line 415
    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 417
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    if-eqz v2, :cond_5

    .line 419
    new-instance v9, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v9, v2}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 420
    invoke-virtual {v9, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v2

    invoke-static {v9, v2, v3}, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/UserConfig;->unacceptedTermsOfService:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    .line 421
    invoke-virtual {v9}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 425
    :try_start_2
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    const-string v2, "6migrateOffsetId"

    .line 428
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    if-eq v2, v4, :cond_6

    const-string v2, "6migrateOffsetDate"

    .line 430
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    const-string v2, "6migrateOffsetUserId"

    .line 431
    invoke-static {v1, v2, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->getPrefIntOrLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:J

    const-string v2, "6migrateOffsetChatId"

    .line 432
    invoke-static {v1, v2, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->getPrefIntOrLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:J

    const-string v2, "6migrateOffsetChannelId"

    .line 433
    invoke-static {v1, v2, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->getPrefIntOrLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:J

    const-string v2, "6migrateOffsetAccess"

    .line 434
    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    :cond_6
    const-string/jumbo v2, "tmpPassword"

    .line 437
    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 439
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    if-eqz v2, :cond_7

    .line 441
    new-instance v4, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v4, v2}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 442
    invoke-virtual {v4, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v2

    invoke-static {v4, v2, v3}, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 443
    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    :cond_7
    const-string/jumbo v2, "user"

    .line 447
    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 449
    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    if-eqz v1, :cond_8

    .line 451
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v2, v1}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 452
    invoke-virtual {v2, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {v2, v1, v3}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 453
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 456
    :cond_8
    iget-object v1, p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_9

    .line 457
    invoke-direct {p0, v8, v1}, Lorg/telegram/messenger/UserConfig;->checkPremiumSelf(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$User;)V

    .line 459
    invoke-direct {p0}, Lorg/telegram/messenger/UserConfig;->updateUserId()V

    .line 461
    :cond_9
    iput-boolean v5, p0, Lorg/telegram/messenger/UserConfig;->configLoaded:Z

    .line 462
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public loadGlobalTTl()V
    .locals 4

    .line 668
    iget-boolean v0, p0, Lorg/telegram/messenger/UserConfig;->ttlIsLoading:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/UserConfig;->lastLoadingTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 671
    iput-boolean v0, p0, Lorg/telegram/messenger/UserConfig;->ttlIsLoading:Z

    .line 672
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDefaultHistoryTTL;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDefaultHistoryTTL;-><init>()V

    .line 673
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/UserConfig$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/UserConfig$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/UserConfig;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public resetSavedPassword()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 483
    iput-wide v0, p0, Lorg/telegram/messenger/UserConfig;->savedPasswordTime:J

    .line 484
    iget-object v0, p0, Lorg/telegram/messenger/UserConfig;->savedPasswordHash:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lorg/telegram/messenger/UserConfig;->savedPasswordHash:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 486
    iput-object v1, p0, Lorg/telegram/messenger/UserConfig;->savedPasswordHash:[B

    .line 488
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/UserConfig;->savedSaltedPassword:[B

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lorg/telegram/messenger/UserConfig;->savedSaltedPassword:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 490
    iput-object v1, p0, Lorg/telegram/messenger/UserConfig;->savedSaltedPassword:[B

    :cond_1
    return-void
.end method

.method public saveConfig(Z)V
    .locals 2

    .line 195
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/UserConfig$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/UserConfig$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/UserConfig;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method public savePassword([B[B)V
    .locals 2

    .line 470
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/UserConfig;->savedPasswordTime:J

    .line 471
    iput-object p1, p0, Lorg/telegram/messenger/UserConfig;->savedPasswordHash:[B

    .line 472
    iput-object p2, p0, Lorg/telegram/messenger/UserConfig;->savedSaltedPassword:[B

    return-void
.end method

.method public setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 2

    .line 325
    iget-object v0, p0, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 327
    iput-object p1, p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 329
    invoke-direct {p0}, Lorg/telegram/messenger/UserConfig;->updateUserId()V

    .line 330
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/UserConfig;->checkPremiumSelf(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$User;)V

    .line 331
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDialogsLoadOffset(IIIJJJJ)V
    .locals 4

    .line 636
    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2dialogsLoadOffsetId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-nez p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 638
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2dialogsLoadOffsetDate"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 639
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "2dialogsLoadOffsetUserId"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    move-object p3, v2

    goto :goto_2

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_2
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 640
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "2dialogsLoadOffsetChatId"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    move-object p3, v2

    goto :goto_3

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p6, p7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 641
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "2dialogsLoadOffsetChannelId"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_4

    move-object p3, v2

    goto :goto_4

    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_4
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p8, p9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 642
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "2dialogsLoadOffsetAccess"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_5
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p10, p11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const/4 p1, 0x1

    const-string p2, "hasValidDialogLoadIds"

    .line 643
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 644
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setGlobalTtl(I)V
    .locals 0

    .line 685
    iput p1, p0, Lorg/telegram/messenger/UserConfig;->globalTtl:I

    return-void
.end method

.method public setPinnedDialogsLoaded(IZ)V
    .locals 3

    .line 596
    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2pinnedDialogsLoaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setTotalDialogsCount(II)V
    .locals 3

    .line 621
    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2totalDialogsLoadCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updateSaveGalleryExceptions(ILandroid/util/LongSparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "_"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 524
    iput-object p2, p0, Lorg/telegram/messenger/UserConfig;->userSaveGalleryExceptions:Landroid/util/LongSparseArray;

    .line 525
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->USERS_PREF_NAME:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 526
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/UserConfig;->userSaveGalleryExceptions:Landroid/util/LongSparseArray;

    .line 525
    invoke-static {p1, p2}, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->saveExceptions(Landroid/content/SharedPreferences;Landroid/util/LongSparseArray;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 530
    iput-object p2, p0, Lorg/telegram/messenger/UserConfig;->groupsSaveGalleryExceptions:Landroid/util/LongSparseArray;

    .line 531
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->GROUPS_PREF_NAME:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 532
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/UserConfig;->groupsSaveGalleryExceptions:Landroid/util/LongSparseArray;

    .line 531
    invoke-static {p1, p2}, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->saveExceptions(Landroid/content/SharedPreferences;Landroid/util/LongSparseArray;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 536
    iput-object p2, p0, Lorg/telegram/messenger/UserConfig;->chanelSaveGalleryExceptions:Landroid/util/LongSparseArray;

    .line 537
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->CHANNELS_PREF_NAME:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 538
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/UserConfig;->chanelSaveGalleryExceptions:Landroid/util/LongSparseArray;

    .line 537
    invoke-static {p1, p2}, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->saveExceptions(Landroid/content/SharedPreferences;Landroid/util/LongSparseArray;)V

    :cond_2
    :goto_0
    return-void
.end method
