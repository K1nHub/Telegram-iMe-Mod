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

.field static allowPreparingHevcPlayers:Ljava/lang/Boolean; = null

.field public static allowScreenCapture:Z = false

.field private static animationsEnabled:Ljava/lang/Boolean; = null

.field public static appLocked:Z = false

.field public static archiveHidden:Z = false

.field public static autoLockIn:I = 0x0

.field public static badPasscodeTries:I = 0x0

.field public static bigCameraForRound:Z = false

.field public static bubbleRadius:I = 0x0

.field public static chatBubbles:Z = false

.field private static chatSwipeAction:I = 0x0

.field private static configLoaded:Z = false

.field public static currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo; = null

.field public static customTabs:Z = false

.field public static dayNightThemeSwitchHintCount:I = 0x0

.field public static dayNightWallpaperSwitchHint:I = 0x0

.field public static debugWebView:Z = false

.field private static devicePerformanceClass:I = 0x0

.field public static directShare:Z = false

.field public static directShareHash:Ljava/lang/String; = null

.field public static disableVoiceAudioEffects:Z = false

.field public static distanceSystemType:I = 0x0

.field public static dontAskManageStorage:Z = false

.field public static drawActionBarShadow:Z = false

.field public static drawDialogIcons:Z = false

.field public static drawerHolidayIconType:Lcom/iMe/fork/enums/DrawerHolidayIconType; = null

.field public static emojiInteractionsHintCount:I = 0x0

.field public static fastScrollHintCount:I = 0x0

.field public static fontSize:I = 0x0

.field public static fontSizeIsDefault:Z = false

.field public static forceDisableTabletMode:Z = false

.field public static forwardingOptionsHintShown:Z = false

.field private static goodHevcEncoder:Ljava/lang/String; = null

.field public static hasCameraCache:Z = false

.field public static hasEmailLogin:Z = false

.field private static hevcEncoderWhitelist:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static inappCamera:Z = false

.field public static isActionBarAccountSwitchEnabled:Z = false

.field public static isAlbumsIntroShown:Z = false

.field public static isBotHelpTranslateEnabled:Z = false

.field public static isCallsConfirmationEnabled:Z = false

.field public static isChatAttachAlertWalletBotEnabled:Z = false

.field public static isChatSortingEnabledByDefault:Z = false

.field public static isChatThemesEnabled:Z = false

.field public static isCloudAlbumsEnabled:Z = false

.field public static isCombineMessagesEnabled:Z = false

.field public static isDebugThemeSwitchEnabled:Z = false

.field public static isDeleteCloudConfirmationEnabled:Z = false

.field public static isDialogsCompactModeEnabled:Z = false

.field public static isDialogsPremiumHintEnabled:Z = false

.field public static isExtendedAvatarPreviewerByTapEnabled:Z = false

.field public static isExtendedAvatarPreviewerEnabled:Z = false

.field public static isFilesOriginalNameSavingEnabled:Z = false

.field public static isFilesSendingPreviewAndCaptionEnabled:Z = false

.field public static isFilterTabsAtBottomEnabled:Z = false

.field public static isFloatingDebugActive:Z = false

.field public static isForwardingPreviewEditorHintShown:Z = false

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

.field public static isPlayerPinned:Z = false

.field public static isProfileInfoHidden:Z = false

.field public static isProxyButtonEnabled:Z = false

.field public static isReactionsEnabled:Z = false

.field public static isReactionsInSendPopupEnabled:Z = false

.field public static isReadAllChatsConfirmationShown:Z = false

.field public static isRememberLastFilterTabEnabled:Z = false

.field public static isReplyColorsEnabled:Z = false

.field public static isSendingGifConfirmationEnabled:Z = false

.field public static isSendingStickerConfirmationEnabled:Z = false

.field public static isShowDrawerHeaderArchiveEnabled:Z = false

.field public static isShowDrawerHeaderAvatarEnabled:Z = false

.field public static isShowDrawerHeaderSubtitleEnabled:Z = false

.field public static isShowDrawerHeaderTitleEnabled:Z = false

.field public static isSortCloudAlbumsByNameEnabled:Z = false

.field public static isSpeakWithoutHoldEnabled:Z = false

.field public static isTranslateInSendPopupEnabled:Z = false

.field public static isVibrationEnabled:Z = false

.field public static isVideoSpeakWithoutHoldEnabled:Z = false

.field public static isWaitingForPasscodeEnter:Z = false

.field public static ivFontSize:I = 0x0

.field public static keepMedia:I = 0x0

.field public static lastKeepMediaCheckTime:I = 0x0

.field private static lastLocalId:I = 0x0

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

.field public static nextMediaTap:Z = false

.field public static noSoundHintShowed:Z = false

.field public static final noStatusBar:Z = true

.field public static noiseSupression:Z

.field private static overrideDevicePerformanceClass:I

.field public static passcodeHash:Ljava/lang/String;

.field public static passcodeRetryInMs:J

.field public static passcodeSalt:[B

.field public static passcodeType:I

.field public static passportConfigHash:I

.field private static passportConfigJson:Ljava/lang/String;

.field private static passportConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static pauseMusicOnMedia:Z

.field public static pauseMusicOnRecord:Z

.field public static payByInvoice:Z

.field public static pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

.field public static pendingAppUpdateBuildVersion:I

.field public static photoViewerBlur:Z

.field public static playOrderReversed:Z

.field public static proxyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SharedConfig$ProxyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static proxyListLoaded:Z

.field public static proxyRotationEnabled:Z

.field public static proxyRotationTimeout:I

.field public static pushAuthKey:[B

.field public static pushAuthKeyId:[B

.field public static pushStatSent:Z

.field public static pushString:Ljava/lang/String;

.field public static pushStringGetTimeEnd:J

.field public static pushStringGetTimeStart:J

.field public static pushStringStatus:Ljava/lang/String;

.field public static pushType:I

.field public static raiseToListen:Z

.field public static raiseToSpeak:Z

.field public static readOnlyStorageDirAlertShowed:Z

.field public static recordViaSco:Z

.field public static repeatMode:I

.field public static replyingOptionsHintShown:Z

.field public static roundCamera16to9:Z

.field public static saveIncomingPhotos:Z

.field public static saveStreamMedia:Z

.field public static scheduledHintSeenAt:J

.field public static scheduledHintShows:I

.field public static scheduledOrNoSoundHintSeenAt:J

.field public static scheduledOrNoSoundHintShows:I

.field public static searchMessagesAsListHintShows:I

.field public static searchMessagesAsListUsed:Z

.field public static selectedDialogTypesForMessagePopupReactions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/DialogType;",
            ">;"
        }
    .end annotation
.end field

.field public static selectedDrawerHeaderSubtitle:Lcom/iMe/ui/drawer/DrawerAccountData;

.field public static selectedDrawerHeaderTitle:Lcom/iMe/ui/drawer/DrawerAccountData;

.field public static selectedDrawerItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/iMe/ui/drawer/DrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field public static selectedExtendedAvatarPreviewerItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;",
            ">;"
        }
    .end annotation
.end field

.field public static selectedFilterTabWidthMode:Lcom/iMe/fork/enums/FilterTabWidthMode;

.field public static selectedFilterTabsNotificationMode:Lcom/iMe/fork/enums/FilterTabNotificationMode;

.field public static selectedPhotoViewerMenuItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/PhotoViewerMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public static selectedStickersSize:Lcom/iMe/fork/enums/StickersSize;

.field public static selectedTemplatesMode:Lcom/iMe/fork/enums/TemplatesMode;

.field public static selectedTemplatesSortingType:Lcom/iMe/fork/enums/TemplatesSortingType;

.field public static selectedVideoVoiceCamera:Lcom/iMe/fork/enums/VideoVoiceCamera;

.field public static showNotificationsForAllAccounts:Z

.field public static shuffleMusic:Z

.field public static sortContactsByName:Z

.field public static sortFilesByName:Z

.field public static stealthModeSendMessageConfirm:I

.field public static stickersReorderingHintUsed:Z

.field public static storageCacheDir:Ljava/lang/String;

.field public static storiesColumnsCount:I

.field public static storiesIntroShown:Z

.field public static storyReactionsLongPressHint:Z

.field public static streamAllVideo:Z

.field public static streamMedia:Z

.field public static streamMkv:Z

.field public static suggestAnimatedEmoji:Z

.field public static suggestStickers:I

.field private static final sync:Ljava/lang/Object;

.field public static textSelectionHintShows:I

.field public static translateChats:Z

.field public static updateStickersOrderOnSend:Z

.field public static useFingerprint:Z

.field public static useSurfaceInStories:Z

.field public static useSystemEmoji:Z

.field public static useThreeLinesLayout:Z


# direct methods
.method public static synthetic $r8$lambda$5oW1MY_rORS8gfAUxI_pQesim5c()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->lambda$checkSdCard$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$8c4gK-AyJ4VzrkI09X_49c_bjao(Lorg/telegram/messenger/SharedConfig$ProxyInfo;Lorg/telegram/messenger/SharedConfig$ProxyInfo;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/SharedConfig;->lambda$saveProxyList$4(Lorg/telegram/messenger/SharedConfig$ProxyInfo;Lorg/telegram/messenger/SharedConfig$ProxyInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CItOIgPoVipKFaoe7LjXgeek6jY()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->lambda$checkSdCard$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$IXArlQveExb6yLY9VvC6yZa-IGA(I)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->lambda$checkLogsToDelete$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ghbRyc4ULtVMCvMxOSliLES5peI(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/SharedConfig;->lambda$checkSdCard$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$uDzD2ZQ9Nwcbe41lI-Cv0BcFQsQ()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->lambda$checkSaveToGalleryFiles$5()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 583
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->hevcEncoderWhitelist:Ljava/util/HashSet;

    const-string v1, "c2.exynos.hevc.encoder"

    .line 585
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 586
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->hevcEncoderWhitelist:Ljava/util/HashSet;

    const-string v1, "OMX.Exynos.HEVC.Encoder"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    .line 629
    sput v0, Lorg/telegram/messenger/SharedConfig;->pushType:I

    const-string v1, ""

    .line 630
    sput-object v1, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    .line 631
    sput-object v1, Lorg/telegram/messenger/SharedConfig;->pushStringStatus:Ljava/lang/String;

    .line 642
    sput-object v1, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [B

    .line 646
    sput-object v3, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    const/16 v3, 0xe10

    .line 648
    sput v3, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    const/4 v3, 0x1

    .line 654
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->useFingerprint:Z

    .line 658
    sget v4, Lorg/telegram/messenger/CacheByChatsController;->KEEP_MEDIA_ONE_MONTH:I

    sput v4, Lorg/telegram/messenger/SharedConfig;->keepMedia:I

    .line 676
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    .line 679
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->photoViewerBlur:Z

    .line 681
    sput v0, Lorg/telegram/messenger/SharedConfig;->stealthModeSendMessageConfirm:I

    const v4, -0x33450

    .line 682
    sput v4, Lorg/telegram/messenger/SharedConfig;->lastLocalId:I

    .line 686
    sput-object v1, Lorg/telegram/messenger/SharedConfig;->passportConfigJson:Ljava/lang/String;

    .line 691
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/telegram/messenger/SharedConfig;->sync:Ljava/lang/Object;

    .line 692
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/telegram/messenger/SharedConfig;->localIdSync:Ljava/lang/Object;

    .line 695
    sput v0, Lorg/telegram/messenger/SharedConfig;->mapPreviewType:I

    .line 696
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->chatBubbles:Z

    .line 697
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    .line 698
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    .line 699
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->nextMediaTap:Z

    .line 700
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    .line 701
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    .line 702
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->directShare:Z

    .line 703
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->inappCamera:Z

    .line 704
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->roundCamera16to9:Z

    .line 705
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->noSoundHintShowed:Z

    .line 706
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    .line 707
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    .line 708
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    .line 709
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    .line 710
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    .line 711
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnMedia:Z

    .line 720
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->showNotificationsForAllAccounts:Z

    const/16 v0, 0x10

    .line 724
    sput v0, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    const/16 v1, 0x11

    .line 726
    sput v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    .line 727
    sput v0, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    const/4 v0, 0x3

    .line 752
    sput v0, Lorg/telegram/messenger/SharedConfig;->mediaColumnsCount:I

    .line 753
    sput v0, Lorg/telegram/messenger/SharedConfig;->storiesColumnsCount:I

    .line 754
    sput v0, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    .line 757
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->translateChats:Z

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 762
    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->LOW_SOC:[I

    .line 777
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->loadConfig()V

    .line 832
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    .line 2309
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->drawActionBarShadow:Z

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
.end method

.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProxy(Lorg/telegram/messenger/SharedConfig$ProxyInfo;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;
    .locals 6

    .line 1966
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->loadProxyList()V

    .line 1967
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1969
    sget-object v3, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 1970
    iget-object v4, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    iget-object v5, v3, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    iget v5, v3, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    iget-object v5, v3, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    iget-object v5, v3, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    iget-object v5, v3, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1974
    :cond_1
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1975
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveProxyList()V

    return-object p0
.end method

.method public static allowPreparingHevcPlayers()Z
    .locals 9

    .line 524
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 527
    :cond_0
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->allowPreparingHevcPlayers:Ljava/lang/Boolean;

    if-nez v0, :cond_8

    .line 528
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_6

    .line 533
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v5

    .line 534
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    :cond_1
    move v6, v1

    .line 539
    :goto_1
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    const-string/jumbo v8, "video/hevc"

    if-ge v6, v7, :cond_3

    .line 540
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_2
    if-nez v4, :cond_4

    goto :goto_3

    .line 548
    :cond_4
    invoke-virtual {v5, v8}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMaxSupportedInstances()I

    move-result v4

    if-le v4, v3, :cond_5

    move v3, v4

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const/16 v0, 0x8

    if-lt v3, v0, :cond_7

    move v1, v4

    .line 553
    :cond_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->allowPreparingHevcPlayers:Ljava/lang/Boolean;

    .line 555
    :cond_8
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->allowPreparingHevcPlayers:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static animationsEnabled()Z
    .locals 3

    .line 2240
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->animationsEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2241
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "view_animations"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->animationsEnabled:Ljava/lang/Boolean;

    .line 2243
    :cond_0
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->animationsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static canBlurChat()Z
    .locals 2

    .line 2206
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

    .line 2210
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

    .line 1554
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 1557
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 1558
    sget v1, Lorg/telegram/messenger/SharedConfig;->lastLogsCheckTime:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xe10

    if-ge v1, v2, :cond_1

    return-void

    .line 1561
    :cond_1
    sput v0, Lorg/telegram/messenger/SharedConfig;->lastLogsCheckTime:I

    .line 1562
    sget-object v1, Lorg/telegram/messenger/Utilities;->cacheClearQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static checkPasscode(Ljava/lang/String;ILcom/iMe/fork/enums/LockedSection;)Z
    .locals 7

    .line 1320
    invoke-static {p1}, Lcom/iMe/fork/controller/LockedSectionsController;->getInstance(I)Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1322
    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lcom/iMe/fork/enums/LockedSection;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p2

    if-nez p2, :cond_1

    return v0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    if-eqz p2, :cond_2

    .line 1327
    invoke-virtual {p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeSalt()[B

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    :goto_0
    if-eqz p2, :cond_3

    .line 1328
    invoke-virtual {p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    .line 1330
    :goto_1
    array-length v3, v1

    const-string v4, "UTF-8"

    const/16 v5, 0x10

    if-nez v3, :cond_7

    .line 1331
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :try_start_0
    new-array v2, v5, [B

    .line 1335
    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1336
    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 1337
    array-length v3, p0

    add-int/lit8 v3, v3, 0x20

    new-array v4, v3, [B

    .line 1338
    invoke-static {v2, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1339
    array-length v6, p0

    invoke-static {p0, v0, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1340
    array-length p0, p0

    add-int/2addr p0, v5

    invoke-static {v2, v0, v4, p0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v5, v3

    .line 1341
    invoke-static {v4, v0, v5, v6}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_4

    .line 1344
    invoke-virtual {p2, v2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeSalt([B)V

    .line 1345
    invoke-virtual {p2, p0}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeHash(Ljava/lang/String;)V

    goto :goto_2

    .line 1347
    :cond_4
    sput-object v2, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    .line 1348
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    :goto_2
    if-eqz p2, :cond_5

    .line 1353
    invoke-virtual {p1}, Lcom/iMe/fork/controller/LockedSectionsController;->saveConfig()V

    goto :goto_3

    .line 1355
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 1357
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return v1

    .line 1363
    :cond_7
    :try_start_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 1364
    array-length p1, p0

    add-int/lit8 p1, p1, 0x20

    new-array p2, p1, [B

    .line 1365
    invoke-static {v1, v0, p2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1366
    array-length v3, p0

    invoke-static {p0, v0, p2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1367
    array-length p0, p0

    add-int/2addr p0, v5

    invoke-static {v1, v0, p2, p0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long p0, p1

    .line 1368
    invoke-static {p2, v0, p0, p1}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    .line 1369
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    .line 1371
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static checkSaveToGalleryFiles()V
    .locals 2

    .line 2006
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    sget-object v1, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda4;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static checkSdCard(Ljava/io/File;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 490
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->readOnlyStorageDirAlertShowed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 494
    sget-object p0, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda3;

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static clearConfig()V
    .locals 4

    const/4 v0, 0x0

    .line 1378
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->saveIncomingPhotos:Z

    .line 1379
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    .line 1380
    sput v0, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    const-wide/16 v1, 0x0

    .line 1381
    sput-wide v1, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    .line 1382
    sput-wide v1, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    .line 1383
    sput v0, Lorg/telegram/messenger/SharedConfig;->badPasscodeTries:I

    const-string v3, ""

    .line 1384
    sput-object v3, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    new-array v3, v0, [B

    .line 1385
    sput-object v3, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    const/16 v3, 0xe10

    .line 1386
    sput v3, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    .line 1387
    sput v0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    const/4 v3, 0x1

    .line 1388
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->useFingerprint:Z

    .line 1389
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    .line 1390
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    .line 1391
    sget-object v3, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    sput-object v3, Lorg/telegram/messenger/SharedConfig;->lastUpdateVersion:Ljava/lang/String;

    .line 1392
    sput v0, Lorg/telegram/messenger/SharedConfig;->textSelectionHintShows:I

    .line 1393
    sput v0, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintShows:I

    .line 1394
    sput-wide v1, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintSeenAt:J

    .line 1395
    sput v0, Lorg/telegram/messenger/SharedConfig;->scheduledHintShows:I

    .line 1396
    sput-wide v1, Lorg/telegram/messenger/SharedConfig;->scheduledHintSeenAt:J

    .line 1397
    sput v0, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    .line 1398
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->forwardingOptionsHintShown:Z

    .line 1399
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->replyingOptionsHintShown:Z

    const/4 v1, 0x3

    .line 1400
    sput v1, Lorg/telegram/messenger/SharedConfig;->messageSeenHintCount:I

    .line 1401
    sput v1, Lorg/telegram/messenger/SharedConfig;->emojiInteractionsHintCount:I

    .line 1402
    sput v1, Lorg/telegram/messenger/SharedConfig;->dayNightThemeSwitchHintCount:I

    const/4 v1, 0x2

    .line 1403
    sput v1, Lorg/telegram/messenger/SharedConfig;->stealthModeSendMessageConfirm:I

    .line 1404
    sput v0, Lorg/telegram/messenger/SharedConfig;->dayNightWallpaperSwitchHint:I

    .line 1405
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    return-void
.end method

.method public static deleteProxy(Lorg/telegram/messenger/SharedConfig$ProxyInfo;)V
    .locals 10

    .line 1984
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1985
    sput-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 1986
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "proxy_enabled"

    const/4 v2, 0x0

    .line 1987
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1988
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v4, "proxy_ip"

    const-string v5, ""

    .line 1989
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "proxy_pass"

    .line 1990
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "proxy_user"

    .line 1991
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "proxy_secret"

    .line 1992
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v4, 0x438

    const-string/jumbo v5, "proxy_port"

    .line 1993
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1994
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "proxy_enabled_calls"

    .line 1995
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1996
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    .line 1998
    invoke-static/range {v4 .. v9}, Lorg/telegram/tgnet/ConnectionsManager;->setProxySettings(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    :cond_0
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2002
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveProxyList()V

    return-void
.end method

.method public static deviceIsAboveAverage()Z
    .locals 2

    .line 2255
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

    .line 2263
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

    .line 2259
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

    .line 2251
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

    .line 1739
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

.method public static findGoodHevcEncoder()Ljava/lang/String;
    .locals 7

    .line 591
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->goodHevcEncoder:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 592
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 594
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 595
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    move v4, v1

    .line 599
    :goto_1
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 600
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    const-string/jumbo v6, "video/hevc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3}, Lorg/telegram/messenger/SharedConfig;->isWhitelisted(Landroid/media/MediaCodecInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 601
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->goodHevcEncoder:Ljava/lang/String;

    return-object v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v0, ""

    .line 605
    sput-object v0, Lorg/telegram/messenger/SharedConfig;->goodHevcEncoder:Ljava/lang/String;

    .line 607
    :cond_4
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->goodHevcEncoder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->goodHevcEncoder:Ljava/lang/String;

    :goto_3
    return-object v0
.end method

.method public static forwardingOptionsHintHintShowed()V
    .locals 3

    .line 1488
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1489
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    .line 1490
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->forwardingOptionsHintShown:Z

    const-string v2, "forwardingOptionsHintShown"

    .line 1491
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1492
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static getChatSwipeAction(I)I
    .locals 5

    .line 2037
    invoke-static {p0}, Lcom/iMe/fork/controller/FiltersController;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FiltersController;->isFoldersHidden()Z

    move-result v0

    .line 2038
    invoke-static {p0}, Lcom/iMe/fork/controller/FiltersController;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iMe/fork/controller/FiltersController;->getActiveSortingTabsCount(Z)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 2040
    :cond_0
    sget v1, Lorg/telegram/messenger/SharedConfig;->chatSwipeAction:I

    const/4 v3, 0x2

    const/4 v4, 0x5

    if-ltz v1, :cond_3

    if-ne v1, v4, :cond_2

    if-nez v0, :cond_1

    .line 2041
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    if-nez v2, :cond_2

    return v3

    .line 2044
    :cond_2
    sget p0, Lorg/telegram/messenger/SharedConfig;->chatSwipeAction:I

    return p0

    :cond_3
    if-nez v0, :cond_4

    .line 2045
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

    .line 1245
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passportConfigMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->passportConfigMap:Ljava/util/HashMap;

    .line 1248
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->passportConfigJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1250
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1251
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1252
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

    .line 1255
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1258
    :cond_0
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passportConfigMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getDevicePerformanceClass()I
    .locals 2

    .line 2097
    sget v0, Lorg/telegram/messenger/SharedConfig;->overrideDevicePerformanceClass:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2100
    :cond_0
    sget v0, Lorg/telegram/messenger/SharedConfig;->devicePerformanceClass:I

    if-ne v0, v1, :cond_1

    .line 2101
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->measureDevicePerformanceClass()I

    move-result v0

    sput v0, Lorg/telegram/messenger/SharedConfig;->devicePerformanceClass:I

    .line 2103
    :cond_1
    sget v0, Lorg/telegram/messenger/SharedConfig;->devicePerformanceClass:I

    return v0
.end method

.method public static getDrawerHeaderSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;
    .locals 8

    .line 151
    new-instance v7, Lcom/iMe/fork/models/DrawerHeaderSettings;

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderTitle:Lcom/iMe/ui/drawer/DrawerAccountData;

    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderSubtitle:Lcom/iMe/ui/drawer/DrawerAccountData;

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderTitleEnabled:Z

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderSubtitleEnabled:Z

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderAvatarEnabled:Z

    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderArchiveEnabled:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/iMe/fork/models/DrawerHeaderSettings;-><init>(Lcom/iMe/ui/drawer/DrawerAccountData;Lcom/iMe/ui/drawer/DrawerAccountData;ZZZZ)V

    return-object v7
.end method

.method public static getLastLocalId()I
    .locals 3

    .line 906
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->localIdSync:Ljava/lang/Object;

    monitor-enter v0

    .line 907
    :try_start_0
    sget v1, Lorg/telegram/messenger/SharedConfig;->lastLocalId:I

    add-int/lit8 v2, v1, -0x1

    sput v2, Lorg/telegram/messenger/SharedConfig;->lastLocalId:I

    .line 908
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

    .line 2277
    sget v0, Lorg/telegram/messenger/SharedConfig;->legacyDevicePerformanceClass:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 2278
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2279
    sget v2, Lorg/telegram/tgnet/ConnectionsManager;->CPU_COUNT:I

    .line 2280
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

    .line 2285
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

    const-string/jumbo v10, "r"

    invoke-direct {v9, v8, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 2288
    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/lit16 v8, v8, 0x3e8

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    .line 2291
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

    .line 2294
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

    .line 2301
    :cond_7
    sput v7, Lorg/telegram/messenger/SharedConfig;->legacyDevicePerformanceClass:I

    goto :goto_4

    .line 2299
    :cond_8
    :goto_2
    sput v8, Lorg/telegram/messenger/SharedConfig;->legacyDevicePerformanceClass:I

    goto :goto_4

    .line 2297
    :cond_9
    :goto_3
    sput v4, Lorg/telegram/messenger/SharedConfig;->legacyDevicePerformanceClass:I

    .line 2304
    :cond_a
    :goto_4
    sget v0, Lorg/telegram/messenger/SharedConfig;->legacyDevicePerformanceClass:I

    return v0
.end method

.method public static getPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 2247
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "userconfing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static hasPreferenceKey(Ljava/lang/String;)Z
    .locals 1

    .line 147
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static increaseBadPasscodeTries(ILcom/iMe/fork/enums/LockedSection;)V
    .locals 5

    .line 1165
    invoke-static {p0}, Lcom/iMe/fork/controller/LockedSectionsController;->getInstance(I)Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 1167
    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lcom/iMe/fork/enums/LockedSection;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_0
    const/4 p1, 0x0

    :cond_1
    if-eqz p1, :cond_2

    .line 1172
    invoke-virtual {p1}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getBadPasscodeTries()I

    move-result v0

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/messenger/SharedConfig;->badPasscodeTries:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const-wide/16 v1, 0x7530

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x61a8

    goto :goto_1

    :cond_4
    const-wide/16 v1, 0x4e20

    goto :goto_1

    :cond_5
    const-wide/16 v1, 0x3a98

    goto :goto_1

    :cond_6
    const-wide/16 v1, 0x2710

    goto :goto_1

    :cond_7
    const-wide/16 v1, 0x1388

    :goto_1
    if-eqz p1, :cond_8

    .line 1199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setLastUptimeMillis(J)V

    goto :goto_2

    .line 1201
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sput-wide v3, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    :goto_2
    if-eqz p1, :cond_9

    .line 1204
    invoke-virtual {p1, v1, v2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeRetryInMs(J)V

    goto :goto_3

    .line 1206
    :cond_9
    sput-wide v1, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    :cond_a
    :goto_3
    if-eqz p1, :cond_b

    .line 1212
    invoke-virtual {p1, v0}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setBadPasscodeTries(I)V

    goto :goto_4

    .line 1214
    :cond_b
    sput v0, Lorg/telegram/messenger/SharedConfig;->badPasscodeTries:I

    :goto_4
    if-eqz p1, :cond_c

    .line 1219
    invoke-virtual {p0}, Lcom/iMe/fork/controller/LockedSectionsController;->saveConfig()V

    goto :goto_5

    .line 1221
    :cond_c
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    :goto_5
    return-void
.end method

.method public static increaseDayNightWallpaperSiwtchHint()V
    .locals 3

    .line 1456
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1457
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1458
    sget v1, Lorg/telegram/messenger/SharedConfig;->dayNightWallpaperSwitchHint:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/telegram/messenger/SharedConfig;->dayNightWallpaperSwitchHint:I

    const-string v2, "dayNightWallpaperSwitchHint"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1459
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static increaseLockRecordAudioVideoHintShowed()V
    .locals 3

    .line 1518
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1519
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1520
    sget v1, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    const-string/jumbo v2, "lockRecordAudioVideoHint"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1521
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static increaseScheduledHintShowed()V
    .locals 4

    .line 1479
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1480
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lorg/telegram/messenger/SharedConfig;->scheduledHintSeenAt:J

    .line 1482
    sget v1, Lorg/telegram/messenger/SharedConfig;->scheduledHintShows:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/telegram/messenger/SharedConfig;->scheduledHintShows:I

    const-string/jumbo v2, "scheduledHintShows"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1483
    sget-wide v1, Lorg/telegram/messenger/SharedConfig;->scheduledHintSeenAt:J

    const-string/jumbo v3, "scheduledHintSeenAt"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1484
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static increaseScheduledOrNoSoundHintShowed()V
    .locals 4

    .line 1470
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1471
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintSeenAt:J

    .line 1473
    sget v1, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintShows:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintShows:I

    const-string/jumbo v2, "scheduledOrNoSoundHintShows"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1474
    sget-wide v1, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintSeenAt:J

    const-string/jumbo v3, "scheduledOrNoSoundHintSeenAt"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1475
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static increaseSearchAsListHintShows()V
    .locals 3

    .line 1532
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1533
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1534
    sget v1, Lorg/telegram/messenger/SharedConfig;->searchMessagesAsListHintShows:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/telegram/messenger/SharedConfig;->searchMessagesAsListHintShows:I

    const-string/jumbo v2, "searchMessagesAsListHintShows"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1535
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static increaseTextSelectionHintShowed()V
    .locals 3

    .line 1449
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1450
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1451
    sget v1, Lorg/telegram/messenger/SharedConfig;->textSelectionHintShows:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/telegram/messenger/SharedConfig;->textSelectionHintShows:I

    const-string/jumbo v2, "textSelectionHintShows"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1452
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static isAppUpdateAvailable()Z
    .locals 3

    .line 1262
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isStandaloneBuild()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1267
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

    .line 1268
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1270
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1271
    sget v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION:I

    .line 1273
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

    .line 1229
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isAutoplayVideo()Z
    .locals 1

    const/16 v0, 0x400

    .line 1225
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isPassportConfigLoaded()Z
    .locals 1

    .line 1233
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

    .line 1980
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "proxy_enabled"

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

    .line 1691
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "mapPreviewType"

    .line 1692
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isWhitelisted(Landroid/media/MediaCodecInfo;)Z
    .locals 1

    .line 611
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 614
    :cond_0
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->hevcEncoderWhitelist:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$checkLogsToDelete$3(I)V
    .locals 3

    const v0, 0xd2f00

    sub-int/2addr p0, v0

    int-to-long v0, p0

    .line 1565
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getLogsDir()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 1569
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

    .line 1571
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1573
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1574
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1575
    sget v0, Lorg/telegram/messenger/SharedConfig;->lastLogsCheckTime:I

    const-string/jumbo v1, "lastLogsCheckTime"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1576
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static synthetic lambda$checkSaveToGalleryFiles$5()V
    .locals 4

    .line 2008
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Telegram"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2009
    new-instance v1, Ljava/io/File;

    const-string v2, "Telegram Images"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2010
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 2011
    new-instance v2, Ljava/io/File;

    const-string v3, "Telegram Video"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2012
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2014
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ".nomedia"

    if-nez v0, :cond_1

    .line 2015
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2016
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2018
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2019
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 2022
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2023
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    .line 2025
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2026
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2030
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic lambda$checkSdCard$0()V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$checkSdCard$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$checkSdCard$2()V
    .locals 3

    .line 495
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->readOnlyStorageDirAlertShowed:Z

    if-eqz v0, :cond_0

    return-void

    .line 498
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 499
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 500
    sput-object v1, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    .line 501
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 502
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda2;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    .line 506
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->readOnlyStorageDirAlertShowed:Z

    .line 507
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 508
    sget v0, Lorg/telegram/messenger/R$string;->SdCardError:I

    const-string v2, "SdCardError"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 509
    sget v0, Lorg/telegram/messenger/R$string;->SdCardErrorDescription:I

    const-string v2, "SdCardErrorDescription"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setSubtitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 510
    sget v0, Lorg/telegram/messenger/R$string;->DoNotUseSDCard:I

    const-string v2, "DoNotUseSDCard"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 513
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 514
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 515
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$saveProxyList$4(Lorg/telegram/messenger/SharedConfig$ProxyInfo;Lorg/telegram/messenger/SharedConfig$ProxyInfo;)I
    .locals 10

    .line 1934
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    const-wide/32 v1, -0x30d40

    const-wide/16 v3, 0x0

    if-ne v0, p0, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    .line 1935
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

    .line 1939
    :goto_1
    iget-boolean v0, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    if-nez v0, :cond_3

    add-long/2addr v1, v8

    .line 1942
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
    .locals 13

    .line 913
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 914
    :try_start_0
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->configLoaded:Z

    if-nez v1, :cond_e

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto/16 :goto_9

    .line 918
    :cond_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "background_activity"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig$BackgroundActivityPrefs;->access$002(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 920
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "userconfing"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "saveIncomingPhotos"

    .line 921
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->saveIncomingPhotos:Z

    const-string/jumbo v2, "passcodeHash1"

    const-string v4, ""

    .line 922
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    const-string v2, "appLocked"

    .line 923
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    const-string/jumbo v2, "passcodeType"

    .line 924
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    const-string/jumbo v2, "passcodeRetryInMs"

    const-wide/16 v4, 0x0

    .line 925
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    const-string/jumbo v2, "lastUptimeMillis"

    .line 926
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    const-string v2, "badPasscodeTries"

    .line 927
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->badPasscodeTries:I

    const-string v2, "autoLockIn"

    const/16 v6, 0xe10

    .line 928
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    const-string/jumbo v2, "lastPauseTime"

    .line 929
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    const-string/jumbo v2, "useFingerprint"

    const/4 v6, 0x1

    .line 930
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->useFingerprint:Z

    const-string/jumbo v2, "lastUpdateVersion2"

    const-string v7, "3.5"

    .line 931
    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->lastUpdateVersion:Ljava/lang/String;

    const-string v2, "allowScreenCapture"

    .line 932
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    const-string/jumbo v2, "lastLocalId"

    const v7, -0x33450

    .line 933
    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->lastLocalId:I

    const-string/jumbo v2, "pushString2"

    const-string v7, ""

    .line 934
    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    const-string/jumbo v2, "pushType"

    const/4 v7, 0x2

    .line 935
    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->pushType:I

    const-string/jumbo v2, "pushStatSent"

    .line 936
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->pushStatSent:Z

    const-string/jumbo v2, "passportConfigJson"

    const-string v8, ""

    .line 937
    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->passportConfigJson:Ljava/lang/String;

    const-string/jumbo v2, "passportConfigHash"

    .line 938
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->passportConfigHash:I

    const-string/jumbo v2, "storageCacheDir"

    const/4 v8, 0x0

    .line 939
    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    const-string/jumbo v2, "proxyRotationEnabled"

    .line 940
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->proxyRotationEnabled:Z

    const-string/jumbo v2, "proxyRotationTimeout"

    .line 941
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->proxyRotationTimeout:I

    const-string/jumbo v2, "pushAuthKey"

    .line 942
    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 943
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 944
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    .line 947
    :cond_1
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    sget v2, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    if-nez v2, :cond_2

    .line 948
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    const-wide/16 v11, 0x258

    sub-long/2addr v9, v11

    long-to-int v2, v9

    sput v2, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    :cond_2
    const-string/jumbo v2, "passcodeSalt"

    const-string v9, ""

    .line 951
    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 952
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 953
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    goto :goto_0

    :cond_3
    new-array v2, v3, [B

    .line 955
    sput-object v2, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    :goto_0
    const-string v2, "appUpdateCheckTime"

    .line 957
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-interface {v1, v2, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    sput-wide v9, Lorg/telegram/messenger/SharedConfig;->lastUpdateCheckTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "appUpdate"

    .line 959
    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v9, "appUpdateBuild"

    .line 961
    sget v10, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION:I

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdateBuildVersion:I

    .line 962
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 964
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v2, v1}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 965
    invoke-virtual {v2, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {v2, v1, v3}, Lorg/telegram/tgnet/TLRPC$help_AppUpdate;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$help_AppUpdate;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    sput-object v1, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 966
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 969
    :cond_4
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_8

    .line 974
    :try_start_2
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 975
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 976
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

    .line 978
    :goto_1
    :try_start_4
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v1, v8

    :goto_2
    if-nez v2, :cond_5

    .line 981
    sget v2, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION:I

    :cond_5
    if-nez v1, :cond_6

    .line 984
    sget-object v1, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    .line 986
    :cond_6
    sget v1, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdateBuildVersion:I

    if-ne v1, v2, :cond_7

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v1, :cond_8

    .line 987
    :cond_7
    sput-object v8, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 988
    sget-object v1, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda5;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v1

    .line 992
    :try_start_5
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 995
    :cond_8
    :goto_3
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 997
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isDebugThemeSwitchEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isDebugThemeSwitchEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isDebugThemeSwitchEnabled:Z

    .line 998
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isFilesOriginalNameSavingEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isFilesOriginalNameSavingEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isFilesOriginalNameSavingEnabled:Z

    .line 999
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isFilesSendingPreviewAndCaptionEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isFilesSendingPreviewAndCaptionEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isFilesSendingPreviewAndCaptionEnabled:Z

    .line 1000
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isVibrationEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isVibrationEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isVibrationEnabled:Z

    .line 1001
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedStickersSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->selectedStickersSize()Lcom/iMe/fork/enums/StickersSize;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/fork/enums/StickersSize;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/StickersSize;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedStickersSize:Lcom/iMe/fork/enums/StickersSize;

    .line 1002
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isProxyButtonEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isProxyButtonEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isProxyButtonEnabled:Z

    .line 1003
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isReadAllChatsConfirmationShown()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isReadAllChatsConfirmationShown()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isReadAllChatsConfirmationShown:Z

    .line 1004
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isProfileInfoHidden()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isProfileInfoHidden()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isProfileInfoHidden:Z

    .line 1005
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isMultiForwardingOptionsHintShown()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isMultiForwardingOptionsHintShown()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isMultiForwardingOptionsHintShown:Z

    .line 1006
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedDrawerHeaderTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->selectedDrawerHeaderTitle()Lcom/iMe/ui/drawer/DrawerAccountData;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/iMe/ui/drawer/DrawerAccountData;->mapNameToEnum(Ljava/lang/String;Lcom/iMe/ui/drawer/DrawerAccountData;)Lcom/iMe/ui/drawer/DrawerAccountData;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderTitle:Lcom/iMe/ui/drawer/DrawerAccountData;

    .line 1007
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedDrawerHeaderSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->selectedDrawerHeaderSubtitle()Lcom/iMe/ui/drawer/DrawerAccountData;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/iMe/ui/drawer/DrawerAccountData;->mapNameToEnum(Ljava/lang/String;Lcom/iMe/ui/drawer/DrawerAccountData;)Lcom/iMe/ui/drawer/DrawerAccountData;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderSubtitle:Lcom/iMe/ui/drawer/DrawerAccountData;

    .line 1008
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderTitleEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isShowDrawerHeaderTitleEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderTitleEnabled:Z

    .line 1009
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderSubtitleEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isShowDrawerHeaderSubtitleEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderSubtitleEnabled:Z

    .line 1010
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderAvatarEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isShowDrawerHeaderAvatarEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderAvatarEnabled:Z

    .line 1011
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderArchiveEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isShowDrawerHeaderArchiveEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderArchiveEnabled:Z

    .line 1012
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedDrawerItems()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->selectedDrawerItems()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/ui/drawer/DrawerItem;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    .line 1013
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isActionBarAccountSwitchEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isActionBarAccountSwitchEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isActionBarAccountSwitchEnabled:Z

    .line 1014
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isMainActionBarMenuEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isMainActionBarMenuEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isMainActionBarMenuEnabled:Z

    .line 1015
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isDialogsCompactModeEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isDialogsCompactModeEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    .line 1016
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isHideChatKeyboardOnScrollEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isHideChatKeyboardOnScrollEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isHideChatKeyboardOnScrollEnabled:Z

    .line 1017
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isChatThemesEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isChatThemesEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isChatThemesEnabled:Z

    .line 1018
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isExtendedAvatarPreviewerEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isExtendedAvatarPreviewerEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerEnabled:Z

    .line 1019
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isExtendedAvatarPreviewerByTapEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isExtendedAvatarPreviewerByTapEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerByTapEnabled:Z

    .line 1020
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedExtendedAvatarPreviewerItems()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->selectedExtendedAvatarPreviewerItems()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedExtendedAvatarPreviewerItems:Ljava/util/List;

    .line 1021
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isCallsConfirmationEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isCallsConfirmationEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isCallsConfirmationEnabled:Z

    .line 1022
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isDeleteCloudConfirmationEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isDeleteCloudConfirmationEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isDeleteCloudConfirmationEnabled:Z

    .line 1023
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isSendingGifConfirmationEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isSendingGifConfirmationEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    .line 1024
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isSendingStickerConfirmationEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isSendingStickerConfirmationEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isSendingStickerConfirmationEnabled:Z

    .line 1025
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isSpeakWithoutHoldEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isSpeakWithoutHoldEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isSpeakWithoutHoldEnabled:Z

    .line 1026
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isVideoSpeakWithoutHoldEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isVideoSpeakWithoutHoldEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isVideoSpeakWithoutHoldEnabled:Z

    .line 1027
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedVideoVoiceCamera()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->selectedVideoVoiceCamera()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/fork/enums/VideoVoiceCamera;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/VideoVoiceCamera;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedVideoVoiceCamera:Lcom/iMe/fork/enums/VideoVoiceCamera;

    .line 1028
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isOpenForwardingOptionsAutomaticallyEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isOpenForwardingOptionsAutomaticallyEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isOpenForwardingOptionsAutomaticallyEnabled:Z

    .line 1029
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isMultiReplyEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isMultiReplyEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isMultiReplyEnabled:Z

    .line 1030
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isMessageQuickTranslateEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isMessageQuickTranslateEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isMessageQuickTranslateEnabled:Z

    .line 1031
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isBotHelpTranslateEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isBotHelpTranslateEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isBotHelpTranslateEnabled:Z

    .line 1032
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isTranslateInSendPopupEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isTranslateInSendPopupEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isTranslateInSendPopupEnabled:Z

    .line 1033
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isCombineMessagesEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isCombineMessagesEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isCombineMessagesEnabled:Z

    .line 1034
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedPhotoViewerMenuItems()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->selectedPhotoViewerMenuItems()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/fork/enums/PhotoViewerMenuItem;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    .line 1035
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isReactionsEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isReactionsEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isReactionsEnabled:Z

    .line 1036
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedDialogTypesForMessagePopupReactions()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->selectedDialogTypesForMessagePopupReactions()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/fork/enums/DialogType;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedDialogTypesForMessagePopupReactions:Ljava/util/Set;

    .line 1037
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isReactionsInSendPopupEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isReactionsInSendPopupEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isReactionsInSendPopupEnabled:Z

    .line 1038
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isFilterTabsAtBottomEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isFilterTabsAtBottomEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    .line 1039
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedFilterTabsNotificationMode()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->selectedFilterTabsNotificationMode()Lcom/iMe/fork/enums/FilterTabNotificationMode;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/fork/enums/FilterTabNotificationMode;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/FilterTabNotificationMode;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabsNotificationMode:Lcom/iMe/fork/enums/FilterTabNotificationMode;

    .line 1040
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isRememberLastFilterTabEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isRememberLastFilterTabEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isRememberLastFilterTabEnabled:Z

    .line 1041
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isChatSortingEnabledByDefault()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isChatSortingEnabledByDefault()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isChatSortingEnabledByDefault:Z

    .line 1042
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isCloudAlbumsEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isCloudAlbumsEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    .line 1043
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isAlbumsIntroShown()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isAlbumsIntroShown()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isAlbumsIntroShown:Z

    .line 1044
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isSortCloudAlbumsByNameEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isSortCloudAlbumsByNameEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isSortCloudAlbumsByNameEnabled:Z

    .line 1045
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isPlayerPinned()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isPlayerPinned()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isPlayerPinned:Z

    .line 1046
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isPinnedPlayerMinimized()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isPinnedPlayerMinimized()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerMinimized:Z

    .line 1047
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isPinnedPlayerNightThemeEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isPinnedPlayerNightThemeEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerNightThemeEnabled:Z

    .line 1048
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isMusicIntroShown()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isMusicIntroShown()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isMusicIntroShown:Z

    .line 1049
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedTemplatesMode()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->selectedTemplatesMode()Lcom/iMe/fork/enums/TemplatesMode;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/fork/enums/TemplatesMode;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/TemplatesMode;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesMode:Lcom/iMe/fork/enums/TemplatesMode;

    .line 1050
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedTemplatesSortingType()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->selectedTemplatesSortingType()Lcom/iMe/fork/enums/TemplatesSortingType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/fork/enums/TemplatesSortingType;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/TemplatesSortingType;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesSortingType:Lcom/iMe/fork/enums/TemplatesSortingType;

    .line 1051
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->lastSelectedLanguages()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->lastSelectedLanguages()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->lastSelectedLanguage:Ljava/lang/String;

    .line 1052
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedFilterTabsWidthMode()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->selectedFilterTabsWidthMode()Lcom/iMe/fork/enums/FilterTabWidthMode;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/fork/enums/FilterTabWidthMode;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/FilterTabWidthMode;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lcom/iMe/fork/enums/FilterTabWidthMode;

    .line 1053
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedDrawerHolidayIconType()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->selectedDrawerHolidayIconType()Lcom/iMe/fork/enums/DrawerHolidayIconType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/fork/enums/DrawerHolidayIconType;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/DrawerHolidayIconType;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->drawerHolidayIconType:Lcom/iMe/fork/enums/DrawerHolidayIconType;

    .line 1054
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isNewTelegramAuthorizationRulesRead()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isNewTelegramAuthorizationRulesRead()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isNewTelegramAuthorizationRulesRead:Z

    .line 1055
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isDialogsPremiumHintEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isDialogsPremiumHintEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isDialogsPremiumHintEnabled:Z

    .line 1056
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isChatAttachAlertWalletBotEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isChatAttachAlertWalletBotEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isChatAttachAlertWalletBotEnabled:Z

    .line 1057
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isForwardingPreviewEditorHintShown()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isForwardingPreviewEditorHintShown()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isForwardingPreviewEditorHintShown:Z

    .line 1058
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isReplyColorsEnabled()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isReplyColorsEnabled()Z

    move-result v9

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isReplyColorsEnabled:Z

    .line 1059
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->syncPinnedPlayerTheme(Z)V

    .line 1060
    invoke-static {v1}, Lcom/iMe/common/TelegramPreferenceMigrationManager;->migrateGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 1062
    invoke-static {v1}, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->load(Landroid/content/SharedPreferences;)V

    const-string/jumbo v2, "mapPreviewType"

    .line 1063
    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->mapPreviewType:I

    const-string/jumbo v2, "raise_to_listen"

    .line 1064
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    const-string/jumbo v2, "raise_to_speak"

    .line 1065
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    const-string/jumbo v2, "next_media_on_tap"

    .line 1066
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->nextMediaTap:Z

    const-string/jumbo v2, "record_via_sco"

    .line 1067
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    const-string v2, "custom_tabs"

    .line 1068
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    const-string v2, "direct_share"

    .line 1069
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->directShare:Z

    const-string/jumbo v2, "shuffleMusic"

    .line 1070
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-nez v2, :cond_9

    const-string/jumbo v2, "playOrderReversed"

    .line 1071
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v6

    goto :goto_4

    :cond_9
    move v2, v3

    :goto_4
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    const-string v2, "inappCamera"

    .line 1072
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->inappCamera:Z

    const-string v2, "cameraCache"

    .line 1073
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->hasCameraCache:Z

    .line 1074
    sput-boolean v6, Lorg/telegram/messenger/SharedConfig;->roundCamera16to9:Z

    const-string/jumbo v2, "repeatMode"

    .line 1075
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    const-string v2, "fons_size"

    .line 1076
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x12

    goto :goto_5

    :cond_a
    const/16 v9, 0x10

    :goto_5
    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    const-string v2, "fons_size"

    .line 1077
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v6

    goto :goto_6

    :cond_b
    move v2, v3

    :goto_6
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->fontSizeIsDefault:Z

    const-string v2, "bubbleRadius"

    const/16 v9, 0x11

    .line 1078
    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    const-string/jumbo v2, "iv_font_size"

    .line 1079
    sget v9, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    const-string v2, "allowBigEmoji"

    .line 1080
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->allowBigEmoji:Z

    const-string/jumbo v2, "useSystemEmoji"

    .line 1081
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->useSystemEmoji:Z

    const-string/jumbo v2, "streamMedia"

    .line 1082
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    const-string/jumbo v2, "saveStreamMedia"

    .line 1083
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    const-string/jumbo v2, "pauseMusicOnRecord"

    .line 1084
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    const-string/jumbo v2, "pauseMusicOnMedia"

    .line 1085
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnMedia:Z

    const-string v2, "forceDisableTabletMode"

    .line 1086
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->forceDisableTabletMode:Z

    const-string/jumbo v2, "streamAllVideo"

    .line 1087
    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    const-string/jumbo v2, "streamMkv"

    .line 1088
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    const-string/jumbo v2, "suggestStickers"

    .line 1089
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    const-string/jumbo v2, "suggestAnimatedEmoji"

    .line 1090
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    const-string/jumbo v2, "overrideDevicePerformanceClass"

    const/4 v9, -0x1

    .line 1091
    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->overrideDevicePerformanceClass:I

    const-string v2, "devicePerformanceClass"

    .line 1092
    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->devicePerformanceClass:I

    const-string/jumbo v2, "sortContactsByName"

    .line 1093
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->sortContactsByName:Z

    const-string/jumbo v2, "sortFilesByName"

    .line 1094
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->sortFilesByName:Z

    const-string/jumbo v2, "noSoundHintShowed"

    .line 1095
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->noSoundHintShowed:Z

    const-string v2, "directShareHash2"

    .line 1096
    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->directShareHash:Ljava/lang/String;

    const-string/jumbo v2, "useThreeLinesLayout"

    .line 1097
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    const-string v2, "archiveHidden"

    .line 1098
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    const-string v2, "distanceSystemType"

    .line 1099
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->distanceSystemType:I

    const-string/jumbo v2, "keep_media"

    .line 1100
    sget v8, Lorg/telegram/messenger/CacheByChatsController;->KEEP_MEDIA_ONE_MONTH:I

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->keepMedia:I

    const-string v2, "debugWebView"

    .line 1101
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    const-string/jumbo v2, "lastKeepMediaCheckTime"

    .line 1102
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->lastKeepMediaCheckTime:I

    const-string/jumbo v2, "lastLogsCheckTime"

    .line 1103
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->lastLogsCheckTime:I

    const-string/jumbo v2, "searchMessagesAsListHintShows"

    .line 1104
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->searchMessagesAsListHintShows:I

    const-string/jumbo v2, "searchMessagesAsListUsed"

    .line 1105
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->searchMessagesAsListUsed:Z

    const-string/jumbo v2, "stickersReorderingHintUsed"

    .line 1106
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->stickersReorderingHintUsed:Z

    const-string/jumbo v2, "storyReactionsLongPressHint"

    .line 1107
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->storyReactionsLongPressHint:Z

    const-string/jumbo v2, "storiesIntroShown"

    .line 1108
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->storiesIntroShown:Z

    const-string/jumbo v2, "textSelectionHintShows"

    .line 1109
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->textSelectionHintShows:I

    const-string/jumbo v2, "scheduledOrNoSoundHintShows"

    .line 1110
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintShows:I

    const-string/jumbo v2, "scheduledOrNoSoundHintSeenAt"

    .line 1111
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    sput-wide v10, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintSeenAt:J

    const-string/jumbo v2, "scheduledHintShows"

    .line 1112
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->scheduledHintShows:I

    const-string/jumbo v2, "scheduledHintSeenAt"

    .line 1113
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lorg/telegram/messenger/SharedConfig;->scheduledHintSeenAt:J

    const-string v2, "forwardingOptionsHintShown"

    .line 1114
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->forwardingOptionsHintShown:Z

    const-string/jumbo v2, "replyingOptionsHintShown"

    .line 1115
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->replyingOptionsHintShown:Z

    const-string/jumbo v2, "lockRecordAudioVideoHint"

    .line 1116
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    const-string v2, "disableVoiceAudioEffects"

    .line 1117
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->disableVoiceAudioEffects:Z

    const-string/jumbo v2, "noiseSupression"

    .line 1118
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->noiseSupression:Z

    const-string v2, "ChatSwipeAction"

    .line 1119
    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->chatSwipeAction:I

    const-string/jumbo v2, "messageSeenCount"

    const/4 v4, 0x3

    .line 1120
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->messageSeenHintCount:I

    const-string v2, "emojiInteractionsHintCount"

    .line 1121
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->emojiInteractionsHintCount:I

    const-string v2, "dayNightThemeSwitchHintCount"

    .line 1122
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->dayNightThemeSwitchHintCount:I

    const-string/jumbo v2, "stealthModeSendMessageConfirm"

    .line 1123
    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->stealthModeSendMessageConfirm:I

    const-string/jumbo v2, "mediaColumnsCount"

    .line 1124
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->mediaColumnsCount:I

    const-string/jumbo v2, "storiesColumnsCount"

    .line 1125
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->storiesColumnsCount:I

    const-string v2, "fastScrollHintCount"

    .line 1126
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    const-string v2, "dontAskManageStorage"

    .line 1127
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->dontAskManageStorage:Z

    const-string v2, "hasEmailLogin"

    .line 1128
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->hasEmailLogin:Z

    const-string v2, "floatingDebugActive"

    .line 1129
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isFloatingDebugActive:Z

    const-string/jumbo v2, "updateStickersOrderOnSend"

    .line 1130
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    const-string v2, "dayNightWallpaperSwitchHint"

    .line 1131
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->dayNightWallpaperSwitchHint:I

    const-string v2, "bigCameraForRound"

    .line 1132
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->bigCameraForRound:Z

    const-string/jumbo v2, "useSurfaceInStories"

    .line 1133
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_c

    move v5, v6

    goto :goto_7

    :cond_c
    move v5, v3

    :goto_7
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->useSurfaceInStories:Z

    const-string/jumbo v2, "payByInvoice"

    .line 1134
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->payByInvoice:Z

    const-string/jumbo v2, "photoViewerBlur"

    .line 1135
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->photoViewerBlur:Z

    .line 1137
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->loadDebugConfig(Landroid/content/SharedPreferences;)V

    .line 1139
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "Notifications"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "AllAccounts"

    .line 1140
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->showNotificationsForAllAccounts:Z

    .line 1142
    sput-boolean v6, Lorg/telegram/messenger/SharedConfig;->configLoaded:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v1, 0x13

    if-lt v4, v1, :cond_d

    .line 1145
    :try_start_6
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    if-eqz v1, :cond_d

    .line 1146
    invoke-static {v6}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    :catch_3
    move-exception v1

    .line 1149
    :try_start_7
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1151
    :cond_d
    :goto_8
    monitor-exit v0

    return-void

    .line 915
    :cond_e
    :goto_9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 1151
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v1
.end method

.method private static loadDebugConfig(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "drawActionBarShadow"

    const/4 v1, 0x1

    .line 2312
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->drawActionBarShadow:Z

    return-void
.end method

.method public static loadProxyList()V
    .locals 16

    .line 1862
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->proxyListLoaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 1865
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "proxy_ip"

    const-string v3, ""

    .line 1866
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "proxy_user"

    .line 1867
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "proxy_pass"

    .line 1868
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "proxy_secret"

    .line 1869
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v1, 0x438

    const-string/jumbo v3, "proxy_port"

    .line 1870
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v1, 0x1

    .line 1872
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->proxyListLoaded:Z

    .line 1873
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 1874
    sput-object v1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    const-string/jumbo v3, "proxy_list"

    .line 1875
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1876
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1877
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1878
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v1, v0}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 1879
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 1881
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 1884
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_5

    .line 1887
    new-instance v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 1888
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v11

    .line 1889
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v12

    .line 1890
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v13

    .line 1891
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v14

    .line 1892
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v15

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lorg/telegram/messenger/SharedConfig$ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt64(Z)J

    move-result-wide v10

    iput-wide v10, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    .line 1895
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt64(Z)J

    move-result-wide v10

    iput-wide v10, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->availableCheckTime:J

    .line 1897
    sget-object v10, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1898
    sget-object v10, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-nez v10, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1899
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

    .line 1900
    sput-object v4, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1905
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

    .line 1909
    new-instance v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 1910
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v11

    .line 1911
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v12

    .line 1912
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v13

    .line 1913
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v14

    .line 1914
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v15

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lorg/telegram/messenger/SharedConfig$ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    sget-object v10, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1916
    sget-object v10, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-nez v10, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1917
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

    .line 1918
    sput-object v4, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1923
    :cond_5
    :goto_2
    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 1925
    :cond_6
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-nez v0, :cond_7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1926
    new-instance v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/SharedConfig$ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 1927
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public static loopStickers()Z
    .locals 1

    const/4 v0, 0x2

    .line 484
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static measureDevicePerformanceClass()I
    .locals 16

    .line 2107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2108
    sget v1, Lorg/telegram/tgnet/ConnectionsManager;->CPU_COUNT:I

    .line 2109
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    const/4 v4, 0x0

    const/16 v5, 0x1f

    if-lt v0, v5, :cond_1

    .line 2111
    sget-object v5, Landroid/os/Build;->SOC_MODEL:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 2112
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    move v6, v4

    .line 2113
    :goto_0
    sget-object v7, Lorg/telegram/messenger/SharedConfig;->LOW_SOC:[I

    array-length v8, v7

    if-ge v6, v8, :cond_1

    .line 2114
    aget v7, v7, v6

    if-ne v7, v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move v5, v4

    move v6, v5

    move v7, v6

    :goto_1
    const/4 v8, 0x1

    if-ge v5, v1, :cond_3

    .line 2124
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

    const-string/jumbo v10, "r"

    invoke-direct {v9, v8, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 2127
    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/lit16 v8, v8, 0x3e8

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    .line 2130
    :cond_2
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    if-nez v6, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    int-to-float v7, v7

    int-to-float v6, v6

    div-float/2addr v7, v6

    float-to-double v6, v7

    .line 2133
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    :goto_2
    const-wide/16 v9, -0x1

    .line 2137
    :try_start_1
    new-instance v7, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v7}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 2138
    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v11, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3, v7}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 2139
    iget-wide v11, v7, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-wide v11, v9

    :goto_3
    const/4 v3, 0x2

    const/16 v7, 0x15

    if-lt v0, v7, :cond_c

    if-le v1, v3, :cond_c

    const/16 v13, 0x64

    if-le v2, v13, :cond_c

    const/4 v13, 0x4

    if-gt v1, v13, :cond_5

    if-eq v6, v5, :cond_5

    const/16 v14, 0x4e2

    if-le v6, v14, :cond_c

    :cond_5
    const/16 v14, 0x80

    if-gt v1, v13, :cond_6

    const/16 v15, 0x640

    if-gt v6, v15, :cond_6

    if-gt v2, v14, :cond_6

    if-le v0, v7, :cond_c

    :cond_6
    if-gt v1, v13, :cond_7

    const/16 v7, 0x514

    if-gt v6, v7, :cond_7

    if-gt v2, v14, :cond_7

    const/16 v7, 0x18

    if-le v0, v7, :cond_c

    :cond_7
    cmp-long v7, v11, v9

    if-eqz v7, :cond_8

    const-wide v9, 0x80000000L

    cmp-long v7, v11, v9

    if-gez v7, :cond_8

    goto :goto_5

    :cond_8
    const/16 v4, 0x8

    if-lt v1, v4, :cond_b

    const/16 v7, 0xa0

    if-le v2, v7, :cond_b

    if-eq v6, v5, :cond_9

    const/16 v7, 0x807

    if-le v6, v7, :cond_b

    :cond_9
    if-ne v6, v5, :cond_a

    if-ne v1, v4, :cond_a

    const/16 v4, 0x17

    if-gt v0, v4, :cond_a

    goto :goto_4

    :cond_a
    move v4, v3

    goto :goto_5

    :cond_b
    :goto_4
    move v4, v8

    .line 2163
    :cond_c
    :goto_5
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_d

    .line 2164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device performance info selected_class = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (cpu_count = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", freq = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    :cond_d
    return v4
.end method

.method public static overrideDevicePerformanceClass(I)V
    .locals 2

    .line 1658
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput p0, Lorg/telegram/messenger/SharedConfig;->overrideDevicePerformanceClass:I

    const-string/jumbo v1, "overrideDevicePerformanceClass"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "lite_mode"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "lite_mode2"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "lite_mode_battery_level"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1659
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->loadPreference()V

    .line 1660
    sget-object p0, Lorg/telegram/messenger/SharedConfig;->liteMode:Lorg/telegram/messenger/LiteMode;

    if-eqz p0, :cond_0

    .line 1661
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

    .line 1525
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1526
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "lockRecordAudioVideoHint"

    const/4 v2, 0x3

    .line 1527
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1528
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static removeScheduledHint()V
    .locals 3

    .line 1511
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1512
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "scheduledHintShows"

    const/4 v2, 0x3

    .line 1513
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1514
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static removeScheduledOrNoSoundHint()V
    .locals 3

    .line 1504
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1505
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "scheduledOrNoSoundHintShows"

    const/4 v2, 0x3

    .line 1506
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1507
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static removeTextSelectionHint()V
    .locals 3

    .line 1463
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1464
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "textSelectionHintShows"

    const/4 v2, 0x3

    .line 1465
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1466
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static replyingOptionsHintHintShowed()V
    .locals 3

    .line 1496
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1497
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    .line 1498
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->replyingOptionsHintShown:Z

    const-string/jumbo v2, "replyingOptionsHintShown"

    .line 1499
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1500
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveConfig()V
    .locals 6

    .line 837
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 839
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "userconfing"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 840
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "saveIncomingPhotos"

    .line 841
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->saveIncomingPhotos:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "passcodeHash1"

    .line 842
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "passcodeSalt"

    .line 843
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

    .line 844
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "passcodeType"

    .line 845
    sget v4, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "passcodeRetryInMs"

    .line 846
    sget-wide v4, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "lastUptimeMillis"

    .line 847
    sget-wide v4, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "badPasscodeTries"

    .line 848
    sget v4, Lorg/telegram/messenger/SharedConfig;->badPasscodeTries:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "autoLockIn"

    .line 849
    sget v4, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "lastPauseTime"

    .line 850
    sget v4, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "lastUpdateVersion2"

    .line 851
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->lastUpdateVersion:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "useFingerprint"

    .line 852
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->useFingerprint:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "allowScreenCapture"

    .line 853
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "pushString2"

    .line 854
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "pushType"

    .line 855
    sget v4, Lorg/telegram/messenger/SharedConfig;->pushType:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "pushStatSent"

    .line 856
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->pushStatSent:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "pushAuthKey"

    .line 857
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    if-eqz v4, :cond_1

    invoke-static {v4, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "lastLocalId"

    .line 858
    sget v4, Lorg/telegram/messenger/SharedConfig;->lastLocalId:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "passportConfigJson"

    .line 859
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->passportConfigJson:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "passportConfigHash"

    .line 860
    sget v4, Lorg/telegram/messenger/SharedConfig;->passportConfigHash:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "sortContactsByName"

    .line 861
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->sortContactsByName:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "sortFilesByName"

    .line 862
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->sortFilesByName:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "textSelectionHintShows"

    .line 863
    sget v4, Lorg/telegram/messenger/SharedConfig;->textSelectionHintShows:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "scheduledOrNoSoundHintShows"

    .line 864
    sget v4, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintShows:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "scheduledOrNoSoundHintSeenAt"

    .line 865
    sget-wide v4, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintSeenAt:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "scheduledHintShows"

    .line 866
    sget v4, Lorg/telegram/messenger/SharedConfig;->scheduledHintShows:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "scheduledHintSeenAt"

    .line 867
    sget-wide v4, Lorg/telegram/messenger/SharedConfig;->scheduledHintSeenAt:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "forwardingOptionsHintShown"

    .line 868
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->forwardingOptionsHintShown:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "replyingOptionsHintShown"

    .line 869
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->replyingOptionsHintShown:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "lockRecordAudioVideoHint"

    .line 870
    sget v4, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "storageCacheDir"

    .line 871
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

    const-string/jumbo v2, "proxyRotationEnabled"

    .line 872
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->proxyRotationEnabled:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "proxyRotationTimeout"

    .line 873
    sget v4, Lorg/telegram/messenger/SharedConfig;->proxyRotationTimeout:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 875
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 877
    :try_start_1
    new-instance v4, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v2

    invoke-direct {v4, v2}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 878
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    invoke-virtual {v2, v4}, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 879
    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v5, "appUpdate"

    .line 880
    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "appUpdateBuild"

    .line 881
    sget v5, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdateBuildVersion:I

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 882
    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_3
    :try_start_2
    const-string v2, "appUpdate"

    .line 887
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :catch_0
    :goto_3
    const-string v2, "appUpdateCheckTime"

    .line 889
    sget-wide v4, Lorg/telegram/messenger/SharedConfig;->lastUpdateCheckTime:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 891
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 893
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "hasEmailLogin"

    .line 894
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->hasEmailLogin:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "floatingDebugActive"

    .line 895
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->isFloatingDebugActive:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "record_via_sco"

    .line 896
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 897
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

    .line 899
    :try_start_3
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 901
    :goto_4
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static saveDebugConfig()V
    .locals 3

    .line 2316
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2317
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->drawActionBarShadow:Z

    const-string v2, "drawActionBarShadow"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static saveProxyList()V
    .locals 7

    .line 1932
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1933
    sget-object v1, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda6;->INSTANCE:Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda6;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1944
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v1}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    const/4 v2, -0x1

    .line 1945
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    const/4 v2, 0x2

    .line 1946
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    .line 1947
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1948
    invoke-virtual {v1, v3}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_4

    .line 1950
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 1951
    iget-object v5, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    const-string v6, ""

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move-object v5, v6

    :goto_1
    invoke-virtual {v1, v5}, Lorg/telegram/tgnet/SerializedData;->writeString(Ljava/lang/String;)V

    .line 1952
    iget v5, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    invoke-virtual {v1, v5}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 1953
    iget-object v5, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    move-object v5, v6

    :goto_2
    invoke-virtual {v1, v5}, Lorg/telegram/tgnet/SerializedData;->writeString(Ljava/lang/String;)V

    .line 1954
    iget-object v5, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    move-object v5, v6

    :goto_3
    invoke-virtual {v1, v5}, Lorg/telegram/tgnet/SerializedData;->writeString(Ljava/lang/String;)V

    .line 1955
    iget-object v5, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    if-eqz v5, :cond_3

    move-object v6, v5

    :cond_3
    invoke-virtual {v1, v6}, Lorg/telegram/tgnet/SerializedData;->writeString(Ljava/lang/String;)V

    .line 1957
    iget-wide v5, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    invoke-virtual {v1, v5, v6}, Lorg/telegram/tgnet/SerializedData;->writeInt64(J)V

    .line 1958
    iget-wide v4, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->availableCheckTime:J

    invoke-virtual {v1, v4, v5}, Lorg/telegram/tgnet/SerializedData;->writeInt64(J)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1960
    :cond_4
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-string/jumbo v4, "mainconfig"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1961
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "proxy_list"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1962
    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    return-void
.end method

.method public static setActionBarAccountSwitchEnabled(Z)V
    .locals 2

    .line 234
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isActionBarAccountSwitchEnabled:Z

    .line 235
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isActionBarAccountSwitchEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isActionBarAccountSwitchEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAlbumsIntroShown(Z)V
    .locals 2

    .line 386
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isAlbumsIntroShown:Z

    .line 387
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isAlbumsIntroShown()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isAlbumsIntroShown:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAnimationsEnabled(Z)V
    .locals 0

    .line 2236
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lorg/telegram/messenger/SharedConfig;->animationsEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public static setBotHelpTranslateEnabled(Z)V
    .locals 2

    .line 325
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isBotHelpTranslateEnabled:Z

    .line 326
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isBotHelpTranslateEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isBotHelpTranslateEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setCallsConfirmationEnabled(Z)V
    .locals 2

    .line 275
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isCallsConfirmationEnabled:Z

    .line 276
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isCallsConfirmationEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isCallsConfirmationEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setChatAttachAlertWalletBotEnabled(Z)V
    .locals 2

    .line 455
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isChatAttachAlertWalletBotEnabled:Z

    .line 456
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isChatAttachAlertWalletBotEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isChatAttachAlertWalletBotEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setChatSortingEnabledByDefault(Z)V
    .locals 2

    .line 376
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isChatSortingEnabledByDefault:Z

    .line 377
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isChatSortingEnabledByDefault()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isChatSortingEnabledByDefault:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setChatThemesEnabled(Z)V
    .locals 2

    .line 255
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isChatThemesEnabled:Z

    .line 256
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isChatThemesEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isChatThemesEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setCloudAlbumsEnabled(Z)V
    .locals 2

    .line 381
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    .line 382
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isCloudAlbumsEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setCombineMessagesEnabled(Z)V
    .locals 2

    .line 335
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isCombineMessagesEnabled:Z

    .line 336
    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->combineMessagesSettingsDidChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 337
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isCombineMessagesEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isCombineMessagesEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDebugThemeSwitchEnabled(Z)V
    .locals 2

    .line 162
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isDebugThemeSwitchEnabled:Z

    .line 163
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isDebugThemeSwitchEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isDebugThemeSwitchEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDeleteCloudConfirmationEnabled(Z)V
    .locals 2

    .line 280
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isDeleteCloudConfirmationEnabled:Z

    .line 281
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isDeleteCloudConfirmationEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isDeleteCloudConfirmationEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDialogsCompactModeEnabled(Z)V
    .locals 4

    .line 244
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    .line 245
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isDialogsCompactModeEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 246
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

.method public static setDialogsPremiumHintEnabled(Z)V
    .locals 2

    .line 450
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isDialogsPremiumHintEnabled:Z

    .line 451
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isDialogsPremiumHintEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isDialogsPremiumHintEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDistanceSystemType(I)V
    .locals 2

    .line 1853
    sput p0, Lorg/telegram/messenger/SharedConfig;->distanceSystemType:I

    .line 1854
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1855
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1856
    sget v0, Lorg/telegram/messenger/SharedConfig;->distanceSystemType:I

    const-string v1, "distanceSystemType"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1857
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1858
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->resetImperialSystemType()V

    return-void
.end method

.method public static setDontAskManageStorage(Z)V
    .locals 2

    .line 2201
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->dontAskManageStorage:Z

    .line 2202
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v0, "mainconfig"

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

.method public static setDrawerHeaderSettings(Lcom/iMe/fork/models/DrawerHeaderSettings;)V
    .locals 2

    .line 207
    invoke-virtual {p0}, Lcom/iMe/fork/models/DrawerHeaderSettings;->getTitle()Lcom/iMe/ui/drawer/DrawerAccountData;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderTitle:Lcom/iMe/ui/drawer/DrawerAccountData;

    .line 208
    invoke-virtual {p0}, Lcom/iMe/fork/models/DrawerHeaderSettings;->getSubtitle()Lcom/iMe/ui/drawer/DrawerAccountData;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderSubtitle:Lcom/iMe/ui/drawer/DrawerAccountData;

    .line 209
    invoke-virtual {p0}, Lcom/iMe/fork/models/DrawerHeaderSettings;->isShowTitle()Z

    move-result v0

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderTitleEnabled:Z

    .line 210
    invoke-virtual {p0}, Lcom/iMe/fork/models/DrawerHeaderSettings;->isShowSubtitle()Z

    move-result v0

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderSubtitleEnabled:Z

    .line 211
    invoke-virtual {p0}, Lcom/iMe/fork/models/DrawerHeaderSettings;->isShowAvatar()Z

    move-result v0

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderAvatarEnabled:Z

    .line 212
    invoke-virtual {p0}, Lcom/iMe/fork/models/DrawerHeaderSettings;->isShowArchive()Z

    move-result p0

    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderArchiveEnabled:Z

    .line 213
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 214
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedDrawerHeaderTitle()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderTitle:Lcom/iMe/ui/drawer/DrawerAccountData;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 215
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedDrawerHeaderSubtitle()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderSubtitle:Lcom/iMe/ui/drawer/DrawerAccountData;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 216
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderTitleEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderTitleEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 217
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderSubtitleEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderSubtitleEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 218
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderAvatarEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderAvatarEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 219
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderArchiveEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderArchiveEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 220
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDrawerHolidayIconType(Lcom/iMe/fork/enums/DrawerHolidayIconType;)V
    .locals 2

    .line 440
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->drawerHolidayIconType:Lcom/iMe/fork/enums/DrawerHolidayIconType;

    .line 441
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedDrawerHolidayIconType()Ljava/lang/String;

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

    .line 265
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerByTapEnabled:Z

    .line 266
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isExtendedAvatarPreviewerByTapEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerByTapEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setExtendedAvatarPreviewerEnabled(Z)V
    .locals 2

    .line 260
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerEnabled:Z

    .line 261
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isExtendedAvatarPreviewerEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFastScrollHintCount(I)V
    .locals 2

    .line 2194
    sget v0, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    if-eq v0, p0, :cond_0

    .line 2195
    sput p0, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    .line 2196
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string/jumbo v1, "mainconfig"

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

    .line 167
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isFilesOriginalNameSavingEnabled:Z

    .line 168
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isFilesOriginalNameSavingEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isFilesOriginalNameSavingEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFilesSendingPreviewAndCaptionEnabled(Z)V
    .locals 2

    .line 172
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isFilesSendingPreviewAndCaptionEnabled:Z

    .line 173
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isFilesSendingPreviewAndCaptionEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isFilesSendingPreviewAndCaptionEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFilterTabsAtBottomEnabled(Z)V
    .locals 2

    .line 361
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    .line 362
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isFilterTabsAtBottomEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setForwardingPreviewEditorHintShown(Z)V
    .locals 2

    .line 460
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isForwardingPreviewEditorHintShown:Z

    .line 461
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isForwardingPreviewEditorHintShown()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isForwardingPreviewEditorHintShown:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setHideChatKeyboardOnScrollEnabled(Z)V
    .locals 2

    .line 250
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isHideChatKeyboardOnScrollEnabled:Z

    .line 251
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isHideChatKeyboardOnScrollEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isHideChatKeyboardOnScrollEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setKeepMedia(I)V
    .locals 2

    .line 1539
    sput p0, Lorg/telegram/messenger/SharedConfig;->keepMedia:I

    .line 1540
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1541
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1542
    sget v0, Lorg/telegram/messenger/SharedConfig;->keepMedia:I

    const-string/jumbo v1, "keep_media"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1543
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLastSelectedLanguage(Ljava/lang/String;)V
    .locals 2

    .line 430
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->lastSelectedLanguage:Ljava/lang/String;

    .line 431
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->lastSelectedLanguages()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->lastSelectedLanguage:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMainActionBarMenuEnabled(Z)V
    .locals 2

    .line 239
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isMainActionBarMenuEnabled:Z

    .line 240
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isMainActionBarMenuEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isMainActionBarMenuEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMediaColumnsCount(I)V
    .locals 2

    .line 2180
    sget v0, Lorg/telegram/messenger/SharedConfig;->mediaColumnsCount:I

    if-eq v0, p0, :cond_0

    .line 2181
    sput p0, Lorg/telegram/messenger/SharedConfig;->mediaColumnsCount:I

    .line 2182
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string/jumbo v1, "mainconfig"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/SharedConfig;->mediaColumnsCount:I

    const-string/jumbo v1, "mediaColumnsCount"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setMessageQuickTranslateEnabled(Z)V
    .locals 2

    .line 320
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isMessageQuickTranslateEnabled:Z

    .line 321
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isMessageQuickTranslateEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isMessageQuickTranslateEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMultiForwardingOptionsHintShown(Z)V
    .locals 2

    .line 202
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isMultiForwardingOptionsHintShown:Z

    .line 203
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isMultiForwardingOptionsHintShown()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isMultiForwardingOptionsHintShown:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMultiReplyEnabled(Z)V
    .locals 2

    .line 315
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isMultiReplyEnabled:Z

    .line 316
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isMultiReplyEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isMultiReplyEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMusicIntroShown(Z)V
    .locals 2

    .line 411
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isMusicIntroShown:Z

    .line 412
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isMusicIntroShown()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isMusicIntroShown:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setNewAppVersionAvailable(Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1280
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1281
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1282
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

    .line 1284
    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_1
    if-nez v2, :cond_0

    .line 1287
    sget v2, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION:I

    :cond_0
    if-nez v1, :cond_1

    .line 1290
    sget-object v1, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    .line 1292
    :cond_1
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    if-nez v1, :cond_2

    return v0

    .line 1295
    :cond_2
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 1296
    sput v2, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdateBuildVersion:I

    .line 1297
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    const/4 p0, 0x1

    return p0
.end method

.method public static setNewTelegramAuthorizationRulesRead(Z)V
    .locals 2

    .line 445
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isNewTelegramAuthorizationRulesRead:Z

    .line 446
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isNewTelegramAuthorizationRulesRead()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isNewTelegramAuthorizationRulesRead:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setNoSoundHintShowed(Z)V
    .locals 2

    .line 1704
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->noSoundHintShowed:Z

    if-ne v0, p0, :cond_0

    return-void

    .line 1707
    :cond_0
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->noSoundHintShowed:Z

    .line 1708
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1709
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1710
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->noSoundHintShowed:Z

    const-string/jumbo v1, "noSoundHintShowed"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1711
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setOpenForwardingOptionsAutomaticallyEnabled(Z)V
    .locals 2

    .line 310
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isOpenForwardingOptionsAutomaticallyEnabled:Z

    .line 311
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isOpenForwardingOptionsAutomaticallyEnabled()Ljava/lang/String;

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

    .line 1237
    sput-object v0, Lorg/telegram/messenger/SharedConfig;->passportConfigMap:Ljava/util/HashMap;

    .line 1238
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->passportConfigJson:Ljava/lang/String;

    .line 1239
    sput p1, Lorg/telegram/messenger/SharedConfig;->passportConfigHash:I

    .line 1240
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 1241
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getCountryLangs()Ljava/util/HashMap;

    return-void
.end method

.method public static setPinnedPlayerMinimized(Z)V
    .locals 2

    .line 401
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerMinimized:Z

    .line 402
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isPinnedPlayerMinimized()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerMinimized:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setPinnedPlayerNightThemeEnabled(Z)V
    .locals 2

    .line 406
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerNightThemeEnabled:Z

    .line 407
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isPinnedPlayerNightThemeEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isPinnedPlayerNightThemeEnabled:Z

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

    .line 1629
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    .line 1630
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    goto :goto_0

    :cond_0
    if-ne p0, v0, :cond_1

    .line 1632
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    .line 1633
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    goto :goto_0

    .line 1635
    :cond_1
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    .line 1636
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    .line 1638
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->checkIsNextMediaFileDownloaded()V

    .line 1639
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1640
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1641
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    const-string/jumbo v1, "shuffleMusic"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1642
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    const-string/jumbo v1, "playOrderReversed"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1643
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setPlayerPinned(Z)V
    .locals 2

    .line 396
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isPlayerPinned:Z

    .line 397
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isPlayerPinned()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isPlayerPinned:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setProfileInfoHidden(Z)V
    .locals 2

    .line 197
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isProfileInfoHidden:Z

    .line 198
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isProfileInfoHidden()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isProfileInfoHidden:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setProxyButtonEnabled(Z)V
    .locals 2

    .line 187
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isProxyButtonEnabled:Z

    .line 188
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isProxyButtonEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isProxyButtonEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setReactionsEnabled(Z)V
    .locals 2

    .line 346
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isReactionsEnabled:Z

    .line 347
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isReactionsEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isReactionsEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setReactionsInSendPopupEnabled(Z)V
    .locals 2

    .line 356
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isReactionsInSendPopupEnabled:Z

    .line 357
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isReactionsInSendPopupEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isReactionsInSendPopupEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setReadAllChatsConfirmationShown(Z)V
    .locals 2

    .line 192
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isReadAllChatsConfirmationShown:Z

    .line 193
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isReadAllChatsConfirmationShown()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isReadAllChatsConfirmationShown:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setRememberLastFilterTabEnabled(Z)V
    .locals 2

    .line 371
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isRememberLastFilterTabEnabled:Z

    .line 372
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isRememberLastFilterTabEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isRememberLastFilterTabEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setRepeatMode(I)V
    .locals 2

    .line 1647
    sput p0, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 1649
    sput p0, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    .line 1651
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1652
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1653
    sget v0, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    const-string/jumbo v1, "repeatMode"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1654
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setReplyColorsEnabled(Z)V
    .locals 2

    .line 465
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isReplyColorsEnabled:Z

    .line 466
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isReplyColorsEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isReplyColorsEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSearchMessagesAsListUsed(Z)V
    .locals 2

    .line 1417
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->searchMessagesAsListUsed:Z

    .line 1418
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1419
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1420
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->searchMessagesAsListUsed:Z

    const-string/jumbo v1, "searchMessagesAsListUsed"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1421
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSecretMapPreviewType(I)V
    .locals 2

    .line 1696
    sput p0, Lorg/telegram/messenger/SharedConfig;->mapPreviewType:I

    .line 1697
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1698
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1699
    sget v0, Lorg/telegram/messenger/SharedConfig;->mapPreviewType:I

    const-string/jumbo v1, "mapPreviewType"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1700
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSelectedDialogTypesForMessagePopupReactions(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/DialogType;",
            ">;)V"
        }
    .end annotation

    .line 351
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->selectedDialogTypesForMessagePopupReactions:Ljava/util/Set;

    .line 352
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedDialogTypesForMessagePopupReactions()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDialogTypesForMessagePopupReactions:Ljava/util/Set;

    invoke-static {v1}, Lcom/iMe/fork/enums/DialogType;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

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
            "Lcom/iMe/ui/drawer/DrawerItem;",
            ">;)V"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    .line 230
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedDrawerItems()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    invoke-static {v1}, Lcom/iMe/ui/drawer/DrawerItem;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

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
            "Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;",
            ">;)V"
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->selectedExtendedAvatarPreviewerItems:Ljava/util/List;

    .line 271
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedExtendedAvatarPreviewerItems()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedExtendedAvatarPreviewerItems:Ljava/util/List;

    invoke-static {v1}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->mapEnumsToNames(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSelectedFilterTabsNotificationMode(Lcom/iMe/fork/enums/FilterTabNotificationMode;)V
    .locals 2

    .line 366
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabsNotificationMode:Lcom/iMe/fork/enums/FilterTabNotificationMode;

    .line 367
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedFilterTabsNotificationMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSelectedFilterTabsWidthMode(Lcom/iMe/fork/enums/FilterTabWidthMode;)V
    .locals 2

    .line 435
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lcom/iMe/fork/enums/FilterTabWidthMode;

    .line 436
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedFilterTabsWidthMode()Ljava/lang/String;

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
            "Lcom/iMe/fork/enums/PhotoViewerMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 341
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    .line 342
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedPhotoViewerMenuItems()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    invoke-static {v1}, Lcom/iMe/fork/enums/PhotoViewerMenuItem;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSelectedStickersSize(Lcom/iMe/fork/enums/StickersSize;)V
    .locals 2

    .line 182
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->selectedStickersSize:Lcom/iMe/fork/enums/StickersSize;

    .line 183
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedStickersSize()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedStickersSize:Lcom/iMe/fork/enums/StickersSize;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSelectedTemplatesMode(Lcom/iMe/fork/enums/TemplatesMode;)V
    .locals 2

    .line 416
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesMode:Lcom/iMe/fork/enums/TemplatesMode;

    .line 417
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedTemplatesMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSelectedTemplatesSortingType(Lcom/iMe/fork/enums/TemplatesSortingType;)V
    .locals 2

    .line 421
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesSortingType:Lcom/iMe/fork/enums/TemplatesSortingType;

    if-ne v0, p0, :cond_0

    return-void

    .line 424
    :cond_0
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesSortingType:Lcom/iMe/fork/enums/TemplatesSortingType;

    .line 425
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedTemplatesSortingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 426
    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->templatesDidChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static setSelectedVideoVoiceCamera(Lcom/iMe/fork/enums/VideoVoiceCamera;)V
    .locals 2

    .line 305
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->selectedVideoVoiceCamera:Lcom/iMe/fork/enums/VideoVoiceCamera;

    .line 306
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedVideoVoiceCamera()Ljava/lang/String;

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

    .line 285
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    .line 286
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isSendingGifConfirmationEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSendingStickerConfirmationEnabled(Z)V
    .locals 2

    .line 290
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isSendingStickerConfirmationEnabled:Z

    .line 291
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isSendingStickerConfirmationEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isSendingStickerConfirmationEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setShowDrawerHeaderArchiveEnabled(Z)V
    .locals 2

    .line 224
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderArchiveEnabled:Z

    .line 225
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderArchiveEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderArchiveEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSortCloudAlbumsByNameEnabled(Z)V
    .locals 2

    .line 391
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isSortCloudAlbumsByNameEnabled:Z

    .line 392
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isSortCloudAlbumsByNameEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isSortCloudAlbumsByNameEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSpeakWithoutHoldEnabled(Z)V
    .locals 2

    .line 295
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isSpeakWithoutHoldEnabled:Z

    .line 296
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isSpeakWithoutHoldEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isSpeakWithoutHoldEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setStickersReorderingHintUsed(Z)V
    .locals 2

    .line 1425
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->stickersReorderingHintUsed:Z

    .line 1426
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1427
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1428
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->stickersReorderingHintUsed:Z

    const-string/jumbo v1, "stickersReorderingHintUsed"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1429
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setStoriesColumnsCount(I)V
    .locals 2

    .line 2187
    sget v0, Lorg/telegram/messenger/SharedConfig;->storiesColumnsCount:I

    if-eq v0, p0, :cond_0

    .line 2188
    sput p0, Lorg/telegram/messenger/SharedConfig;->storiesColumnsCount:I

    .line 2189
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string/jumbo v1, "mainconfig"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/SharedConfig;->storiesColumnsCount:I

    const-string/jumbo v1, "storiesColumnsCount"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setStoriesIntroShown(Z)V
    .locals 2

    .line 1441
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->storiesIntroShown:Z

    .line 1442
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1443
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1444
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->storiesIntroShown:Z

    const-string/jumbo v1, "storiesIntroShown"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1445
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setStoriesReactionsLongPressHintUsed(Z)V
    .locals 2

    .line 1433
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->storyReactionsLongPressHint:Z

    .line 1434
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1435
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1436
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->storyReactionsLongPressHint:Z

    const-string/jumbo v1, "storyReactionsLongPressHint"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1437
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSuggestStickers(I)V
    .locals 2

    .line 1409
    sput p0, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    .line 1410
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1411
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1412
    sget v0, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    const-string/jumbo v1, "suggestStickers"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1413
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setTranslateInSendPopupEnabled(Z)V
    .locals 2

    .line 330
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isTranslateInSendPopupEnabled:Z

    .line 331
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isTranslateInSendPopupEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isTranslateInSendPopupEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setUseThreeLinesLayout(Z)V
    .locals 4

    .line 1670
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    .line 1671
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1672
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1673
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    const-string/jumbo v1, "useThreeLinesLayout"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1674
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1675
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

    .line 177
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isVibrationEnabled:Z

    .line 178
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isVibrationEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isVibrationEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setVideoSpeakWithoutHoldEnabled(Z)V
    .locals 2

    .line 300
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->isVideoSpeakWithoutHoldEnabled:Z

    .line 301
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isVideoSpeakWithoutHoldEnabled()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isVideoSpeakWithoutHoldEnabled:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleArchiveHidden()V
    .locals 3

    .line 1679
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    .line 1680
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1681
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1682
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    const-string v2, "archiveHidden"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1683
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleAutoplayGifs()V
    .locals 1

    const/16 v0, 0x800

    .line 1666
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->toggleFlag(I)V

    return-void
.end method

.method public static toggleAutoplayVideo()V
    .locals 1

    const/16 v0, 0x400

    .line 1687
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->toggleFlag(I)V

    return-void
.end method

.method public static toggleBigEmoji()V
    .locals 3

    .line 1612
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowBigEmoji:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowBigEmoji:Z

    .line 1613
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1614
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1615
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->allowBigEmoji:Z

    const-string v2, "allowBigEmoji"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1616
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleChatBlur()V
    .locals 1

    const/16 v0, 0x100

    .line 1825
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->toggleFlag(I)V

    return-void
.end method

.method public static toggleCustomTabs()V
    .locals 3

    .line 1743
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    .line 1744
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1745
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1746
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    const-string v2, "custom_tabs"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1747
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleDebugWebView()V
    .locals 3

    .line 1597
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    .line 1598
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 1599
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 1601
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1602
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1603
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    const-string v2, "debugWebView"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1604
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleDirectShare()V
    .locals 3

    .line 1751
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->directShare:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->directShare:Z

    .line 1752
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1753
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1754
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->directShare:Z

    const-string v2, "direct_share"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1755
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1756
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeAllDynamicShortcuts(Landroid/content/Context;)V

    .line 1757
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->buildShortcuts()V

    return-void
.end method

.method public static toggleDisableVoiceAudioEffects()V
    .locals 3

    .line 1581
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->disableVoiceAudioEffects:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->disableVoiceAudioEffects:Z

    .line 1582
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1583
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1584
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->disableVoiceAudioEffects:Z

    const-string v2, "disableVoiceAudioEffects"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1585
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleForceDisableTabletMode()V
    .locals 3

    .line 1829
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->forceDisableTabletMode:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->forceDisableTabletMode:Z

    .line 1830
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1831
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1832
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->forceDisableTabletMode:Z

    const-string v2, "forceDisableTabletMode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1833
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleInappCamera()V
    .locals 3

    .line 1837
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->inappCamera:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->inappCamera:Z

    .line 1838
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1839
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1840
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->inappCamera:Z

    const-string v2, "inappCamera"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1841
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleLoopStickers()V
    .locals 1

    const/4 v0, 0x2

    .line 1608
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->toggleFlag(I)V

    return-void
.end method

.method public static toggleNextMediaTap()V
    .locals 3

    .line 1731
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->nextMediaTap:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->nextMediaTap:Z

    .line 1732
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1733
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1734
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->nextMediaTap:Z

    const-string/jumbo v2, "next_media_on_tap"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1735
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleNoiseSupression()V
    .locals 3

    .line 1589
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->noiseSupression:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->noiseSupression:Z

    .line 1590
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1591
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1592
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->noiseSupression:Z

    const-string/jumbo v2, "noiseSupression"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1593
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static togglePauseMusicOnMedia()V
    .locals 3

    .line 1817
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnMedia:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnMedia:Z

    .line 1818
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1819
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1820
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnMedia:Z

    const-string/jumbo v2, "pauseMusicOnMedia"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1821
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static togglePauseMusicOnRecord()V
    .locals 3

    .line 1809
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    .line 1810
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1811
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1812
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    const-string/jumbo v2, "pauseMusicOnRecord"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1813
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static togglePaymentByInvoice()V
    .locals 3

    .line 559
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->payByInvoice:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->payByInvoice:Z

    .line 560
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 561
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->payByInvoice:Z

    const-string/jumbo v2, "payByInvoice"

    .line 562
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 563
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static togglePhotoViewerBlur()V
    .locals 3

    .line 575
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->photoViewerBlur:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->photoViewerBlur:Z

    .line 576
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 577
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->photoViewerBlur:Z

    const-string/jumbo v2, "photoViewerBlur"

    .line 578
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 579
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleRaiseToListen()V
    .locals 3

    .line 1723
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    .line 1724
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1725
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1726
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    const-string/jumbo v2, "raise_to_listen"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1727
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleRaiseToSpeak()V
    .locals 3

    .line 1715
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    .line 1716
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1717
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1718
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    const-string/jumbo v2, "raise_to_speak"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1719
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleRoundCamera()V
    .locals 3

    .line 2267
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->bigCameraForRound:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->bigCameraForRound:Z

    .line 2268
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2269
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->bigCameraForRound:Z

    const-string v2, "bigCameraForRound"

    .line 2270
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2271
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleRoundCamera16to9()V
    .locals 3

    .line 1845
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->roundCamera16to9:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->roundCamera16to9:Z

    .line 1846
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1847
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1848
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->roundCamera16to9:Z

    const-string/jumbo v2, "roundCamera16to9"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1849
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleSaveStreamMedia()V
    .locals 3

    .line 1801
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    .line 1802
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1803
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1804
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    const-string/jumbo v2, "saveStreamMedia"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1805
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleSortContactsByName()V
    .locals 3

    .line 1769
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->sortContactsByName:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->sortContactsByName:Z

    .line 1770
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1771
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1772
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->sortContactsByName:Z

    const-string/jumbo v2, "sortContactsByName"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1773
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleSortFilesByName()V
    .locals 3

    .line 1777
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->sortFilesByName:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->sortFilesByName:Z

    .line 1778
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1779
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1780
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->sortFilesByName:Z

    const-string/jumbo v2, "sortFilesByName"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1781
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleStreamAllVideo()V
    .locals 3

    .line 1785
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    .line 1786
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1787
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1788
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    const-string/jumbo v2, "streamAllVideo"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1789
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleStreamMedia()V
    .locals 3

    .line 1761
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    .line 1762
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1763
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1764
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    const-string/jumbo v2, "streamMedia"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1765
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleStreamMkv()V
    .locals 3

    .line 1793
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    .line 1794
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1795
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1796
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    const-string/jumbo v2, "streamMkv"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1797
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleSuggestAnimatedEmoji()V
    .locals 3

    .line 1620
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    .line 1621
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1622
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1623
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    const-string/jumbo v2, "suggestAnimatedEmoji"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1624
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleSurfaceInStories()V
    .locals 3

    .line 567
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useSurfaceInStories:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->useSurfaceInStories:Z

    .line 568
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 569
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useSurfaceInStories:Z

    const-string/jumbo v2, "useSurfaceInStories"

    .line 570
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 571
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleUpdateStickersOrderOnSend()V
    .locals 3

    .line 1547
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1548
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1549
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    const-string/jumbo v2, "updateStickersOrderOnSend"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1550
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateChatListSwipeSetting(I)V
    .locals 2

    .line 2053
    sput p0, Lorg/telegram/messenger/SharedConfig;->chatSwipeAction:I

    .line 2054
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2055
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

    .line 2072
    sput p0, Lorg/telegram/messenger/SharedConfig;->dayNightThemeSwitchHintCount:I

    .line 2073
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2074
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

    .line 2065
    sput p0, Lorg/telegram/messenger/SharedConfig;->emojiInteractionsHintCount:I

    .line 2066
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2067
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

    .line 2059
    sput p0, Lorg/telegram/messenger/SharedConfig;->messageSeenHintCount:I

    .line 2060
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2061
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/SharedConfig;->messageSeenHintCount:I

    const-string/jumbo v1, "messageSeenCount"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateStealthModeSendMessageConfirm(I)V
    .locals 2

    .line 2078
    sput p0, Lorg/telegram/messenger/SharedConfig;->stealthModeSendMessageConfirm:I

    .line 2079
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2080
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/SharedConfig;->stealthModeSendMessageConfirm:I

    const-string/jumbo v1, "stealthModeSendMessageConfirm"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateTabletConfig()V
    .locals 3

    .line 1155
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->fontSizeIsDefault:Z

    if-eqz v0, :cond_1

    .line 1156
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1157
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

    const-string/jumbo v2, "iv_font_size"

    .line 1158
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    :cond_1
    return-void
.end method

.method private static versionBiggerOrEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "\\."

    .line 1303
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1304
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 1305
    :goto_0
    array-length v2, p0

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 1306
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1307
    aget-object v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ge v2, v4, :cond_0

    return v0

    :cond_0
    if-le v2, v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method
