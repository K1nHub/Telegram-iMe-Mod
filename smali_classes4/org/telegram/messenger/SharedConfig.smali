.class public Lorg/telegram/messenger/SharedConfig;
.super Ljava/lang/Object;
.source "SharedConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/SharedConfig$BackgroundActivityPrefs;,
        Lorg/telegram/messenger/SharedConfig$PerformanceClass;,
        Lorg/telegram/messenger/SharedConfig$ProxyInfo;,
        Lorg/telegram/messenger/SharedConfig$PasscodeType;
    }
.end annotation


# static fields
.field private static final AVERAGE_DEVICES:[I

.field private static final HIGH_DEVICES:[I

.field private static final LOW_DEVICES:[I

.field private static final LOW_SOC:[I

.field public static final PASSCODE_TYPE_PASSWORD:I = 0x1

.field public static final PASSCODE_TYPE_PIN:I = 0x0

.field public static final PERFORMANCE_CLASS_AVERAGE:I = 0x1

.field public static final PERFORMANCE_CLASS_HIGH:I = 0x2

.field public static final PERFORMANCE_CLASS_LOW:I = 0x0

.field private static final PROXY_CURRENT_SCHEMA_VERSION:I = 0x2

.field private static final PROXY_SCHEMA_V2:I = 0x2

.field public static final SAVE_TO_GALLERY_FLAG_CHANNELS:I = 0x4

.field public static final SAVE_TO_GALLERY_FLAG_GROUP:I = 0x2

.field public static final SAVE_TO_GALLERY_FLAG_PEER:I = 0x1

.field public static allowBigEmoji:Z = false

.field public static allowScreenCapture:Z = false

.field private static animationsEnabled:Ljava/lang/Boolean; = null

.field public static appLocked:Z = false

.field public static archiveHidden:Z = false

.field public static autoLockIn:I = 0xe10

.field public static badPasscodeTries:I = 0x0

.field public static bigCameraForRound:Z = false

.field public static bubbleRadius:I = 0x0

.field public static chatBubbles:Z = false

.field private static chatSwipeAction:I = 0x0

.field private static configLoaded:Z = false

.field public static currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo; = null

.field public static customTabs:Z = false

.field public static dayNightThemeSwitchHintCount:I = 0x0

.field public static debugWebView:Z = false

.field private static devicePerformanceClass:I = 0x0

.field public static directShare:Z = false

.field public static directShareHash:Ljava/lang/String; = null

.field public static disableVoiceAudioEffects:Z = false

.field public static distanceSystemType:I = 0x0

.field public static dontAskManageStorage:Z = false

.field public static drawDialogIcons:Z = false

.field public static drawerHolidayIconType:Lorg/fork/enums/DrawerHolidayIconType; = null

.field public static emojiInteractionsHintCount:I = 0x0

.field public static fastScrollHintCount:I = 0x0

.field public static fontSize:I = 0x0

.field public static fontSizeIsDefault:Z = false

.field public static forceDisableTabletMode:Z = false

.field public static forwardingOptionsHintShown:Z = false

.field public static hasCameraCache:Z = false

.field public static hasEmailLogin:Z = false

.field public static inappCamera:Z = false

.field public static isActionBarAccountSwitchEnabled:Z = false

.field public static isAlbumsIntroShown:Z = false

.field public static isBotHelpTranslateEnabled:Z = false

.field public static isCallsConfirmationEnabled:Z = false

.field public static isChatSortingEnabledByDefault:Z = false

.field public static isChatThemesEnabled:Z = false

.field public static isCloudAlbumsEnabled:Z = false

.field public static isCombineMessagesEnabled:Z = false

.field public static isCustomSharingModeEnabled:Z = false

.field public static isDebugThemeSwitchEnabled:Z = false

.field public static isDeleteCloudConfirmationEnabled:Z = false

.field public static isDialogsCompactModeEnabled:Z = false

.field public static isExtendedAvatarPreviewerByTapEnabled:Z = false

.field public static isExtendedAvatarPreviewerEnabled:Z = false

.field public static isFilesOriginalNameSavingEnabled:Z = false

.field public static isFilesSendingPreviewAndCaptionEnabled:Z = false

.field public static isFilterTabsAtBottomEnabled:Z = false

.field public static isFloatingDebugActive:Z = false

.field public static isHideChatKeyboardOnScrollEnabled:Z = false

.field public static isMainActionBarMenuEnabled:Z = false

.field public static isMessageQuickTranslateEnabled:Z = false

.field public static isMultiForwardingOptionsHintShown:Z = false

.field public static isMultiReplyEnabled:Z = false

.field public static isMusicIntroShown:Z = false

.field public static isNewTelegramAuthorizationRulesRead:Z = false

.field public static isOpenForwardingOptionsAutomaticallyEnabled:Z = false

.field public static isPinnedPlayerMinimized:Z = false

.field public static isPinnedPlayerNightThemeEnabled:Z = false

.field public static isPinnedPlayerThemeOverridden:Z = false

.field public static isPlayerPinned:Z = false

.field public static isProfileInfoHidden:Z = false

.field public static isProxyButtonForceVisible:Z = false

.field public static isReactionsEnabled:Z = false

.field public static isReactionsInSendPopupEnabled:Z = false

.field public static isReadAllChatsConfirmationShown:Z = false

.field public static isRememberLastFilterTabEnabled:Z = false

.field public static isSendingGifConfirmationEnabled:Z = false

.field public static isSendingStickerConfirmationEnabled:Z = false

.field public static isShowDrawerHeaderArchiveEnabled:Z = false

.field public static isShowDrawerHeaderAvatarEnabled:Z = false

.field public static isShowDrawerHeaderSubtitleEnabled:Z = false

.field public static isShowDrawerHeaderTitleEnabled:Z = false

.field public static isSortCloudAlbumsByNameEnabled:Z = false

.field public static isSpeakWithoutHoldEnabled:Z = false

.field public static isSuggestPremiumReactionsEmoji:Z = false

.field public static isTranslateInSendPopupEnabled:Z = false

.field public static isVibrationEnabled:Z = false

.field public static isVideoSpeakWithoutHoldEnabled:Z = false

.field public static isWaitingForPasscodeEnter:Z = false

.field public static isWaitingForSectionPasscodeEnter:Z = false

.field public static ivFontSize:I = 0x0

.field public static keepMedia:I = 0x0

.field public static lastKeepMediaCheckTime:I = 0x0

.field private static lastLocalId:I = 0x0

.field public static lastLockedSectionsPauseTime:I = 0x0

.field public static lastLogsCheckTime:I = 0x0

.field public static lastPauseTime:I = 0x0

.field public static lastSelectedLanguage:Ljava/lang/String; = null

.field public static lastUpdateCheckTime:J = 0x0L

.field public static lastUpdateVersion:Ljava/lang/String; = null

.field public static lastUptimeMillis:J = 0x0L

.field private static legacyDevicePerformanceClass:I = -0x1

.field public static liteMode:Lorg/telegram/messenger/LiteMode; = null

.field private static final localIdSync:Ljava/lang/Object;

.field public static lockRecordAudioVideoHint:I = 0x0

.field public static mapPreviewType:I = 0x0

.field public static mediaColumnsCount:I = 0x0

.field public static messageSeenHintCount:I = 0x0

.field public static noSoundHintShowed:Z = false

.field public static final noStatusBar:Z = true

.field public static noiseSupression:Z = false

.field private static overrideDevicePerformanceClass:I = 0x0

.field public static passcodeHash:Ljava/lang/String; = ""

.field public static passcodeRetryInMs:J = 0x0L

.field public static passcodeSalt:[B = null

.field public static passcodeType:I = 0x0

.field public static passportConfigHash:I = 0x0

.field private static passportConfigJson:Ljava/lang/String; = null

.field private static passportConfigMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static pauseMusicOnMedia:Z = false

.field public static pauseMusicOnRecord:Z = false

.field public static pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate; = null

.field public static pendingAppUpdateBuildVersion:I = 0x0

.field public static playOrderReversed:Z = false

.field public static proxyList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SharedConfig$ProxyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static proxyListLoaded:Z = false

.field public static proxyRotationEnabled:Z = false

.field public static proxyRotationTimeout:I = 0x0

.field public static pushAuthKey:[B = null

.field public static pushAuthKeyId:[B = null

.field public static pushStatSent:Z = false

.field public static pushString:Ljava/lang/String; = ""

.field public static pushStringGetTimeEnd:J = 0x0L

.field public static pushStringGetTimeStart:J = 0x0L

.field public static pushStringStatus:Ljava/lang/String; = ""

.field public static pushType:I = 0x2

.field public static raiseToListen:Z = false

.field public static raiseToSpeak:Z = false

.field public static recordViaSco:Z = false

.field public static repeatMode:I = 0x0

.field public static roundCamera16to9:Z = false

.field public static saveIncomingPhotos:Z = false

.field public static saveStreamMedia:Z = false

.field public static scheduledOrNoSoundHintShows:I = 0x0

.field public static searchMessagesAsListHintShows:I = 0x0

.field public static searchMessagesAsListUsed:Z = false

.field public static selectedChatProfileTelegramIdMode:Lorg/fork/enums/ChatProfileTelegramIdMode; = null

.field public static selectedDialogTypesForMessagePopupReactions:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/fork/enums/DialogType;",
            ">;"
        }
    .end annotation
.end field

.field public static selectedDrawerHeaderSubtitle:Lcom/smedialink/ui/drawer/DrawerAccountData; = null

.field public static selectedDrawerHeaderTitle:Lcom/smedialink/ui/drawer/DrawerAccountData; = null

.field public static selectedDrawerItems:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/smedialink/ui/drawer/DrawerSwitchableItem;",
            ">;"
        }
    .end annotation
.end field

.field public static selectedExtendedAvatarPreviewerItems:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fork/enums/ExtendedAvatarPreviewerItem;",
            ">;"
        }
    .end annotation
.end field

.field public static selectedFilterTabWidthMode:Lorg/fork/enums/FilterTabWidthMode; = null

.field public static selectedFilterTabsNotificationMode:Lorg/fork/enums/FilterTabNotificationMode; = null

.field public static selectedPhotoViewerMenuItems:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/fork/enums/PhotoViewerMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public static selectedStickersSize:Lorg/fork/enums/StickersSize; = null

.field public static selectedTemplatesMode:Lorg/fork/enums/TemplatesMode; = null

.field public static selectedTemplatesSortingType:Lorg/fork/enums/TemplatesSortingType; = null

.field public static selectedVideoVoiceCamera:Lorg/fork/enums/VideoVoiceCamera; = null

.field public static showNotificationsForAllAccounts:Z = false

.field public static shuffleMusic:Z = false

.field public static sortContactsByName:Z = false

.field public static sortFilesByName:Z = false

.field public static stickersReorderingHintUsed:Z = false

.field public static storageCacheDir:Ljava/lang/String; = null

.field public static streamAllVideo:Z = false

.field public static streamMedia:Z = false

.field public static streamMkv:Z = false

.field public static suggestAnimatedEmoji:Z = false

.field public static suggestStickers:I = 0x0

.field private static final sync:Ljava/lang/Object;

.field public static textSelectionHintShows:I = 0x0

.field public static translateChats:Z = false

.field public static updateStickersOrderOnSend:Z = false

.field public static useFingerprint:Z = true

.field public static useSystemEmoji:Z

.field public static useThreeLinesLayout:Z


# direct methods
.method public static synthetic $r8$lambda$Gbso8AB3nMJIFZYcQDmGuoTqNdE(I)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->lambda$checkLogsToDelete$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$K1X-l4vRXrWWRPEci20ckE1evgE(Lorg/telegram/messenger/SharedConfig$ProxyInfo;Lorg/telegram/messenger/SharedConfig$ProxyInfo;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/SharedConfig;->lambda$saveProxyList$1(Lorg/telegram/messenger/SharedConfig$ProxyInfo;Lorg/telegram/messenger/SharedConfig$ProxyInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WtKrEMvWhflILeb19kJG2qAkvWc()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->lambda$checkSaveToGalleryFiles$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 518
    sput-object v1, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    .line 530
    sget v1, Lorg/telegram/messenger/CacheByChatsController;->KEEP_MEDIA_ONE_MONTH:I

    sput v1, Lorg/telegram/messenger/SharedConfig;->keepMedia:I

    const/4 v1, 0x1

    .line 542
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    const v2, -0x33450

    .line 544
    sput v2, Lorg/telegram/messenger/SharedConfig;->lastLocalId:I

    const-string v2, ""

    .line 548
    sput-object v2, Lorg/telegram/messenger/SharedConfig;->passportConfigJson:Ljava/lang/String;

    .line 553
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->sync:Ljava/lang/Object;

    .line 554
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->localIdSync:Ljava/lang/Object;

    const/4 v2, 0x2

    .line 557
    sput v2, Lorg/telegram/messenger/SharedConfig;->mapPreviewType:I

    .line 558
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->chatBubbles:Z

    .line 559
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    .line 560
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    .line 561
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    .line 562
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    .line 563
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->directShare:Z

    .line 564
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->inappCamera:Z

    .line 565
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->roundCamera16to9:Z

    .line 566
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->noSoundHintShowed:Z

    .line 567
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    .line 568
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    .line 569
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    .line 570
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    .line 571
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    .line 572
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnMedia:Z

    .line 581
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->showNotificationsForAllAccounts:Z

    const/16 v0, 0x10

    .line 585
    sput v0, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    const/16 v3, 0x11

    .line 587
    sput v3, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    .line 588
    sput v0, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    const/4 v0, 0x3

    .line 613
    sput v0, Lorg/telegram/messenger/SharedConfig;->mediaColumnsCount:I

    .line 614
    sput v0, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    .line 617
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->translateChats:Z

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 622
    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->LOW_SOC:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 636
    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->LOW_DEVICES:[I

    new-array v0, v2, [I

    .line 647
    fill-array-data v0, :array_2

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->AVERAGE_DEVICES:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 652
    fill-array-data v0, :array_3

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->HIGH_DEVICES:[I

    .line 666
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->loadConfig()V

    .line 721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    return-void

    nop

    :array_0
    .array-data 4
        -0x69cfd661    # -1.42303E-25f
        0x2fd4a230
        0x2fd4a24d
        0x2fd4a22e
        0x7b397146
        0x7b39710c
        0x7b397124
        0x7b3971c1
        0x7b397145
        0x7b3970ce
        -0x6e7bbc02
    .end array-data

    :array_1
    .array-data 4
        0x7175bef2
        0x71852e16
        0x60546897
        -0x2a83a9b9
        -0x5319ab24
        -0x101bb909
        -0x101bb567
        -0x101bb947
    .end array-data

    :array_2
    .array-data 4
        0x30751cab
        -0x3b3dea57
    .end array-data

    :array_3
    .array-data 4
        0x71c27b2b
        -0x3a71764b
        0x226b6651
        0x692fdf36
        0x71c1c593
        -0xcdca651
        -0xcd7a4b4
        -0x53197dfa
        0xd26134b
        0x67927a30
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProxy(Lorg/telegram/messenger/SharedConfig$ProxyInfo;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;
    .locals 5

    .line 1709
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->loadProxyList()V

    .line 1710
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1712
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 1713
    iget-object v3, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    iget-object v4, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    iget v4, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    iget-object v4, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    iget-object v4, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    iget-object v4, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1717
    :cond_1
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1718
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveProxyList()V

    return-object p0
.end method

.method public static animationsEnabled()Z
    .locals 3

    .line 1989
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->animationsEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1990
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "view_animations"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->animationsEnabled:Ljava/lang/Boolean;

    .line 1992
    :cond_0
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->animationsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static canBlurChat()Z
    .locals 2

    .line 1955
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static chatBlurEnabled()Z
    .locals 1

    .line 1959
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->canBlurChat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static checkLogsToDelete()V
    .locals 4

    .line 1305
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 1308
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 1309
    sget v1, Lorg/telegram/messenger/SharedConfig;->lastLogsCheckTime:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xe10

    if-ge v1, v2, :cond_1

    return-void

    .line 1312
    :cond_1
    sput v0, Lorg/telegram/messenger/SharedConfig;->lastLogsCheckTime:I

    .line 1313
    sget-object v1, Lorg/telegram/messenger/Utilities;->cacheClearQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static checkPasscode(Ljava/lang/String;)Z
    .locals 6

    .line 1146
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    array-length v0, v0

    const-string v1, "UTF-8"

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 1147
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-array v4, v2, [B

    .line 1151
    sput-object v4, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    .line 1152
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    sget-object v5, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1153
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 1154
    array-length v1, p0

    add-int/lit8 v1, v1, 0x20

    new-array v4, v1, [B

    .line 1155
    sget-object v5, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1156
    array-length v5, p0

    invoke-static {p0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1157
    sget-object v5, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    array-length p0, p0

    add-int/2addr p0, v2

    invoke-static {v5, v3, v4, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v1, v1

    .line 1158
    invoke-static {v4, v3, v1, v2}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    .line 1159
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1161
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0

    .line 1168
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 1169
    array-length v0, p0

    add-int/lit8 v0, v0, 0x20

    new-array v1, v0, [B

    .line 1170
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    invoke-static {v4, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1171
    array-length v4, p0

    invoke-static {p0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1172
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    array-length p0, p0

    add-int/2addr p0, v2

    invoke-static {v4, v3, v1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v4, v0

    .line 1173
    invoke-static {v1, v3, v4, v5}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    .line 1174
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    .line 1176
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v3
.end method

.method public static checkSaveToGalleryFiles()V
    .locals 2

    .line 1749
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    sget-object v1, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static clearConfig()V
    .locals 3

    const/4 v0, 0x0

    .line 1184
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->saveIncomingPhotos:Z

    .line 1185
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    .line 1186
    sput v0, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    const-wide/16 v1, 0x0

    .line 1187
    sput-wide v1, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    .line 1188
    sput-wide v1, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    .line 1189
    sput v0, Lorg/telegram/messenger/SharedConfig;->badPasscodeTries:I

    const-string v1, ""

    .line 1190
    sput-object v1, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    new-array v1, v0, [B

    .line 1191
    sput-object v1, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    const/16 v1, 0xe10

    .line 1192
    sput v1, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    .line 1193
    sput v0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    const/4 v1, 0x1

    .line 1194
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->useFingerprint:Z

    .line 1195
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    .line 1196
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    .line 1197
    sget-object v1, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    sput-object v1, Lorg/telegram/messenger/SharedConfig;->lastUpdateVersion:Ljava/lang/String;

    .line 1198
    sput v0, Lorg/telegram/messenger/SharedConfig;->textSelectionHintShows:I

    .line 1199
    sput v0, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintShows:I

    .line 1200
    sput v0, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    .line 1201
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->forwardingOptionsHintShown:Z

    const/4 v0, 0x3

    .line 1202
    sput v0, Lorg/telegram/messenger/SharedConfig;->messageSeenHintCount:I

    .line 1203
    sput v0, Lorg/telegram/messenger/SharedConfig;->emojiInteractionsHintCount:I

    .line 1204
    sput v0, Lorg/telegram/messenger/SharedConfig;->dayNightThemeSwitchHintCount:I

    .line 1205
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    return-void
.end method

.method public static deleteProxy(Lorg/telegram/messenger/SharedConfig$ProxyInfo;)V
    .locals 10

    .line 1727
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1728
    sput-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 1729
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "proxy_enabled"

    const/4 v2, 0x0

    .line 1730
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1731
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "proxy_ip"

    const-string v5, ""

    .line 1732
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "proxy_pass"

    .line 1733
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "proxy_user"

    .line 1734
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "proxy_secret"

    .line 1735
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v4, 0x438

    const-string v5, "proxy_port"

    .line 1736
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1737
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "proxy_enabled_calls"

    .line 1738
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1739
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    .line 1741
    invoke-static/range {v4 .. v9}, Lorg/telegram/tgnet/ConnectionsManager;->setProxySettings(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    :cond_0
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1745
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveProxyList()V

    return-void
.end method

.method public static deviceIsAboveAverage()Z
    .locals 2

    .line 2004
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static deviceIsAverage()Z
    .locals 2

    .line 2012
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static deviceIsHigh()Z
    .locals 2

    .line 2008
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static deviceIsLow()Z
    .locals 1

    .line 2000
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static enabledRaiseTo(Z)Z
    .locals 1

    .line 1482
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static forwardingOptionsHintHintShowed()V
    .locals 3

    .line 1254
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1255
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    .line 1256
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->forwardingOptionsHintShown:Z

    const-string v2, "forwardingOptionsHintShown"

    .line 1257
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1258
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static getChatSwipeAction(I)I
    .locals 5

    .line 1780
    invoke-static {p0}, Lorg/fork/controller/FiltersController;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/FiltersController;->isHideFoldersEnabled()Z

    move-result v0

    .line 1781
    invoke-static {p0}, Lorg/fork/controller/FiltersController;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/fork/controller/FiltersController;->getActiveSortingTabsCount(Z)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 1783
    :cond_0
    sget v1, Lorg/telegram/messenger/SharedConfig;->chatSwipeAction:I

    const/4 v3, 0x2

    const/4 v4, 0x5

    if-ltz v1, :cond_3

    if-ne v1, v4, :cond_2

    if-nez v0, :cond_1

    .line 1784
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    if-nez v2, :cond_2

    return v3

    .line 1787
    :cond_2
    sget p0, Lorg/telegram/messenger/SharedConfig;->chatSwipeAction:I

    return p0

    :cond_3
    if-nez v0, :cond_4

    .line 1788
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    if-eqz v2, :cond_6

    :cond_5
    return v4

    :cond_6
    return v3
.end method

.method public static getCountryLangs()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1082
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passportConfigMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1083
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->passportConfigMap:Ljava/util/HashMap;

    .line 1085
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->passportConfigJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1087
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1088
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1089
    sget-object v3, Lorg/telegram/messenger/SharedConfig;->passportConfigMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1092
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1095
    :cond_0
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passportConfigMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getDevicePerformanceClass()I
    .locals 2

    .line 1834
    sget v0, Lorg/telegram/messenger/SharedConfig;->overrideDevicePerformanceClass:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1837
    :cond_0
    sget v0, Lorg/telegram/messenger/SharedConfig;->devicePerformanceClass:I

    if-ne v0, v1, :cond_1

    .line 1838
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->measureDevicePerformanceClass()I

    move-result v0

    sput v0, Lorg/telegram/messenger/SharedConfig;->devicePerformanceClass:I

    .line 1840
    :cond_1
    sget v0, Lorg/telegram/messenger/SharedConfig;->devicePerformanceClass:I

    return v0
.end method

.method public static getDrawerHeaderSettings()Lorg/fork/models/DrawerHeaderSettings;
    .locals 8

    .line 143
    new-instance v7, Lorg/fork/models/DrawerHeaderSettings;

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderTitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderSubtitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderTitleEnabled:Z

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderSubtitleEnabled:Z

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderAvatarEnabled:Z

    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderArchiveEnabled:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/fork/models/DrawerHeaderSettings;-><init>(Lcom/smedialink/ui/drawer/DrawerAccountData;Lcom/smedialink/ui/drawer/DrawerAccountData;ZZZZ)V

    return-object v7
.end method

.method public static getLastLocalId()I
    .locals 3

    .line 791
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->localIdSync:Ljava/lang/Object;

    monitor-enter v0

    .line 792
    :try_start_0
    sget v1, Lorg/telegram/messenger/SharedConfig;->lastLocalId:I

    add-int/lit8 v2, v1, -0x1

    sput v2, Lorg/telegram/messenger/SharedConfig;->lastLocalId:I

    .line 793
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getLegacyDevicePerformanceClass()I
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2026
    sget v0, Lorg/telegram/messenger/SharedConfig;->legacyDevicePerformanceClass:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 2027
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2028
    sget v2, Lorg/telegram/tgnet/ConnectionsManager;->CPU_COUNT:I

    .line 2029
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v5, v2, :cond_1

    .line 2034
    :try_start_0
    new-instance v9, Ljava/io/RandomAccessFile;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "/sys/devices/system/cpu/cpu%d/cpufreq/cpuinfo_max_freq"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v4

    invoke-static {v10, v11, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "r"

    invoke-direct {v9, v8, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 2037
    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/lit16 v8, v8, 0x3e8

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    .line 2040
    :cond_0
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-nez v6, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    int-to-float v5, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    .line 2043
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    :goto_1
    const/16 v6, 0x15

    if-lt v0, v6, :cond_9

    const/4 v7, 0x2

    if-le v2, v7, :cond_9

    const/16 v9, 0x64

    if-le v3, v9, :cond_9

    const/4 v9, 0x4

    if-gt v2, v9, :cond_3

    if-eq v5, v1, :cond_3

    const/16 v10, 0x4e2

    if-le v5, v10, :cond_9

    :cond_3
    const/16 v10, 0x80

    if-gt v2, v9, :cond_4

    const/16 v11, 0x640

    if-gt v5, v11, :cond_4

    if-gt v3, v10, :cond_4

    if-le v0, v6, :cond_9

    :cond_4
    if-gt v2, v9, :cond_5

    const/16 v6, 0x514

    if-gt v5, v6, :cond_5

    if-gt v3, v10, :cond_5

    const/16 v6, 0x18

    if-gt v0, v6, :cond_5

    goto :goto_3

    :cond_5
    const/16 v4, 0x8

    if-lt v2, v4, :cond_8

    const/16 v6, 0xa0

    if-le v3, v6, :cond_8

    if-eq v5, v1, :cond_6

    const/16 v3, 0x802

    if-le v5, v3, :cond_8

    :cond_6
    if-ne v5, v1, :cond_7

    if-ne v2, v4, :cond_7

    const/16 v1, 0x17

    if-gt v0, v1, :cond_7

    goto :goto_2

    .line 2050
    :cond_7
    sput v7, Lorg/telegram/messenger/SharedConfig;->legacyDevicePerformanceClass:I

    goto :goto_4

    .line 2048
    :cond_8
    :goto_2
    sput v8, Lorg/telegram/messenger/SharedConfig;->legacyDevicePerformanceClass:I

    goto :goto_4

    .line 2046
    :cond_9
    :goto_3
    sput v4, Lorg/telegram/messenger/SharedConfig;->legacyDevicePerformanceClass:I

    .line 2053
    :cond_a
    :goto_4
    sget v0, Lorg/telegram/messenger/SharedConfig;->legacyDevicePerformanceClass:I

    return v0
.end method

.method public static getPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 1996
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "userconfing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static hasPreferenceKey(Ljava/lang/String;)Z
    .locals 1

    .line 139
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static increaseBadPasscodeTries()V
    .locals 2

    .line 1034
    sget v0, Lorg/telegram/messenger/SharedConfig;->badPasscodeTries:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/telegram/messenger/SharedConfig;->badPasscodeTries:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x7530

    .line 1053
    sput-wide v0, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x61a8

    .line 1050
    sput-wide v0, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x4e20

    .line 1047
    sput-wide v0, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x3a98

    .line 1044
    sput-wide v0, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x2710

    .line 1041
    sput-wide v0, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x1388

    .line 1038
    sput-wide v0, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    .line 1056
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    .line 1058
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    return-void
.end method

.method public static increaseLockRecordAudioVideoHintShowed()V
    .locals 3

    .line 1269
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1270
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1271
    sget v1, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    const-string v2, "lockRecordAudioVideoHint"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1272
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static increaseScheduledOrNoSuoundHintShowed()V
    .locals 3

    .line 1247
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1248
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1249
    sget v1, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintShows:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintShows:I

    const-string v2, "scheduledOrNoSoundHintShows"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1250
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static increaseSearchAsListHintShows()V
    .locals 3

    .line 1283
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1284
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1285
    sget v1, Lorg/telegram/messenger/SharedConfig;->searchMessagesAsListHintShows:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/telegram/messenger/SharedConfig;->searchMessagesAsListHintShows:I

    const-string v2, "searchMessagesAsListHintShows"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static increaseTextSelectionHintShowed()V
    .locals 3

    .line 1233
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1234
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1235
    sget v1, Lorg/telegram/messenger/SharedConfig;->textSelectionHintShows:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/telegram/messenger/SharedConfig;->textSelectionHintShows:I

    const-string v2, "textSelectionHintShows"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1236
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static isAppUpdateAvailable()Z
    .locals 3

    .line 1099
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/BuildVars;->isStandaloneApp()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1104
    :cond_0
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1105
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1107
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1108
    sget v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION:I

    .line 1110
    :goto_0
    sget v2, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdateBuildVersion:I

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_1
    return v1
.end method

.method public static isAutoplayGifs()Z
    .locals 1

    const/16 v0, 0x800

    .line 1066
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isAutoplayVideo()Z
    .locals 1

    const/16 v0, 0x400

    .line 1062
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isPassportConfigLoaded()Z
    .locals 1

    .line 1070
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passportConfigMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isProxyEnabled()Z
    .locals 3

    .line 1723
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "proxy_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isSecretMapPreviewSet()Z
    .locals 2

    .line 1442
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mapPreviewType"

    .line 1443
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$checkLogsToDelete$0(I)V
    .locals 3

    const v0, 0xd2f00

    sub-int/2addr p0, v0

    int-to-long v0, p0

    .line 1316
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getLogsDir()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 1320
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clearDir(Ljava/lang/String;IJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1322
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1324
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1325
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1326
    sget v0, Lorg/telegram/messenger/SharedConfig;->lastLogsCheckTime:I

    const-string v1, "lastLogsCheckTime"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1327
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static synthetic lambda$checkSaveToGalleryFiles$2()V
    .locals 4

    .line 1751
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Telegram"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1752
    new-instance v1, Ljava/io/File;

    const-string v2, "Telegram Images"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1753
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1754
    new-instance v2, Ljava/io/File;

    const-string v3, "Telegram Video"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1755
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 1757
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ".nomedia"

    if-nez v0, :cond_1

    .line 1758
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1759
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1761
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1762
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1765
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1766
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    .line 1768
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1769
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1773
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic lambda$saveProxyList$1(Lorg/telegram/messenger/SharedConfig$ProxyInfo;Lorg/telegram/messenger/SharedConfig$ProxyInfo;)I
    .locals 10

    .line 1677
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    const-wide/32 v1, -0x30d40

    const-wide/16 v3, 0x0

    if-ne v0, p0, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    .line 1678
    :goto_0
    iget-boolean v7, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    const-wide/32 v8, 0x186a0

    if-nez v7, :cond_1

    add-long/2addr v5, v8

    :cond_1
    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    move-wide v1, v3

    .line 1682
    :goto_1
    iget-boolean v0, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    if-nez v0, :cond_3

    add-long/2addr v1, v8

    .line 1685
    :cond_3
    iget-wide v3, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    add-long/2addr v3, v5

    iget-wide p0, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    add-long/2addr p0, v1

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static loadConfig()V
    .locals 11

    .line 798
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 799
    :try_start_0
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->configLoaded:Z

    if-nez v1, :cond_d

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 803
    :cond_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "background_activity"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig$BackgroundActivityPrefs;->access$002(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 805
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "userconfing"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "saveIncomingPhotos"

    .line 806
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->saveIncomingPhotos:Z

    const-string v2, "passcodeHash1"

    const-string v4, ""

    .line 807
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    const-string v2, "appLocked"

    .line 808
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    const-string v2, "passcodeType"

    .line 809
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    const-string v2, "passcodeRetryInMs"

    const-wide/16 v4, 0x0

    .line 810
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    const-string v2, "lastUptimeMillis"

    .line 811
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    const-string v2, "badPasscodeTries"

    .line 812
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->badPasscodeTries:I

    const-string v2, "autoLockIn"

    const/16 v4, 0xe10

    .line 813
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    const-string v2, "lastPauseTime"

    .line 814
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    const-string v2, "useFingerprint"

    const/4 v4, 0x1

    .line 815
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->useFingerprint:Z

    const-string v2, "lastUpdateVersion2"

    const-string v5, "3.5"

    .line 816
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->lastUpdateVersion:Ljava/lang/String;

    const-string v2, "allowScreenCapture"

    .line 817
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    const-string v2, "lastLocalId"

    const v5, -0x33450

    .line 818
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->lastLocalId:I

    const-string v2, "pushString2"

    const-string v5, ""

    .line 819
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    const-string v2, "pushType"

    const/4 v5, 0x2

    .line 820
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->pushType:I

    const-string v2, "pushStatSent"

    .line 821
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->pushStatSent:Z

    const-string v2, "passportConfigJson"

    const-string v6, ""

    .line 822
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->passportConfigJson:Ljava/lang/String;

    const-string v2, "passportConfigHash"

    .line 823
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->passportConfigHash:I

    const-string v2, "storageCacheDir"

    const/4 v6, 0x0

    .line 824
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    const-string v2, "proxyRotationEnabled"

    .line 825
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->proxyRotationEnabled:Z

    const-string v2, "proxyRotationTimeout"

    .line 826
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->proxyRotationTimeout:I

    const-string v2, "pushAuthKey"

    .line 827
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 828
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 829
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    .line 832
    :cond_1
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    sget v2, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    if-nez v2, :cond_2

    .line 833
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    const-wide/16 v9, 0x258

    sub-long/2addr v7, v9

    long-to-int v2, v7

    sput v2, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    :cond_2
    const-string v2, "passcodeSalt"

    const-string v7, ""

    .line 836
    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 837
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 838
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    goto :goto_0

    :cond_3
    new-array v2, v3, [B

    .line 840
    sput-object v2, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    :goto_0
    const-string v2, "appUpdateCheckTime"

    .line 842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-interface {v1, v2, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    sput-wide v7, Lorg/telegram/messenger/SharedConfig;->lastUpdateCheckTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "appUpdate"

    .line 844
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v7, "appUpdateBuild"

    .line 846
    sget v8, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdateBuildVersion:I

    .line 847
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 849
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v2, v1}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 850
    invoke-virtual {v2, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {v2, v1, v3}, Lorg/telegram/tgnet/TLRPC$help_AppUpdate;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$help_AppUpdate;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    sput-object v1, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 851
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 854
    :cond_4
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_8

    .line 859
    :try_start_2
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 860
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 861
    :try_start_3
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    move v2, v3

    .line 863
    :goto_1
    :try_start_4
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v1, v6

    :goto_2
    if-nez v2, :cond_5

    .line 866
    sget v2, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION:I

    :cond_5
    if-nez v1, :cond_6

    .line 869
    sget-object v1, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    .line 871
    :cond_6
    sget v7, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdateBuildVersion:I

    if-ne v7, v2, :cond_7

    sget-object v2, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_7

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v1, :cond_8

    .line 872
    :cond_7
    sput-object v6, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 873
    sget-object v1, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda2;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v1

    .line 877
    :try_start_5
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 880
    :cond_8
    :goto_3
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 882
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->lastLockedSectionsPauseTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->lastLockedSectionsPauseTime()I

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->lastLockedSectionsPauseTime:I

    .line 883
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isWaitingForSectionPasscodeEnter()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isWaitingForSectionPasscodeEnter()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isWaitingForSectionPasscodeEnter:Z

    .line 884
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isDebugThemeSwitchEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isDebugThemeSwitchEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isDebugThemeSwitchEnabled:Z

    .line 885
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isFilesOriginalNameSavingEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isFilesOriginalNameSavingEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isFilesOriginalNameSavingEnabled:Z

    .line 886
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isFilesSendingPreviewAndCaptionEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isFilesSendingPreviewAndCaptionEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isFilesSendingPreviewAndCaptionEnabled:Z

    .line 887
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isVibrationEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isVibrationEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isVibrationEnabled:Z

    .line 888
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedStickersSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->selectedStickersSize()Lorg/fork/enums/StickersSize;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/fork/enums/StickersSize;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/StickersSize;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedStickersSize:Lorg/fork/enums/StickersSize;

    .line 889
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isProxyButtonForceVisible()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isProxyButtonForceVisible()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isProxyButtonForceVisible:Z

    .line 890
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isReadAllChatsConfirmationShown()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isReadAllChatsConfirmationShown()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isReadAllChatsConfirmationShown:Z

    .line 891
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isProfileInfoHidden()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isProfileInfoHidden()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isProfileInfoHidden:Z

    .line 892
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isMultiForwardingOptionsHintShown()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isMultiForwardingOptionsHintShown()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isMultiForwardingOptionsHintShown:Z

    .line 893
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedDrawerHeaderTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->selectedDrawerHeaderTitle()Lcom/smedialink/ui/drawer/DrawerAccountData;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/smedialink/ui/drawer/DrawerAccountData;->mapNameToEnum(Ljava/lang/String;Lcom/smedialink/ui/drawer/DrawerAccountData;)Lcom/smedialink/ui/drawer/DrawerAccountData;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderTitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

    .line 894
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedDrawerHeaderSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->selectedDrawerHeaderSubtitle()Lcom/smedialink/ui/drawer/DrawerAccountData;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/smedialink/ui/drawer/DrawerAccountData;->mapNameToEnum(Ljava/lang/String;Lcom/smedialink/ui/drawer/DrawerAccountData;)Lcom/smedialink/ui/drawer/DrawerAccountData;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderSubtitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

    .line 895
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderTitleEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isShowDrawerHeaderTitleEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderTitleEnabled:Z

    .line 896
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderSubtitleEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isShowDrawerHeaderSubtitleEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderSubtitleEnabled:Z

    .line 897
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderAvatarEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isShowDrawerHeaderAvatarEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderAvatarEnabled:Z

    .line 898
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderArchiveEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isShowDrawerHeaderArchiveEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderArchiveEnabled:Z

    .line 899
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedDrawerItems()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->selectedDrawerItems()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    .line 900
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isActionBarAccountSwitchEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isActionBarAccountSwitchEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isActionBarAccountSwitchEnabled:Z

    .line 901
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isMainActionBarMenuEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isMainActionBarMenuEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isMainActionBarMenuEnabled:Z

    .line 902
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isDialogsCompactModeEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isDialogsCompactModeEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    .line 903
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isHideChatKeyboardOnScrollEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isHideChatKeyboardOnScrollEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isHideChatKeyboardOnScrollEnabled:Z

    .line 904
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isChatThemesEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isChatThemesEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isChatThemesEnabled:Z

    .line 905
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isExtendedAvatarPreviewerEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isExtendedAvatarPreviewerEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerEnabled:Z

    .line 906
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isExtendedAvatarPreviewerByTapEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isExtendedAvatarPreviewerByTapEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerByTapEnabled:Z

    .line 907
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedExtendedAvatarPreviewerItems()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->selectedExtendedAvatarPreviewerItems()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lorg/fork/enums/ExtendedAvatarPreviewerItem;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedExtendedAvatarPreviewerItems:Ljava/util/List;

    .line 908
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isCallsConfirmationEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isCallsConfirmationEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isCallsConfirmationEnabled:Z

    .line 909
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isDeleteCloudConfirmationEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isDeleteCloudConfirmationEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isDeleteCloudConfirmationEnabled:Z

    .line 910
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isSendingGifConfirmationEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isSendingGifConfirmationEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    .line 911
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isSendingStickerConfirmationEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isSendingStickerConfirmationEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isSendingStickerConfirmationEnabled:Z

    .line 912
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isSpeakWithoutHoldEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isSpeakWithoutHoldEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isSpeakWithoutHoldEnabled:Z

    .line 913
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isVideoSpeakWithoutHoldEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isVideoSpeakWithoutHoldEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isVideoSpeakWithoutHoldEnabled:Z

    .line 914
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedVideoVoiceCamera()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->selectedVideoVoiceCamera()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/fork/enums/VideoVoiceCamera;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/VideoVoiceCamera;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedVideoVoiceCamera:Lorg/fork/enums/VideoVoiceCamera;

    .line 915
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isOpenForwardingOptionsAutomaticallyEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isOpenForwardingOptionsAutomaticallyEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isOpenForwardingOptionsAutomaticallyEnabled:Z

    .line 916
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isCustomSharingModeEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isCustomSharingModeEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isCustomSharingModeEnabled:Z

    .line 917
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isMultiReplyEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isMultiReplyEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isMultiReplyEnabled:Z

    .line 918
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedChatProfileTelegramIdMode()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->selectedChatProfileTelegramIdMode()Lorg/fork/enums/ChatProfileTelegramIdMode;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/fork/enums/ChatProfileTelegramIdMode;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/ChatProfileTelegramIdMode;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedChatProfileTelegramIdMode:Lorg/fork/enums/ChatProfileTelegramIdMode;

    .line 919
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isMessageQuickTranslateEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isMessageQuickTranslateEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isMessageQuickTranslateEnabled:Z

    .line 920
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isBotHelpTranslateEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isBotHelpTranslateEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isBotHelpTranslateEnabled:Z

    .line 921
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isTranslateInSendPopupEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isTranslateInSendPopupEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isTranslateInSendPopupEnabled:Z

    .line 922
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isCombineMessagesEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isCombineMessagesEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isCombineMessagesEnabled:Z

    .line 923
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedPhotoViewerMenuItems()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->selectedPhotoViewerMenuItems()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lorg/fork/enums/PhotoViewerMenuItem;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    .line 924
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isReactionsEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isReactionsEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isReactionsEnabled:Z

    .line 925
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedDialogTypesForMessagePopupReactions()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->selectedDialogTypesForMessagePopupReactions()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lorg/fork/enums/DialogType;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedDialogTypesForMessagePopupReactions:Ljava/util/Set;

    .line 926
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isReactionsInSendPopupEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isReactionsInSendPopupEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isReactionsInSendPopupEnabled:Z

    .line 927
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isFilterTabsAtBottomEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isFilterTabsAtBottomEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    .line 928
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedFilterTabsNotificationMode()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->selectedFilterTabsNotificationMode()Lorg/fork/enums/FilterTabNotificationMode;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/fork/enums/FilterTabNotificationMode;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/FilterTabNotificationMode;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabsNotificationMode:Lorg/fork/enums/FilterTabNotificationMode;

    .line 929
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isRememberLastFilterTabEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isRememberLastFilterTabEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isRememberLastFilterTabEnabled:Z

    .line 930
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isChatSortingEnabledByDefault()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isChatSortingEnabledByDefault()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isChatSortingEnabledByDefault:Z

    .line 931
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isCloudAlbumsEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isCloudAlbumsEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    .line 932
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isAlbumsIntroShown()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isAlbumsIntroShown()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isAlbumsIntroShown:Z

    .line 933
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isSortCloudAlbumsByNameEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isSortCloudAlbumsByNameEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isSortCloudAlbumsByNameEnabled:Z

    .line 934
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isPlayerPinned()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isPlayerPinned()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isPlayerPinned:Z

    .line 935
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isPinnedPlayerMinimized()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isPinnedPlayerMinimized()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerMinimized:Z

    .line 936
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isPinnedPlayerThemeOverridden()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isPinnedPlayerThemeOverridden()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerThemeOverridden:Z

    .line 937
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isPinnedPlayerNightThemeEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isPinnedPlayerNightThemeEnabled()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerNightThemeEnabled:Z

    .line 938
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isMusicIntroShown()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isMusicIntroShown()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isMusicIntroShown:Z

    .line 939
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedTemplatesMode()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->selectedTemplatesMode()Lorg/fork/enums/TemplatesMode;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/fork/enums/TemplatesMode;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/TemplatesMode;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesMode:Lorg/fork/enums/TemplatesMode;

    .line 940
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedTemplatesSortingType()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->selectedTemplatesSortingType()Lorg/fork/enums/TemplatesSortingType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/fork/enums/TemplatesSortingType;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/TemplatesSortingType;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesSortingType:Lorg/fork/enums/TemplatesSortingType;

    .line 941
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->lastSelectedLanguages()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->lastSelectedLanguages()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->lastSelectedLanguage:Ljava/lang/String;

    .line 942
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isSuggestPremiumReactionsEmoji()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isSuggestPremiumReactionsEmoji()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isSuggestPremiumReactionsEmoji:Z

    .line 943
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedFilterTabsWidthMode()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->selectedFilterTabsWidthMode()Lorg/fork/enums/FilterTabWidthMode;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/fork/enums/FilterTabWidthMode;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/FilterTabWidthMode;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lorg/fork/enums/FilterTabWidthMode;

    .line 944
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedDrawerHolidayIconType()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->selectedDrawerHolidayIconType()Lorg/fork/enums/DrawerHolidayIconType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/fork/enums/DrawerHolidayIconType;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/DrawerHolidayIconType;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->drawerHolidayIconType:Lorg/fork/enums/DrawerHolidayIconType;

    .line 945
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isNewTelegramAuthorizationRulesRead()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global$Default;->isNewTelegramAuthorizationRulesRead()Z

    move-result v7

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isNewTelegramAuthorizationRulesRead:Z

    .line 946
    invoke-static {v1}, Lcom/smedialink/common/TelegramPreferenceMigrationManager;->migrateGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 948
    invoke-static {v1}, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->load(Landroid/content/SharedPreferences;)V

    const-string v2, "mapPreviewType"

    .line 949
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->mapPreviewType:I

    const-string v2, "raise_to_listen"

    .line 950
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    const-string v2, "raise_to_speak"

    .line 951
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    const-string v2, "record_via_sco"

    .line 952
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    const-string v2, "custom_tabs"

    .line 953
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    const-string v2, "direct_share"

    .line 954
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->directShare:Z

    const-string v2, "shuffleMusic"

    .line 955
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-nez v2, :cond_9

    const-string v2, "playOrderReversed"

    .line 956
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v4

    goto :goto_4

    :cond_9
    move v2, v3

    :goto_4
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    const-string v2, "inappCamera"

    .line 957
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->inappCamera:Z

    const-string v2, "cameraCache"

    .line 958
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->hasCameraCache:Z

    .line 959
    sput-boolean v4, Lorg/telegram/messenger/SharedConfig;->roundCamera16to9:Z

    const-string v2, "repeatMode"

    .line 960
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    const-string v2, "fons_size"

    .line 961
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x12

    goto :goto_5

    :cond_a
    const/16 v5, 0x10

    :goto_5
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    const-string v2, "fons_size"

    .line 962
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v4

    goto :goto_6

    :cond_b
    move v2, v3

    :goto_6
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->fontSizeIsDefault:Z

    const-string v2, "bubbleRadius"

    const/16 v5, 0x11

    .line 963
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    const-string v2, "iv_font_size"

    .line 964
    sget v5, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    const-string v2, "allowBigEmoji"

    .line 965
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->allowBigEmoji:Z

    const-string v2, "useSystemEmoji"

    .line 966
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->useSystemEmoji:Z

    const-string v2, "streamMedia"

    .line 967
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    const-string v2, "saveStreamMedia"

    .line 968
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    const-string v2, "pauseMusicOnRecord"

    .line 969
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    const-string v2, "pauseMusicOnMedia"

    .line 970
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnMedia:Z

    const-string v2, "forceDisableTabletMode"

    .line 971
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->forceDisableTabletMode:Z

    const-string v2, "streamAllVideo"

    .line 972
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    const-string v2, "streamMkv"

    .line 973
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    const-string v2, "suggestStickers"

    .line 974
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    const-string v2, "suggestAnimatedEmoji"

    .line 975
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    const-string v2, "overrideDevicePerformanceClass"

    const/4 v5, -0x1

    .line 976
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->overrideDevicePerformanceClass:I

    const-string v2, "devicePerformanceClass"

    .line 977
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->devicePerformanceClass:I

    const-string v2, "sortContactsByName"

    .line 978
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->sortContactsByName:Z

    const-string v2, "sortFilesByName"

    .line 979
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->sortFilesByName:Z

    const-string v2, "noSoundHintShowed"

    .line 980
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->noSoundHintShowed:Z

    const-string v2, "directShareHash2"

    .line 981
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->directShareHash:Ljava/lang/String;

    const-string v2, "useThreeLinesLayout"

    .line 982
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    const-string v2, "archiveHidden"

    .line 983
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    const-string v2, "distanceSystemType"

    .line 984
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->distanceSystemType:I

    const-string v2, "keep_media"

    .line 985
    sget v6, Lorg/telegram/messenger/CacheByChatsController;->KEEP_MEDIA_ONE_MONTH:I

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->keepMedia:I

    const-string v2, "debugWebView"

    .line 986
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    const-string v2, "lastKeepMediaCheckTime"

    .line 987
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->lastKeepMediaCheckTime:I

    const-string v2, "lastLogsCheckTime"

    .line 988
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->lastLogsCheckTime:I

    const-string v2, "searchMessagesAsListHintShows"

    .line 989
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->searchMessagesAsListHintShows:I

    const-string v2, "searchMessagesAsListUsed"

    .line 990
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->searchMessagesAsListUsed:Z

    const-string v2, "stickersReorderingHintUsed"

    .line 991
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->stickersReorderingHintUsed:Z

    const-string v2, "textSelectionHintShows"

    .line 992
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->textSelectionHintShows:I

    const-string v2, "scheduledOrNoSoundHintShows"

    .line 993
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintShows:I

    const-string v2, "forwardingOptionsHintShown"

    .line 994
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->forwardingOptionsHintShown:Z

    const-string v2, "lockRecordAudioVideoHint"

    .line 995
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    const-string v2, "disableVoiceAudioEffects"

    .line 996
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->disableVoiceAudioEffects:Z

    const-string v2, "noiseSupression"

    .line 997
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->noiseSupression:Z

    const-string v2, "ChatSwipeAction"

    .line 998
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->chatSwipeAction:I

    const-string v2, "messageSeenCount"

    const/4 v5, 0x3

    .line 999
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->messageSeenHintCount:I

    const-string v2, "emojiInteractionsHintCount"

    .line 1000
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->emojiInteractionsHintCount:I

    const-string v2, "dayNightThemeSwitchHintCount"

    .line 1001
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->dayNightThemeSwitchHintCount:I

    const-string v2, "mediaColumnsCount"

    .line 1002
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->mediaColumnsCount:I

    const-string v2, "fastScrollHintCount"

    .line 1003
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    const-string v2, "dontAskManageStorage"

    .line 1004
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->dontAskManageStorage:Z

    const-string v2, "hasEmailLogin"

    .line 1005
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->hasEmailLogin:Z

    const-string v2, "floatingDebugActive"

    .line 1006
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isFloatingDebugActive:Z

    const-string v2, "updateStickersOrderOnSend"

    .line 1007
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    const-string v2, "bigCameraForRound"

    .line 1008
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->bigCameraForRound:Z

    .line 1010
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "Notifications"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "AllAccounts"

    .line 1011
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->showNotificationsForAllAccounts:Z

    .line 1013
    sput-boolean v4, Lorg/telegram/messenger/SharedConfig;->configLoaded:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1016
    :try_start_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_c

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    if-eqz v1, :cond_c

    .line 1017
    invoke-static {v4}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    :catch_3
    move-exception v1

    .line 1020
    :try_start_7
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1022
    :cond_c
    :goto_7
    monitor-exit v0

    return-void

    .line 800
    :cond_d
    :goto_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 1022
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v1
.end method

.method public static loadProxyList()V
    .locals 16

    .line 1605
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->proxyListLoaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 1608
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "proxy_ip"

    const-string v3, ""

    .line 1609
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "proxy_user"

    .line 1610
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "proxy_pass"

    .line 1611
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "proxy_secret"

    .line 1612
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v1, 0x438

    const-string v3, "proxy_port"

    .line 1613
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v1, 0x1

    .line 1615
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->proxyListLoaded:Z

    .line 1616
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 1617
    sput-object v1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    const-string v3, "proxy_list"

    .line 1618
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1619
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1620
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1621
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v1, v0}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 1622
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 1624
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 1627
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_5

    .line 1630
    new-instance v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 1631
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v11

    .line 1632
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v12

    .line 1633
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v13

    .line 1634
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v14

    .line 1635
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v15

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lorg/telegram/messenger/SharedConfig$ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt64(Z)J

    move-result-wide v10

    iput-wide v10, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    .line 1638
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt64(Z)J

    move-result-wide v10

    iput-wide v10, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->availableCheckTime:J

    .line 1640
    sget-object v10, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1641
    sget-object v10, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-nez v10, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1642
    iget-object v10, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget v10, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    if-ne v6, v10, :cond_1

    iget-object v10, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1643
    sput-object v4, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1648
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown proxy schema version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    .line 1652
    new-instance v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 1653
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v11

    .line 1654
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v12

    .line 1655
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v13

    .line 1656
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v14

    .line 1657
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v15

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lorg/telegram/messenger/SharedConfig$ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    sget-object v10, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1659
    sget-object v10, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-nez v10, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1660
    iget-object v10, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget v10, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    if-ne v6, v10, :cond_4

    iget-object v10, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1661
    sput-object v4, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1666
    :cond_5
    :goto_2
    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 1668
    :cond_6
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-nez v0, :cond_7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1669
    new-instance v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/SharedConfig$ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 1670
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public static loopStickers()Z
    .locals 1

    const/4 v0, 0x2

    .line 486
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static measureDevicePerformanceClass()I
    .locals 16

    .line 1844
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1845
    sget v1, Lorg/telegram/tgnet/ConnectionsManager;->CPU_COUNT:I

    .line 1846
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    .line 1848
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 1849
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    move v8, v7

    .line 1850
    :goto_0
    sget-object v9, Lorg/telegram/messenger/SharedConfig;->LOW_DEVICES:[I

    array-length v10, v9

    if-ge v8, v10, :cond_1

    .line 1851
    aget v9, v9, v8

    if-ne v9, v4, :cond_0

    return v7

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v8, v7

    .line 1855
    :goto_1
    sget-object v9, Lorg/telegram/messenger/SharedConfig;->AVERAGE_DEVICES:[I

    array-length v10, v9

    if-ge v8, v10, :cond_3

    .line 1856
    aget v9, v9, v8

    if-ne v9, v4, :cond_2

    return v6

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    move v8, v7

    .line 1860
    :goto_2
    sget-object v9, Lorg/telegram/messenger/SharedConfig;->HIGH_DEVICES:[I

    array-length v10, v9

    if-ge v8, v10, :cond_5

    .line 1861
    aget v9, v9, v8

    if-ne v9, v4, :cond_4

    return v5

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1867
    :cond_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1f

    if-lt v4, v8, :cond_7

    sget-object v4, Landroid/os/Build;->SOC_MODEL:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 1868
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    move v8, v7

    .line 1869
    :goto_3
    sget-object v9, Lorg/telegram/messenger/SharedConfig;->LOW_SOC:[I

    array-length v10, v9

    if-ge v8, v10, :cond_7

    .line 1870
    aget v9, v9, v8

    if-ne v9, v4, :cond_6

    return v7

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    move v4, v7

    move v8, v4

    move v9, v8

    :goto_4
    if-ge v4, v1, :cond_9

    .line 1880
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v12, "/sys/devices/system/cpu/cpu%d/cpufreq/cpuinfo_max_freq"

    new-array v13, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v7

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "r"

    invoke-direct {v10, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 1883
    invoke-static {v11}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    div-int/lit16 v11, v11, 0x3e8

    add-int/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    .line 1886
    :cond_8
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, -0x1

    if-nez v8, :cond_a

    move v8, v4

    goto :goto_5

    :cond_a
    int-to-float v9, v9

    int-to-float v8, v8

    div-float/2addr v9, v8

    float-to-double v8, v9

    .line 1889
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    :goto_5
    const-wide/16 v9, -0x1

    .line 1893
    :try_start_1
    new-instance v11, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v11}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1894
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v12, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3, v11}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1895
    iget-wide v11, v11, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-wide v11, v9

    :goto_6
    const/16 v3, 0x15

    if-lt v0, v3, :cond_11

    if-le v1, v5, :cond_11

    const/16 v13, 0x64

    if-le v2, v13, :cond_11

    const/4 v13, 0x4

    if-gt v1, v13, :cond_b

    if-eq v8, v4, :cond_b

    const/16 v14, 0x4e2

    if-le v8, v14, :cond_11

    :cond_b
    const/16 v14, 0x80

    if-gt v1, v13, :cond_c

    const/16 v15, 0x640

    if-gt v8, v15, :cond_c

    if-gt v2, v14, :cond_c

    if-le v0, v3, :cond_11

    :cond_c
    if-gt v1, v13, :cond_d

    const/16 v3, 0x514

    if-gt v8, v3, :cond_d

    if-gt v2, v14, :cond_d

    const/16 v3, 0x18

    if-le v0, v3, :cond_11

    :cond_d
    cmp-long v3, v11, v9

    if-eqz v3, :cond_e

    const-wide v9, 0x80000000L

    cmp-long v3, v11, v9

    if-gez v3, :cond_e

    goto :goto_7

    :cond_e
    const/16 v3, 0x8

    if-lt v1, v3, :cond_10

    const/16 v7, 0xa0

    if-le v2, v7, :cond_10

    if-eq v8, v4, :cond_f

    const/16 v7, 0x807

    if-le v8, v7, :cond_10

    :cond_f
    if-ne v8, v4, :cond_12

    if-ne v1, v3, :cond_12

    const/16 v3, 0x17

    if-gt v0, v3, :cond_12

    :cond_10
    move v5, v6

    goto :goto_8

    :cond_11
    :goto_7
    move v5, v7

    .line 1919
    :cond_12
    :goto_8
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_13

    .line 1920
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device performance info selected_class = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (cpu_count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", freq = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", memoryClass = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", android version "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", manufacture "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", screenRefreshRate="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_13
    return v5
.end method

.method public static overrideDevicePerformanceClass(I)V
    .locals 2

    .line 1409
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput p0, Lorg/telegram/messenger/SharedConfig;->overrideDevicePerformanceClass:I

    const-string v1, "overrideDevicePerformanceClass"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "lite_mode"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "lite_mode2"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "lite_mode_battery_level"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1410
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->loadPreference()V

    .line 1411
    sget-object p0, Lorg/telegram/messenger/SharedConfig;->liteMode:Lorg/telegram/messenger/LiteMode;

    if-eqz p0, :cond_0

    .line 1412
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->loadPreference()V

    :cond_0
    return-void
.end method

.method public static performanceClassName(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "HIGH"

    return-object p0

    :cond_1
    const-string p0, "AVERAGE"

    return-object p0

    :cond_2
    const-string p0, "LOW"

    return-object p0
.end method

.method public static removeLockRecordAudioVideoHint()V
    .locals 3

    .line 1276
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1277
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lockRecordAudioVideoHint"

    const/4 v2, 0x3

    .line 1278
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1279
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static removeScheduledOrNoSoundHint()V
    .locals 3

    .line 1262
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1263
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "scheduledOrNoSoundHintShows"

    const/4 v2, 0x3

    .line 1264
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1265
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static removeTextSelectionHint()V
    .locals 3

    .line 1240
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1241
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "textSelectionHintShows"

    const/4 v2, 0x3

    .line 1242
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1243
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveConfig()V
    .locals 6

    .line 726
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 728
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "userconfing"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 729
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "saveIncomingPhotos"

    .line 730
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->saveIncomingPhotos:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "passcodeHash1"

    .line 731
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "passcodeSalt"

    .line 732
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    array-length v5, v4

    if-lez v5, :cond_0

    invoke-static {v4, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "appLocked"

    .line 733
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "passcodeType"

    .line 734
    sget v4, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "passcodeRetryInMs"

    .line 735
    sget-wide v4, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "lastUptimeMillis"

    .line 736
    sget-wide v4, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "badPasscodeTries"

    .line 737
    sget v4, Lorg/telegram/messenger/SharedConfig;->badPasscodeTries:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "autoLockIn"

    .line 738
    sget v4, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "lastPauseTime"

    .line 739
    sget v4, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "lastUpdateVersion2"

    .line 740
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->lastUpdateVersion:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "useFingerprint"

    .line 741
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->useFingerprint:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "allowScreenCapture"

    .line 742
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pushString2"

    .line 743
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pushType"

    .line 744
    sget v4, Lorg/telegram/messenger/SharedConfig;->pushType:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pushStatSent"

    .line 745
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->pushStatSent:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pushAuthKey"

    .line 746
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    if-eqz v4, :cond_1

    invoke-static {v4, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "lastLocalId"

    .line 747
    sget v4, Lorg/telegram/messenger/SharedConfig;->lastLocalId:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "passportConfigJson"

    .line 748
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->passportConfigJson:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "passportConfigHash"

    .line 749
    sget v4, Lorg/telegram/messenger/SharedConfig;->passportConfigHash:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "sortContactsByName"

    .line 750
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->sortContactsByName:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "sortFilesByName"

    .line 751
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->sortFilesByName:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "textSelectionHintShows"

    .line 752
    sget v4, Lorg/telegram/messenger/SharedConfig;->textSelectionHintShows:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "scheduledOrNoSoundHintShows"

    .line 753
    sget v4, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintShows:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "forwardingOptionsHintShown"

    .line 754
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->forwardingOptionsHintShown:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "lockRecordAudioVideoHint"

    .line 755
    sget v4, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "storageCacheDir"

    .line 756
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v4, ""

    :goto_2
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "proxyRotationEnabled"

    .line 757
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->proxyRotationEnabled:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "proxyRotationTimeout"

    .line 758
    sget v4, Lorg/telegram/messenger/SharedConfig;->proxyRotationTimeout:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 760
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 762
    :try_start_1
    new-instance v4, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v2

    invoke-direct {v4, v2}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 763
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    invoke-virtual {v2, v4}, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 764
    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v5, "appUpdate"

    .line 765
    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "appUpdateBuild"

    .line 766
    sget v5, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdateBuildVersion:I

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 767
    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_3
    :try_start_2
    const-string v2, "appUpdate"

    .line 772
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :catch_0
    :goto_3
    const-string v2, "appUpdateCheckTime"

    .line 774
    sget-wide v4, Lorg/telegram/messenger/SharedConfig;->lastUpdateCheckTime:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 776
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 778
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "hasEmailLogin"

    .line 779
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->hasEmailLogin:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "floatingDebugActive"

    .line 780
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->isFloatingDebugActive:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "record_via_sco"

    .line 781
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 782
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    .line 784
    :try_start_3
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 786
    :goto_4
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static saveProxyList()V
    .locals 9

    .line 1675
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1676
    sget-object v1, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda3;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1687
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v1}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    const/4 v2, -0x1

    .line 1688
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    const/4 v2, 0x2

    .line 1689
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    .line 1690
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1691
    invoke-virtual {v1, v3}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    .line 1693
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 1694
    iget-object v7, v6, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    const-string v8, ""

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    move-object v7, v8

    :goto_1
    invoke-virtual {v1, v7}, Lorg/telegram/tgnet/SerializedData;->writeString(Ljava/lang/String;)V

    .line 1695
    iget v7, v6, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    invoke-virtual {v1, v7}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 1696
    iget-object v7, v6, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    move-object v7, v8

    :goto_2
    invoke-virtual {v1, v7}, Lorg/telegram/tgnet/SerializedData;->writeString(Ljava/lang/String;)V

    .line 1697
    iget-object v7, v6, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    move-object v7, v8

    :goto_3
    invoke-virtual {v1, v7}, Lorg/telegram/tgnet/SerializedData;->writeString(Ljava/lang/String;)V

    .line 1698
    iget-object v7, v6, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    if-eqz v7, :cond_3

    move-object v8, v7

    :cond_3
    invoke-virtual {v1, v8}, Lorg/telegram/tgnet/SerializedData;->writeString(Ljava/lang/String;)V

    .line 1700
    iget-wide v7, v6, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    invoke-virtual {v1, v7, v8}, Lorg/telegram/tgnet/SerializedData;->writeInt64(J)V

    .line 1701
    iget-wide v6, v6, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->availableCheckTime:J

    invoke-virtual {v1, v6, v7}, Lorg/telegram/tgnet/SerializedData;->writeInt64(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1703
    :cond_4
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1704
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v3, "proxy_list"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1705
    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    return-void
.end method

.method public static setActionBarAccountSwitchEnabled(Z)V
    .locals 2

    .line 236
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isActionBarAccountSwitchEnabled:Z

    .line 237
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isActionBarAccountSwitchEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isActionBarAccountSwitchEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAlbumsIntroShown(Z)V
    .locals 2

    .line 398
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isAlbumsIntroShown:Z

    .line 399
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isAlbumsIntroShown()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isAlbumsIntroShown:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAnimationsEnabled(Z)V
    .locals 0

    .line 1985
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lorg/telegram/messenger/SharedConfig;->animationsEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public static setBotHelpTranslateEnabled(Z)V
    .locals 2

    .line 337
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isBotHelpTranslateEnabled:Z

    .line 338
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isBotHelpTranslateEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isBotHelpTranslateEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setCallsConfirmationEnabled(Z)V
    .locals 2

    .line 277
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isCallsConfirmationEnabled:Z

    .line 278
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isCallsConfirmationEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isCallsConfirmationEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setChatSortingEnabledByDefault(Z)V
    .locals 2

    .line 388
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isChatSortingEnabledByDefault:Z

    .line 389
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isChatSortingEnabledByDefault()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isChatSortingEnabledByDefault:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setChatThemesEnabled(Z)V
    .locals 2

    .line 257
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isChatThemesEnabled:Z

    .line 258
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isChatThemesEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isChatThemesEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setCloudAlbumsEnabled(Z)V
    .locals 2

    .line 393
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    .line 394
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isCloudAlbumsEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setCombineMessagesEnabled(Z)V
    .locals 2

    .line 347
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isCombineMessagesEnabled:Z

    .line 348
    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->combineMessagesSettingsDidChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 349
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isCombineMessagesEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isCombineMessagesEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setCustomSharingModeEnabled(Z)V
    .locals 2

    .line 317
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isCustomSharingModeEnabled:Z

    .line 318
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isCustomSharingModeEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isCustomSharingModeEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDebugThemeSwitchEnabled(Z)V
    .locals 2

    .line 164
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isDebugThemeSwitchEnabled:Z

    .line 165
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isDebugThemeSwitchEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isDebugThemeSwitchEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDeleteCloudConfirmationEnabled(Z)V
    .locals 2

    .line 282
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isDeleteCloudConfirmationEnabled:Z

    .line 283
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isDeleteCloudConfirmationEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isDeleteCloudConfirmationEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDialogsCompactModeEnabled(Z)V
    .locals 4

    .line 246
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    .line 247
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isDialogsCompactModeEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 248
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static setDistanceSystemType(I)V
    .locals 2

    .line 1596
    sput p0, Lorg/telegram/messenger/SharedConfig;->distanceSystemType:I

    .line 1597
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1598
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1599
    sget v0, Lorg/telegram/messenger/SharedConfig;->distanceSystemType:I

    const-string v1, "distanceSystemType"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1600
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1601
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->resetImperialSystemType()V

    return-void
.end method

.method public static setDontAskManageStorage(Z)V
    .locals 2

    .line 1950
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->dontAskManageStorage:Z

    .line 1951
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->dontAskManageStorage:Z

    const-string v1, "dontAskManageStorage"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDrawerHeaderSettings(Lorg/fork/models/DrawerHeaderSettings;)V
    .locals 2

    .line 209
    invoke-virtual {p0}, Lorg/fork/models/DrawerHeaderSettings;->getTitle()Lcom/smedialink/ui/drawer/DrawerAccountData;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderTitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

    .line 210
    invoke-virtual {p0}, Lorg/fork/models/DrawerHeaderSettings;->getSubtitle()Lcom/smedialink/ui/drawer/DrawerAccountData;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderSubtitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

    .line 211
    invoke-virtual {p0}, Lorg/fork/models/DrawerHeaderSettings;->isShowTitle()Z

    move-result v0

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderTitleEnabled:Z

    .line 212
    invoke-virtual {p0}, Lorg/fork/models/DrawerHeaderSettings;->isShowSubtitle()Z

    move-result v0

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderSubtitleEnabled:Z

    .line 213
    invoke-virtual {p0}, Lorg/fork/models/DrawerHeaderSettings;->isShowAvatar()Z

    move-result v0

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderAvatarEnabled:Z

    .line 214
    invoke-virtual {p0}, Lorg/fork/models/DrawerHeaderSettings;->isShowArchive()Z

    move-result p0

    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderArchiveEnabled:Z

    .line 215
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 216
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedDrawerHeaderTitle()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderTitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 217
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedDrawerHeaderSubtitle()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderSubtitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 218
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderTitleEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderTitleEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 219
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderSubtitleEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderSubtitleEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 220
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderAvatarEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderAvatarEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 221
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderArchiveEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderArchiveEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 222
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDrawerHolidayIconType(Lorg/fork/enums/DrawerHolidayIconType;)V
    .locals 2

    .line 462
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->drawerHolidayIconType:Lorg/fork/enums/DrawerHolidayIconType;

    .line 463
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedDrawerHolidayIconType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setExtendedAvatarPreviewerByTapEnabled(Z)V
    .locals 2

    .line 267
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerByTapEnabled:Z

    .line 268
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isExtendedAvatarPreviewerByTapEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerByTapEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setExtendedAvatarPreviewerEnabled(Z)V
    .locals 2

    .line 262
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerEnabled:Z

    .line 263
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isExtendedAvatarPreviewerEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFastScrollHintCount(I)V
    .locals 2

    .line 1943
    sget v0, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    if-eq v0, p0, :cond_0

    .line 1944
    sput p0, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    .line 1945
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "mainconfig"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    const-string v1, "fastScrollHintCount"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setFilesOriginalNameSavingEnabled(Z)V
    .locals 2

    .line 169
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isFilesOriginalNameSavingEnabled:Z

    .line 170
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isFilesOriginalNameSavingEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isFilesOriginalNameSavingEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFilesSendingPreviewAndCaptionEnabled(Z)V
    .locals 2

    .line 174
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isFilesSendingPreviewAndCaptionEnabled:Z

    .line 175
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isFilesSendingPreviewAndCaptionEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isFilesSendingPreviewAndCaptionEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFilterTabsAtBottomEnabled(Z)V
    .locals 2

    .line 373
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    .line 374
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isFilterTabsAtBottomEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setHideChatKeyboardOnScrollEnabled(Z)V
    .locals 2

    .line 252
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isHideChatKeyboardOnScrollEnabled:Z

    .line 253
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isHideChatKeyboardOnScrollEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isHideChatKeyboardOnScrollEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setKeepMedia(I)V
    .locals 2

    .line 1290
    sput p0, Lorg/telegram/messenger/SharedConfig;->keepMedia:I

    .line 1291
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1292
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1293
    sget v0, Lorg/telegram/messenger/SharedConfig;->keepMedia:I

    const-string v1, "keep_media"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1294
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setLastLockedSectionsPauseTime(I)V
    .locals 2

    .line 154
    sput p0, Lorg/telegram/messenger/SharedConfig;->lastLockedSectionsPauseTime:I

    .line 155
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->lastLockedSectionsPauseTime()Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/SharedConfig;->lastLockedSectionsPauseTime:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLastSelectedLanguage(Ljava/lang/String;)V
    .locals 2

    .line 447
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->lastSelectedLanguage:Ljava/lang/String;

    .line 448
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->lastSelectedLanguages()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->lastSelectedLanguage:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMainActionBarMenuEnabled(Z)V
    .locals 2

    .line 241
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isMainActionBarMenuEnabled:Z

    .line 242
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isMainActionBarMenuEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isMainActionBarMenuEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMediaColumnsCount(I)V
    .locals 2

    .line 1936
    sget v0, Lorg/telegram/messenger/SharedConfig;->mediaColumnsCount:I

    if-eq v0, p0, :cond_0

    .line 1937
    sput p0, Lorg/telegram/messenger/SharedConfig;->mediaColumnsCount:I

    .line 1938
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "mainconfig"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/SharedConfig;->mediaColumnsCount:I

    const-string v1, "mediaColumnsCount"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setMessageQuickTranslateEnabled(Z)V
    .locals 2

    .line 332
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isMessageQuickTranslateEnabled:Z

    .line 333
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isMessageQuickTranslateEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isMessageQuickTranslateEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMultiForwardingOptionsHintShown(Z)V
    .locals 2

    .line 204
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isMultiForwardingOptionsHintShown:Z

    .line 205
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isMultiForwardingOptionsHintShown()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isMultiForwardingOptionsHintShown:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMultiReplyEnabled(Z)V
    .locals 2

    .line 322
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isMultiReplyEnabled:Z

    .line 323
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isMultiReplyEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isMultiReplyEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMusicIntroShown(Z)V
    .locals 2

    .line 428
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isMusicIntroShown:Z

    .line 429
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isMusicIntroShown()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isMusicIntroShown:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setNewAppVersionAvailable(Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1117
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1118
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1119
    :try_start_1
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move v2, v0

    .line 1121
    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_1
    if-nez v2, :cond_0

    .line 1124
    sget v2, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION:I

    :cond_0
    if-nez v1, :cond_1

    .line 1127
    sget-object v1, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    .line 1129
    :cond_1
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    goto :goto_2

    .line 1132
    :cond_2
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 1133
    sput v2, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdateBuildVersion:I

    .line 1134
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_2
    return v0
.end method

.method public static setNewTelegramAuthorizationRulesRead(Z)V
    .locals 2

    .line 467
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isNewTelegramAuthorizationRulesRead:Z

    .line 468
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isNewTelegramAuthorizationRulesRead()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isNewTelegramAuthorizationRulesRead:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setNoSoundHintShowed(Z)V
    .locals 2

    .line 1455
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->noSoundHintShowed:Z

    if-ne v0, p0, :cond_0

    return-void

    .line 1458
    :cond_0
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->noSoundHintShowed:Z

    .line 1459
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1460
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1461
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->noSoundHintShowed:Z

    const-string v1, "noSoundHintShowed"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1462
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setOpenForwardingOptionsAutomaticallyEnabled(Z)V
    .locals 2

    .line 312
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isOpenForwardingOptionsAutomaticallyEnabled:Z

    .line 313
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isOpenForwardingOptionsAutomaticallyEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isOpenForwardingOptionsAutomaticallyEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setPassportConfig(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1074
    sput-object v0, Lorg/telegram/messenger/SharedConfig;->passportConfigMap:Ljava/util/HashMap;

    .line 1075
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->passportConfigJson:Ljava/lang/String;

    .line 1076
    sput p1, Lorg/telegram/messenger/SharedConfig;->passportConfigHash:I

    .line 1077
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 1078
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getCountryLangs()Ljava/util/HashMap;

    return-void
.end method

.method public static setPinnedPlayerMinimized(Z)V
    .locals 2

    .line 413
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerMinimized:Z

    .line 414
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isPinnedPlayerMinimized()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerMinimized:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setPinnedPlayerNightThemeEnabled(Z)V
    .locals 2

    .line 423
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerNightThemeEnabled:Z

    .line 424
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isPinnedPlayerNightThemeEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerNightThemeEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setPinnedPlayerThemeOverridden(Z)V
    .locals 2

    .line 418
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerThemeOverridden:Z

    .line 419
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isPinnedPlayerThemeOverridden()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerThemeOverridden:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setPlaybackOrderType(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    .line 1380
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    .line 1381
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    goto :goto_0

    :cond_0
    if-ne p0, v0, :cond_1

    .line 1383
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    .line 1384
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    goto :goto_0

    .line 1386
    :cond_1
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    .line 1387
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    .line 1389
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->checkIsNextMediaFileDownloaded()V

    .line 1390
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1391
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1392
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    const-string v1, "shuffleMusic"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1393
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    const-string v1, "playOrderReversed"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1394
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setPlayerPinned(Z)V
    .locals 2

    .line 408
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isPlayerPinned:Z

    .line 409
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isPlayerPinned()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isPlayerPinned:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setProfileInfoHidden(Z)V
    .locals 2

    .line 199
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isProfileInfoHidden:Z

    .line 200
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isProfileInfoHidden()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isProfileInfoHidden:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setProxyButtonForceVisible(Z)V
    .locals 2

    .line 189
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isProxyButtonForceVisible:Z

    .line 190
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isProxyButtonForceVisible()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isProxyButtonForceVisible:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setReactionsEnabled(Z)V
    .locals 2

    .line 358
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isReactionsEnabled:Z

    .line 359
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isReactionsEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isReactionsEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setReactionsInSendPopupEnabled(Z)V
    .locals 2

    .line 368
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isReactionsInSendPopupEnabled:Z

    .line 369
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isReactionsInSendPopupEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isReactionsInSendPopupEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setReadAllChatsConfirmationShown(Z)V
    .locals 2

    .line 194
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isReadAllChatsConfirmationShown:Z

    .line 195
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isReadAllChatsConfirmationShown()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isReadAllChatsConfirmationShown:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setRememberLastFilterTabEnabled(Z)V
    .locals 2

    .line 383
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isRememberLastFilterTabEnabled:Z

    .line 384
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isRememberLastFilterTabEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isRememberLastFilterTabEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setRepeatMode(I)V
    .locals 2

    .line 1398
    sput p0, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 1400
    sput p0, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    .line 1402
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1403
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1404
    sget v0, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    const-string v1, "repeatMode"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1405
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setSearchMessagesAsListUsed(Z)V
    .locals 2

    .line 1217
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->searchMessagesAsListUsed:Z

    .line 1218
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1219
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1220
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->searchMessagesAsListUsed:Z

    const-string v1, "searchMessagesAsListUsed"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1221
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setSecretMapPreviewType(I)V
    .locals 2

    .line 1447
    sput p0, Lorg/telegram/messenger/SharedConfig;->mapPreviewType:I

    .line 1448
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1449
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1450
    sget v0, Lorg/telegram/messenger/SharedConfig;->mapPreviewType:I

    const-string v1, "mapPreviewType"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1451
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setSelectedChatProfileTelegramIdMode(Lorg/fork/enums/ChatProfileTelegramIdMode;)V
    .locals 2

    .line 327
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->selectedChatProfileTelegramIdMode:Lorg/fork/enums/ChatProfileTelegramIdMode;

    .line 328
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedChatProfileTelegramIdMode()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedChatProfileTelegramIdMode:Lorg/fork/enums/ChatProfileTelegramIdMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSelectedDialogTypesForMessagePopupReactions(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/fork/enums/DialogType;",
            ">;)V"
        }
    .end annotation

    .line 363
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->selectedDialogTypesForMessagePopupReactions:Ljava/util/Set;

    .line 364
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedDialogTypesForMessagePopupReactions()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDialogTypesForMessagePopupReactions:Ljava/util/Set;

    invoke-static {v1}, Lorg/fork/enums/DialogType;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSelectedDrawerItems(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/smedialink/ui/drawer/DrawerSwitchableItem;",
            ">;)V"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    .line 232
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedDrawerItems()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    invoke-static {v1}, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSelectedExtendedAvatarPreviewerItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fork/enums/ExtendedAvatarPreviewerItem;",
            ">;)V"
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->selectedExtendedAvatarPreviewerItems:Ljava/util/List;

    .line 273
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedExtendedAvatarPreviewerItems()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedExtendedAvatarPreviewerItems:Ljava/util/List;

    invoke-static {v1}, Lorg/fork/enums/ExtendedAvatarPreviewerItem;->mapEnumsToNames(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSelectedFilterTabsNotificationMode(Lorg/fork/enums/FilterTabNotificationMode;)V
    .locals 2

    .line 378
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabsNotificationMode:Lorg/fork/enums/FilterTabNotificationMode;

    .line 379
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedFilterTabsNotificationMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSelectedFilterTabsWidthMode(Lorg/fork/enums/FilterTabWidthMode;)V
    .locals 2

    .line 457
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lorg/fork/enums/FilterTabWidthMode;

    .line 458
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedFilterTabsWidthMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSelectedPhotoViewerMenuItems(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/fork/enums/PhotoViewerMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 353
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    .line 354
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedPhotoViewerMenuItems()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    invoke-static {v1}, Lorg/fork/enums/PhotoViewerMenuItem;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSelectedStickersSize(Lorg/fork/enums/StickersSize;)V
    .locals 2

    .line 184
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->selectedStickersSize:Lorg/fork/enums/StickersSize;

    .line 185
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedStickersSize()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedStickersSize:Lorg/fork/enums/StickersSize;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSelectedTemplatesMode(Lorg/fork/enums/TemplatesMode;)V
    .locals 2

    .line 433
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesMode:Lorg/fork/enums/TemplatesMode;

    .line 434
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedTemplatesMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSelectedTemplatesSortingType(Lorg/fork/enums/TemplatesSortingType;)V
    .locals 2

    .line 438
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesSortingType:Lorg/fork/enums/TemplatesSortingType;

    if-ne v0, p0, :cond_0

    return-void

    .line 441
    :cond_0
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesSortingType:Lorg/fork/enums/TemplatesSortingType;

    .line 442
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedTemplatesSortingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 443
    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->templatesDidChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static setSelectedVideoVoiceCamera(Lorg/fork/enums/VideoVoiceCamera;)V
    .locals 2

    .line 307
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->selectedVideoVoiceCamera:Lorg/fork/enums/VideoVoiceCamera;

    .line 308
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedVideoVoiceCamera()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSendingGifConfirmationEnabled(Z)V
    .locals 2

    .line 287
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    .line 288
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isSendingGifConfirmationEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSendingStickerConfirmationEnabled(Z)V
    .locals 2

    .line 292
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isSendingStickerConfirmationEnabled:Z

    .line 293
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isSendingStickerConfirmationEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isSendingStickerConfirmationEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setShowDrawerHeaderArchiveEnabled(Z)V
    .locals 2

    .line 226
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderArchiveEnabled:Z

    .line 227
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderArchiveEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderArchiveEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSortCloudAlbumsByNameEnabled(Z)V
    .locals 2

    .line 403
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isSortCloudAlbumsByNameEnabled:Z

    .line 404
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isSortCloudAlbumsByNameEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isSortCloudAlbumsByNameEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSpeakWithoutHoldEnabled(Z)V
    .locals 2

    .line 297
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isSpeakWithoutHoldEnabled:Z

    .line 298
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isSpeakWithoutHoldEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isSpeakWithoutHoldEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setStickersReorderingHintUsed(Z)V
    .locals 2

    .line 1225
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->stickersReorderingHintUsed:Z

    .line 1226
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1227
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1228
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->stickersReorderingHintUsed:Z

    const-string v1, "stickersReorderingHintUsed"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1229
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setSuggestPremiumReactionsEmoji(Z)V
    .locals 2

    .line 452
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isSuggestPremiumReactionsEmoji:Z

    .line 453
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isSuggestPremiumReactionsEmoji()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isSuggestPremiumReactionsEmoji:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSuggestStickers(I)V
    .locals 2

    .line 1209
    sput p0, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    .line 1210
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1211
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1212
    sget v0, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    const-string v1, "suggestStickers"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1213
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setTranslateInSendPopupEnabled(Z)V
    .locals 2

    .line 342
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isTranslateInSendPopupEnabled:Z

    .line 343
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isTranslateInSendPopupEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isTranslateInSendPopupEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setUseThreeLinesLayout(Z)V
    .locals 4

    .line 1421
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    .line 1422
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1423
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1424
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    const-string v1, "useThreeLinesLayout"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1425
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1426
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static setVibrationEnabled(Z)V
    .locals 2

    .line 179
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isVibrationEnabled:Z

    .line 180
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isVibrationEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isVibrationEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setVideoSpeakWithoutHoldEnabled(Z)V
    .locals 2

    .line 302
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isVideoSpeakWithoutHoldEnabled:Z

    .line 303
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isVideoSpeakWithoutHoldEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isVideoSpeakWithoutHoldEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setWaitingForSectionPasscodeEnter(Z)V
    .locals 2

    .line 159
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isWaitingForSectionPasscodeEnter:Z

    .line 160
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isWaitingForSectionPasscodeEnter()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isWaitingForSectionPasscodeEnter:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleArchiveHidden()V
    .locals 3

    .line 1430
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    .line 1431
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1432
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1433
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    const-string v2, "archiveHidden"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1434
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static toggleAutoplayGifs()V
    .locals 1

    const/16 v0, 0x800

    .line 1417
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->toggleFlag(I)V

    return-void
.end method

.method public static toggleAutoplayVideo()V
    .locals 1

    const/16 v0, 0x400

    .line 1438
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->toggleFlag(I)V

    return-void
.end method

.method public static toggleBigEmoji()V
    .locals 3

    .line 1363
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowBigEmoji:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowBigEmoji:Z

    .line 1364
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1365
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1366
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->allowBigEmoji:Z

    const-string v2, "allowBigEmoji"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1367
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static toggleChatBlur()V
    .locals 1

    const/16 v0, 0x100

    .line 1568
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->toggleFlag(I)V

    return-void
.end method

.method public static toggleCustomTabs()V
    .locals 3

    .line 1486
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    .line 1487
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1488
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1489
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    const-string v2, "custom_tabs"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1490
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static toggleDebugWebView()V
    .locals 3

    .line 1348
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    .line 1349
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 1350
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 1352
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1353
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1354
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    const-string v2, "debugWebView"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1355
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleDirectShare()V
    .locals 3

    .line 1494
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->directShare:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->directShare:Z

    .line 1495
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1496
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1497
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->directShare:Z

    const-string v2, "direct_share"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1498
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1499
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeAllDynamicShortcuts(Landroid/content/Context;)V

    .line 1500
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->buildShortcuts()V

    return-void
.end method

.method public static toggleDisableVoiceAudioEffects()V
    .locals 3

    .line 1332
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->disableVoiceAudioEffects:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->disableVoiceAudioEffects:Z

    .line 1333
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1334
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1335
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->disableVoiceAudioEffects:Z

    const-string v2, "disableVoiceAudioEffects"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1336
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static toggleForceDisableTabletMode()V
    .locals 3

    .line 1572
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->forceDisableTabletMode:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->forceDisableTabletMode:Z

    .line 1573
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1574
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1575
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->forceDisableTabletMode:Z

    const-string v2, "forceDisableTabletMode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1576
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static toggleInappCamera()V
    .locals 3

    .line 1580
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->inappCamera:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->inappCamera:Z

    .line 1581
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1582
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1583
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->inappCamera:Z

    const-string v2, "inappCamera"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1584
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static toggleLoopStickers()V
    .locals 1

    const/4 v0, 0x2

    .line 1359
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->toggleFlag(I)V

    return-void
.end method

.method public static toggleNoiseSupression()V
    .locals 3

    .line 1340
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->noiseSupression:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->noiseSupression:Z

    .line 1341
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1342
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1343
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->noiseSupression:Z

    const-string v2, "noiseSupression"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1344
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static togglePauseMusicOnMedia()V
    .locals 3

    .line 1560
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnMedia:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnMedia:Z

    .line 1561
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1562
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1563
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnMedia:Z

    const-string v2, "pauseMusicOnMedia"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1564
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static togglePauseMusicOnRecord()V
    .locals 3

    .line 1552
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    .line 1553
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1554
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1555
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    const-string v2, "pauseMusicOnRecord"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1556
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static toggleRaiseToListen()V
    .locals 3

    .line 1474
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    .line 1475
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1476
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1477
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    const-string v2, "raise_to_listen"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1478
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static toggleRaiseToSpeak()V
    .locals 3

    .line 1466
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    .line 1467
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1468
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1469
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    const-string v2, "raise_to_speak"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1470
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static toggleRoundCamera()V
    .locals 3

    .line 2016
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->bigCameraForRound:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->bigCameraForRound:Z

    .line 2017
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "mainconfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2018
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->bigCameraForRound:Z

    const-string v2, "bigCameraForRound"

    .line 2019
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2020
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleRoundCamera16to9()V
    .locals 3

    .line 1588
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->roundCamera16to9:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->roundCamera16to9:Z

    .line 1589
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1590
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1591
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->roundCamera16to9:Z

    const-string v2, "roundCamera16to9"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1592
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static toggleSaveStreamMedia()V
    .locals 3

    .line 1544
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    .line 1545
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1546
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1547
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    const-string v2, "saveStreamMedia"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1548
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static toggleSortContactsByName()V
    .locals 3

    .line 1512
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->sortContactsByName:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->sortContactsByName:Z

    .line 1513
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1514
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1515
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->sortContactsByName:Z

    const-string v2, "sortContactsByName"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1516
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static toggleSortFilesByName()V
    .locals 3

    .line 1520
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->sortFilesByName:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->sortFilesByName:Z

    .line 1521
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1522
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1523
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->sortFilesByName:Z

    const-string v2, "sortFilesByName"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1524
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static toggleStreamAllVideo()V
    .locals 3

    .line 1528
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    .line 1529
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1530
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1531
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    const-string v2, "streamAllVideo"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1532
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static toggleStreamMedia()V
    .locals 3

    .line 1504
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    .line 1505
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1506
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1507
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    const-string v2, "streamMedia"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1508
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static toggleStreamMkv()V
    .locals 3

    .line 1536
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    .line 1537
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1538
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1539
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    const-string v2, "streamMkv"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1540
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static toggleSuggestAnimatedEmoji()V
    .locals 3

    .line 1371
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    .line 1372
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1373
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1374
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    const-string v2, "suggestAnimatedEmoji"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1375
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static toggleUpdateStickersOrderOnSend()V
    .locals 3

    .line 1298
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1299
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1300
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    const-string v2, "updateStickersOrderOnSend"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1301
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static updateChatListSwipeSetting(I)V
    .locals 2

    .line 1796
    sput p0, Lorg/telegram/messenger/SharedConfig;->chatSwipeAction:I

    .line 1797
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1798
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/SharedConfig;->chatSwipeAction:I

    const-string v1, "ChatSwipeAction"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateDayNightThemeSwitchHintCount(I)V
    .locals 2

    .line 1815
    sput p0, Lorg/telegram/messenger/SharedConfig;->dayNightThemeSwitchHintCount:I

    .line 1816
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1817
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/SharedConfig;->dayNightThemeSwitchHintCount:I

    const-string v1, "dayNightThemeSwitchHintCount"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateEmojiInteractionsHintCount(I)V
    .locals 2

    .line 1808
    sput p0, Lorg/telegram/messenger/SharedConfig;->emojiInteractionsHintCount:I

    .line 1809
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1810
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/SharedConfig;->emojiInteractionsHintCount:I

    const-string v1, "emojiInteractionsHintCount"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateMessageSeenHintCount(I)V
    .locals 2

    .line 1802
    sput p0, Lorg/telegram/messenger/SharedConfig;->messageSeenHintCount:I

    .line 1803
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1804
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/SharedConfig;->messageSeenHintCount:I

    const-string v1, "messageSeenCount"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateTabletConfig()V
    .locals 3

    .line 1026
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->fontSizeIsDefault:Z

    if-eqz v0, :cond_1

    .line 1027
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "mainconfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1028
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    const-string v2, "fons_size"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    const-string v2, "iv_font_size"

    .line 1029
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    :cond_1
    return-void
.end method
