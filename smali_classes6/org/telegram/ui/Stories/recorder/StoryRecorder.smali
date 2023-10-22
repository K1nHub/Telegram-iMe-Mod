.class public Lorg/telegram/ui/Stories/recorder/StoryRecorder;
.super Ljava/lang/Object;
.source "StoryRecorder.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;,
        Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;,
        Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;,
        Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;,
        Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
    }
.end annotation


# static fields
.field private static instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# instance fields
.field private actionBarContainer:Landroid/widget/FrameLayout;

.field private activity:Landroid/app/Activity;

.field private afterPlayerAwait:Ljava/lang/Runnable;

.field private animatedRecording:Z

.field private applyContainerViewTranslation2:Z

.field private audioGrantedCallback:Ljava/lang/Runnable;

.field private awaitingPlayer:Z

.field private backButton:Landroid/widget/ImageView;

.field private blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

.field private cameraHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

.field private cameraViewThumb:Landroid/widget/ImageView;

.field private cameraZoom:F

.field private canChangePeer:Z

.field private captionContainer:Landroid/widget/FrameLayout;

.field private captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

.field private closingSourceProvider:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;

.field private containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

.field private containerViewBackAnimator:Landroid/animation/ValueAnimator;

.field private controlContainer:Landroid/widget/FrameLayout;

.field private currentAccount:I

.field private currentEditMode:I

.field private currentPage:I

.field private dismissProgress:F

.field private downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

.field private draftSavedHint:Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

.field private dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

.field private dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private editModeAnimator:Landroid/animation/AnimatorSet;

.field private flashButton:Landroid/widget/ImageView;

.field private flashButtonResId:I

.field private forceBackgroundVisible:Z

.field private fromGallery:Z

.field private fromRect:Landroid/graphics/RectF;

.field private fromRounding:F

.field private fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

.field private frozenDismissProgress:Ljava/lang/Float;

.field private galleryClosing:Z

.field private galleryLayouted:Ljava/lang/Runnable;

.field private galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

.field private galleryListViewOpening:Ljava/lang/Boolean;

.field private galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

.field private galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

.field private insetBottom:I

.field private insetLeft:I

.field private insetRight:I

.field private insetTop:I

.field private isBackgroundVisible:Z

.field private isShown:Z

.field private isVideo:Z

.field private lastGalleryScrollPosition:Landroid/os/Parcelable;

.field private lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field private modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

.field private muteButton:Lorg/telegram/ui/Components/RLottieImageView;

.field private muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private navbarContainer:Landroid/widget/FrameLayout;

.field private noCameraPermission:Z

.field private notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private onCloseListener:Ljava/lang/Runnable;

.field private onClosePrepareListener:Lorg/telegram/messenger/Utilities$Callback3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback3<",
            "Ljava/lang/Long;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private onFullyOpenListener:Ljava/lang/Runnable;

.field private openCloseAnimator:Landroid/animation/ValueAnimator;

.field private openProgress:F

.field private openType:I

.field private outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

.field private outputFile:Ljava/io/File;

.field private pageAnimator:Landroid/animation/AnimatorSet;

.field private paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

.field private paintViewEntitiesView:Landroid/view/View;

.field private paintViewRenderInputView:Landroid/view/View;

.field private paintViewRenderView:Lorg/telegram/ui/Components/Paint/RenderView;

.field private paintViewSelectionContainerView:Landroid/view/View;

.field private paintViewTextDim:Landroid/view/View;

.field private photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

.field private photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

.field private photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

.field private photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

.field private photoFilterViewTextureView:Landroid/view/TextureView;

.field private playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

.field private prepareClosing:Z

.field private preparingUpload:Z

.field private previewAlreadySet:Z

.field private previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

.field private previewContainer:Landroid/widget/FrameLayout;

.field private previewH:I

.field private previewHighlight:Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

.field private previewTouchable:Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

.field private previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

.field private previewW:I

.field private privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

.field private recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

.field private final recordControlDelegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

.field private recordingAnimator:Landroid/animation/AnimatorSet;

.field private requestedCameraPermission:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private savedDualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private scrollingX:Z

.field private scrollingY:Z

.field selectedDialogId:J

.field private shiftDp:I

.field private showSavedDraftHint:Z

.field private shownLimitReached:Z

.field private stoppingTakingVideo:Z

.field private takingPhoto:Z

.field private takingVideo:Z

.field private timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

.field private titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private trash:Lorg/telegram/ui/Stories/recorder/TrashView;

.field private underControls:I

.field private underStatusBar:Z

.field private videoError:Z

.field private videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

.field private videoTimelineContainerView:Landroid/widget/FrameLayout;

.field private videoTimerShown:Z

.field private videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

.field private wasGalleryOpen:Z

.field private wasSend:Z

.field private waveEffect:Lorg/telegram/ui/Stories/StoryWaveEffectView;

.field private whenOpenDone:Ljava/lang/Runnable;

.field private final windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field windowManager:Landroid/view/WindowManager;

.field private windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

.field private zoomControlAnimation:Landroid/animation/AnimatorSet;

.field private zoomControlHideRunnable:Ljava/lang/Runnable;

.field private zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;


# direct methods
.method public static synthetic $r8$lambda$0BfYqFKGB_L2MgAqMPXc9fhTiiI(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$22(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$259eoVaX7xgiAzb0VUW4iQlbqxk(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$19(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2hGcniB4O_biQroAb32xZwn7gWY(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$navigateToPreviewWithPlayerAwait$34(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2vQI_l1_2KSDE8-vxqzHJZz7n0M(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$9(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$44BtOjMNYITziK25jzBpcn5WbGk(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4syuLQNU2NkzM1EmKx90F81PZWM(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onCloseDone()V

    return-void
.end method

.method public static synthetic $r8$lambda$5TXdA7XWZZsLL8gSCSlbZtcwRng(Lorg/telegram/ui/Stories/recorder/StoryRecorder;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$animateContainerBack$35(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5v32TIsrhw-Z_QSeZS5KRts5LWg(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onResumeInternal$56()V

    return-void
.end method

.method public static synthetic $r8$lambda$6bJ_azckZs8hawVfXZcPSw3-JdI(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$showZoomControls$32()V

    return-void
.end method

.method public static synthetic $r8$lambda$7VjecNGSCOhkEtMSkQVPvcEFzSY(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$destroyCameraView$54()V

    return-void
.end method

.method public static synthetic $r8$lambda$8v7OTx-4P4NxlFzONRJocF05dzw(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createFilterPhotoView$48(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BTk0P-RsygbDqhZsOBUse-8lFeM(Lorg/telegram/ui/Stories/recorder/StoryRecorder;FLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$animateGalleryListView$39(FLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$BUpGWaTEuOmyLUh1Vqe1rWOKWiI(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$8(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DOr62jqUoJpTcCYnLdGwwFNAvFs(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createFilterPhotoView()V

    return-void
.end method

.method public static synthetic $r8$lambda$DXzzp7YDCI9EObKBteh1uDmYN1s(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$showVideoTimer$31(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$EaE5RdKfU01sM2QO4bOXry8WLFw(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$FP6ZjiMQByAZr3J8o9rFEryhZWs(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onNavigateStart$42()V

    return-void
.end method

.method public static synthetic $r8$lambda$Gofa7uimueZNSvRe31KGe_046Yg(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$18(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H6q-F0LPPFKwntW2hqolJo8qwbo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$25(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IH7EV3RE1srNxJ0I37bA8-rjPYI(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZLandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$showLimitReachedSheet$59(ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IKwKwWVMMhAnWhOfwU5Mrwdui6o(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$setCameraFlashModeIcon$30()V

    return-void
.end method

.method public static synthetic $r8$lambda$Inc60C4dJu99ghFYc_uQ68WaceQ(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createPhotoPaintView$44()V

    return-void
.end method

.method public static synthetic $r8$lambda$JyRMbtIQcBAxF4zKOmNuSS87qAE(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createGalleryListView$37(ZLjava/lang/Object;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K_g2xDE8hWPajT6aJghkMyUxlxU(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$openEdit$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$M6Bxl0AgSYoIaHvDIliD96rUAms(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MAmjinevsiTzZNDWWLjKelbPkn8(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MVyFMK3xiSqzRqAamTrU1GEmm8c(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createFilterPhotoView$46(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NYwgnwhl8gQ_kr7BgbCdgCoemIs(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NvI9Fua1xk9cuWpeFgQJS5hafuo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$showDismissEntry$51(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NxQiY192NoyL5dLo8sUeDeagVFw(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createCameraView$49()V

    return-void
.end method

.method public static synthetic $r8$lambda$PUE9r40TqgE8aVJaj0f48MgRrcQ(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createPhotoPaintView$45()V

    return-void
.end method

.method public static synthetic $r8$lambda$TQSeNd7213gqXoEg9sNu7HA5qsc(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$animateGalleryListView$40(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TWVhCBCr-F0ovk5kvBD310-SzSA(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$uploadInternal$28()V

    return-void
.end method

.method public static synthetic $r8$lambda$URfX0H9pYtxUdAgbqEKBzW04M6I(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$animateOpenTo$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VEUeCmtj1PlTJfvWsTN3Agxm2ds(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createCameraView()V

    return-void
.end method

.method public static synthetic $r8$lambda$Va6e0aWIOV6RqenWGWGZvPBLJfc(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showPremiumPeriodBulletin(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wgk8T0Jm2Rci4U9NvOJ_Gp1LpBQ(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$upload$26(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YKvJy1-VzzeRVQDYeAZOfa0D0PQ(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$animateGalleryListView$38(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YxDejv-t62tINfj464p5tlzhaLg(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createGalleryListView$36()V

    return-void
.end method

.method public static synthetic $r8$lambda$_-O93dCnzkDPnmAHbaEMB8KfEUU(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$ahoL12dxPynRWH7FNwZNwkPxW40(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createFilterPhotoView$47(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$byMOlXdWliWbz_4gVvjmQF2fQEE(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Components/FilterGLThread;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onNavigateStart$43(Lorg/telegram/ui/Components/FilterGLThread;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cF0YKJkyRfDXeNMyLVc6vAG4a5c(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$close$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$cc0oB1mb8GkwUEMUZc9uV3f4xQQ(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$7(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cfhbh5JTqV1kvHW97gbCjciCUsA(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$showDismissEntry$52(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dC8CMzvV5iH-UKDO9DsCbuongjM(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onOpenDone()V

    return-void
.end method

.method public static synthetic $r8$lambda$dlFRKkZ3s5YJvrqlZF_29-8b06w(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onRequestPermissionsResultInternal$58(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$e1EGxDA1oBF3bUM3KmyfEUGkLKI(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/tgnet/TLRPC$InputPeer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$21(Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eRJKQMjAfU-XQajJbuqQCmmBnMU(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$requestCameraPermission$55(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ec834awT3K5RAt-iiEjK09EcSXk(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$24(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gcvmC23b0IzrDbzL3DnJi81YiVY(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openPremium()V

    return-void
.end method

.method public static synthetic $r8$lambda$hWC3QXgPnwpJl4EWauE1L9Mxikg(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getUiBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jRwyAHIH0JYYpOz38cHshIgqjPc(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onRequestPermissionsResultInternal$57(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jtWV5UUjIV5obxQrBtHDRd_PRNY(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$upload$27(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$k4EDTteLkVQkx7MgnJJNSuVH7xg(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kLHe8PCSKjk3psGetzBknkPH7_g(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onNavigateStart$41()V

    return-void
.end method

.method public static synthetic $r8$lambda$kyaR2PZgVeoUQt571TgZHR4XZR0(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$20(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o8zhcGoPCtv0JUbHiKAB6oATRoM(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onCloseDone$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$pqFAobAIGMcNbVYrp1BwAMWjbqk(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$showZoomControls$33()V

    return-void
.end method

.method public static synthetic $r8$lambda$r4zSVywbg9mhzjnBZ8PLYpG7Hn0()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$sYSsg_U4PUV32RFjNwRUoa1zy4I(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$17(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$vYZP0UY7BdUACrl8n2Xw0lApZR4(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$destroyCameraView$53()V

    return-void
.end method

.method public static synthetic $r8$lambda$wWdZHij3bAVMs9IMH0604HdBBOE(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$openPremium$60(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wrIs1ChPBvLo4b9K_NBF5JtV1pw(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZLorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$23(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZLorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xt81TfsIgg0Kg3Rj67noHYpYLfQ(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$11(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zWtht50YMSyc-7BTq_Llw8Emxb4(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$uploadInternal$29(ZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$zYcg_bOq-9qkGA7t46DAR3GgBVM(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$saveLastCameraBitmap$50(Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zjI8xZITWesHn4AXRrZMDeu0q_M(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$10(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 4

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 220
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->canChangePeer:Z

    .line 553
    new-instance v1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    const/4 v1, 0x0

    .line 1409
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    const/4 v2, -0x1

    .line 1414
    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    .line 1486
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    .line 1487
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingPhoto:Z

    .line 1488
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingVideo:Z

    .line 1489
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->stoppingTakingVideo:Z

    .line 1490
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    const/4 v3, -0x3

    .line 1494
    iput v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shiftDp:I

    .line 2174
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->preparingUpload:Z

    .line 2399
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControlDelegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    .line 2703
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerShown:Z

    .line 2927
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyContainerViewTranslation2:Z

    .line 190
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    .line 191
    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    .line 193
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 194
    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 195
    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 196
    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x33

    .line 197
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x63

    .line 198
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 199
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 200
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    const v0, 0x8010100

    .line 202
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 208
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_1
    const/16 v0, 0x10

    .line 210
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const-string p2, "window"

    .line 212
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    .line 214
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->initViews()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/Float;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frozenDismissProgress:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 149
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frozenDismissProgress:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    return p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyGalleryListView()V

    return-void
.end method

.method static synthetic access$10100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createGalleryListView(Z)V

    return-void
.end method

.method static synthetic access$102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)F
    .locals 0

    .line 149
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    return p1
.end method

.method static synthetic access$10200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PlayPauseButton;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    return-object p0
.end method

.method static synthetic access$10300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/app/Activity;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$10402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 149
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->audioGrantedCallback:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$10500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/ToggleButton;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    return-object p0
.end method

.method static synthetic access$10600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/String;Z)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setCameraFlashModeIcon(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$10700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->underControls:I

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    .line 149
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->underControls:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetBottom:I

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    .line 149
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetBottom:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dismissProgress:F

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)F
    .locals 0

    .line 149
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dismissProgress:F

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateContainerBack()V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    return-object p0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/Stories/recorder/GalleryListView;
    .locals 0

    .line 149
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    return-object p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryClosing:Z

    return p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    .line 149
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryClosing:Z

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingVideo:Z

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    .line 149
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingVideo:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->scrollingY:Z

    return p0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    .line 149
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->scrollingY:Z

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->scrollingX:Z

    return p0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    .line 149
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->scrollingX:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    return p0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)F
    .locals 0

    .line 149
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    return p1
.end method

.method static synthetic access$3316(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)F
    .locals 1

    .line 149
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    return v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/ZoomControlView;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showZoomControls(ZZ)V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasGalleryOpen:Z

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 149
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isGalleryOpen()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 149
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingPhoto:Z

    return p0
.end method

.method static synthetic access$4402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    .line 149
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingPhoto:Z

    return p1
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createGalleryListView()V

    return-void
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/StoryWaveEffectView;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->waveEffect:Lorg/telegram/ui/Stories/StoryWaveEffectView;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->saveCameraFace(Z)V

    return-void
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/Boolean;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$5102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 149
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetTop:I

    return p0
.end method

.method static synthetic access$5202(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    .line 149
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetTop:I

    return p1
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetLeft:I

    return p0
.end method

.method static synthetic access$5302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    .line 149
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetLeft:I

    return p1
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetRight:I

    return p0
.end method

.method static synthetic access$5402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    .line 149
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetRight:I

    return p1
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewW:I

    return p0
.end method

.method static synthetic access$5502(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    .line 149
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewW:I

    return p1
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewH:I

    return p0
.end method

.method static synthetic access$5602(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    .line 149
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewH:I

    return p1
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->underStatusBar:Z

    return p0
.end method

.method static synthetic access$5702(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    .line 149
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->underStatusBar:Z

    return p1
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navbarContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/messenger/AnimationNotificationsLocker;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    return-object p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/ImageView;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterView;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilterMatrix()V

    return-void
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewTouchable:Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

    return-object p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterCurvesControl;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    return-object p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterBlurControl;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    return-object p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    return-object p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewHighlight:Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    return-object p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/TrashView;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->checkBackgroundVisibility()V

    return-void
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openPremium()V

    return-void
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoError:Z

    return p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    return-object p0
.end method

.method static synthetic access$7302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 0

    .line 149
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    return-object p1
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewButtons;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    return-object p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 149
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestAudioPermission()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-object p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$7702(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 149
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    return p0
.end method

.method static synthetic access$7902(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    .line 149
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromGallery:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/Runnable;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onFullyOpenListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->stoppingTakingVideo:Z

    return p0
.end method

.method static synthetic access$8002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    .line 149
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->stoppingTakingVideo:Z

    return p1
.end method

.method static synthetic access$802(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 149
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onFullyOpenListener:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-object p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->savedDualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-object p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    return p0
.end method

.method static synthetic access$8302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    .line 149
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    return p1
.end method

.method static synthetic access$8400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showVideoTimer(ZZ)V

    return-void
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintTextView;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    return-object p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/VideoTimerView;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    return-object p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 149
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestGalleryPermission()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateRecording(ZZ)V

    return-void
.end method

.method static synthetic access$8900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setAwakeLock(Z)V

    return-void
.end method

.method static synthetic access$9000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/ImageView;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/ImageView;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$9202(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 149
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$9300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;II)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onNavigateEnd(II)V

    return-void
.end method

.method static synthetic access$9402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 149
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$9500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyContainerViewTranslation2:Z

    return p0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/Runnable;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryLayouted:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$9602(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 149
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryLayouted:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$9700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyCameraView(Z)V

    return-void
.end method

.method static synthetic access$9800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 149
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;II)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onSwitchEditModeEnd(II)V

    return-void
.end method

.method private animateContainerBack()V
    .locals 4

    .line 2929
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2930
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 2931
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x0

    .line 2933
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyContainerViewTranslation2:Z

    .line 2934
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->getTranslationY1()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->getTranslationY2()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getAlpha()F

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 2935
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    .line 2936
    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;FF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2942
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x154

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2943
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2944
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$14;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2952
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private animateGalleryListView(Z)V
    .locals 7

    .line 3100
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasGalleryOpen:Z

    .line 3101
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 3105
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 3107
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createGalleryListView()V

    .line 3109
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-nez v0, :cond_2

    return-void

    .line 3114
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->firstLayout:Z

    if-eqz v0, :cond_3

    .line 3115
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryLayouted:Ljava/lang/Runnable;

    return-void

    .line 3119
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3120
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3121
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    .line 3123
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_5

    .line 3124
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 3125
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 3128
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-nez v0, :cond_7

    if-eqz p1, :cond_6

    .line 3130
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createGalleryListView()V

    .line 3132
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-nez v0, :cond_7

    return-void

    .line 3136
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 3137
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->ignoreScroll:Z

    :cond_8
    const/4 v0, 0x1

    if-eqz p1, :cond_9

    .line 3140
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->draftSavedHint:Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    if-eqz v3, :cond_9

    .line 3141
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->hide(Z)V

    .line 3144
    :cond_9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    .line 3146
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    if-eqz p1, :cond_a

    const/4 v4, 0x0

    goto :goto_0

    .line 3147
    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->top()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    int-to-float v5, v5

    const/high16 v6, 0x40200000    # 2.5f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 3148
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 3150
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    xor-int/lit8 v6, p1, 0x1

    iput-boolean v6, v5, Lorg/telegram/ui/Stories/recorder/GalleryListView;->ignoreScroll:Z

    .line 3152
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    if-nez v5, :cond_b

    move v5, v0

    goto :goto_1

    :cond_b
    move v5, v2

    :goto_1
    iput-boolean v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyContainerViewTranslation2:Z

    if-eqz p1, :cond_c

    .line 3154
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, v2, v3, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 3155
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 3156
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x43af0000    # 350.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 3157
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)V

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 3166
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_2

    :cond_c
    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v3, v5, v2

    aput v4, v5, v0

    .line 3168
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    .line 3169
    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3172
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$16;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$16;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3182
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3183
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3184
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    if-nez p1, :cond_d

    .line 3187
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    if-nez v0, :cond_d

    .line 3188
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGalleryScrollPosition:Landroid/os/Parcelable;

    :cond_d
    if-nez p1, :cond_e

    .line 3191
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->noCameraPermission:Z

    if-nez p1, :cond_e

    .line 3192
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createCameraView()V

    :cond_e
    return-void
.end method

.method private animateOpenTo(FZLjava/lang/Runnable;)V
    .locals 5

    .line 557
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 559
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    if-eqz p2, :cond_4

    .line 563
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p2}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 564
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 565
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dismissProgress:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frozenDismissProgress:Ljava/lang/Float;

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 566
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    aput v0, p2, v4

    aput p1, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    .line 567
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 577
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;

    invoke-direct {v0, p0, p1, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;FLjava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    .line 602
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSend:Z

    if-eqz p2, :cond_1

    .line 603
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xfa

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 604
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_3

    .line 606
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->getTranslationY1()F

    move-result p1

    const/16 p2, 0x14

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    goto :goto_0

    .line 610
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x190

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 611
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    .line 607
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x10e

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 608
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 614
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 616
    :cond_4
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frozenDismissProgress:Ljava/lang/Float;

    .line 617
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    .line 618
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 619
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    if-eqz p3, :cond_5

    .line 621
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 623
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->checkBackgroundVisibility()V

    :goto_2
    return-void
.end method

.method private animateRecording(ZZ)V
    .locals 11

    if-eqz p1, :cond_3

    .line 2640
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    .line 2641
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 2643
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->savedDualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_1

    .line 2644
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 2646
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_2

    .line 2647
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 2649
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_3

    .line 2650
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 2653
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-ne v0, p1, :cond_4

    return-void

    .line 2656
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordingAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    .line 2657
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 2658
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordingAnimator:Landroid/animation/AnimatorSet;

    .line 2660
    :cond_5
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    const/16 v0, 0x10

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_13

    .line 2662
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2663
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2664
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailable()Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v4

    :cond_6
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2665
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordingAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x7

    new-array v1, v1, [Landroid/animation/Animator;

    .line 2666
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v8, v7, [F

    if-eqz p1, :cond_7

    move v9, v3

    goto :goto_0

    :cond_7
    move v9, v2

    :goto_0
    aput v9, v8, v4

    .line 2667
    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v1, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v7, [F

    if-nez p1, :cond_9

    .line 2668
    iget v9, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-eqz v9, :cond_8

    goto :goto_1

    :cond_8
    move v9, v2

    goto :goto_2

    :cond_9
    :goto_1
    move v9, v3

    :goto_2
    aput v9, v8, v4

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v1, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v7, [F

    if-nez p1, :cond_b

    .line 2669
    iget v10, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v10, :cond_b

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailable()Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_3

    :cond_a
    move v10, v2

    goto :goto_4

    :cond_b
    :goto_3
    move v10, v3

    :goto_4
    aput v10, v9, v4

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v7, [F

    if-eqz p1, :cond_c

    .line 2670
    iget v10, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v10, :cond_c

    move v10, v2

    goto :goto_5

    :cond_c
    move v10, v3

    :goto_5
    aput v10, v9, v4

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v7, [F

    if-nez p1, :cond_e

    .line 2671
    iget v10, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-eqz v10, :cond_d

    goto :goto_6

    :cond_d
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    goto :goto_7

    :cond_e
    :goto_6
    move v10, v3

    :goto_7
    aput v10, v9, v4

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v7, [F

    if-nez p1, :cond_f

    .line 2672
    iget v10, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-eqz v10, :cond_10

    :cond_f
    move v2, v3

    :cond_10
    aput v2, v9, v4

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x6

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v7, [F

    if-nez p1, :cond_11

    .line 2673
    iget v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-eqz v8, :cond_12

    :cond_11
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v3, v0

    :cond_12
    aput v3, v7, v4

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v2

    .line 2666
    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2675
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordingAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$11;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$11;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2686
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordingAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x104

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2687
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordingAnimator:Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2688
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_14

    .line 2690
    :cond_13
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_14

    move v5, v3

    goto :goto_8

    :cond_14
    move v5, v2

    :goto_8
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2691
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_15

    move v5, v1

    goto :goto_9

    :cond_15
    move v5, v4

    :goto_9
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2692
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    if-nez p1, :cond_17

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-eqz v5, :cond_16

    goto :goto_a

    :cond_16
    move v5, v2

    goto :goto_b

    :cond_17
    :goto_a
    move v5, v3

    :goto_b
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2693
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    if-nez p1, :cond_19

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-eqz v5, :cond_18

    goto :goto_c

    :cond_18
    move v5, v4

    goto :goto_d

    :cond_19
    :goto_c
    move v5, v1

    :goto_d
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2694
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    if-nez p1, :cond_1b

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-eqz v5, :cond_1a

    goto :goto_e

    :cond_1a
    move v5, v2

    goto :goto_f

    :cond_1b
    :goto_e
    move v5, v3

    :goto_f
    invoke-virtual {p2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2695
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    if-nez p1, :cond_1d

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v5, :cond_1d

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailable()Z

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_10

    :cond_1c
    move v1, v4

    :cond_1d
    :goto_10
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2696
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    if-eqz p1, :cond_1e

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v1, :cond_1e

    move v1, v2

    goto :goto_11

    :cond_1e
    move v1, v3

    :goto_11
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2697
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    if-nez p1, :cond_20

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-eqz v1, :cond_1f

    goto :goto_12

    :cond_1f
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    goto :goto_13

    :cond_20
    :goto_12
    move v1, v3

    :goto_13
    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2698
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    if-nez p1, :cond_21

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-eqz v1, :cond_22

    :cond_21
    move v2, v3

    :cond_22
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2699
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    if-nez p1, :cond_23

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-eqz p1, :cond_24

    :cond_23
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float v3, p1

    :cond_24
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    :goto_14
    return-void
.end method

.method private applyFilter(Ljava/lang/Runnable;)V
    .locals 3

    .line 3951
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3957
    :cond_0
    iget-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->hasChanges()Z

    move-result v0

    or-int/2addr v0, v2

    iput-boolean v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    .line 3958
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->updateFilter(Lorg/telegram/ui/Components/PhotoFilterView;Ljava/lang/Runnable;)V

    if-nez p1, :cond_1

    .line 3959
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v0, :cond_1

    .line 3960
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 3953
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private applyFilterMatrix()V
    .locals 6

    .line 4027
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 4028
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4029
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4030
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    if-eqz v1, :cond_0

    neg-int v1, v1

    int-to-float v1, v1

    .line 4031
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 4032
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    div-int/lit8 v1, v1, 0x5a

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4033
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    .line 4034
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    .line 4035
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    .line 4036
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    .line 4037
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 4033
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 4041
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    .line 4042
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    .line 4043
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 4041
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 4045
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 4046
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    .line 4047
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    .line 4048
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 4046
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 4050
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 4051
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->invalidate()V

    :cond_1
    return-void
.end method

.method private applyPaint()V
    .locals 21

    move-object/from16 v0, p0

    .line 3879
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 3883
    :cond_0
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->clearPaint()V

    .line 3884
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->hasChanges()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    .line 3886
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 3887
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    goto :goto_0

    .line 3889
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3891
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iget v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iget v6, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBitmap(Ljava/util/ArrayList;IIZZZ)Landroid/graphics/Bitmap;

    .line 3892
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez v2, :cond_2

    .line 3893
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->getLcm()J

    move-result-wide v3

    const-wide/16 v5, 0x1d4c

    const-wide/16 v7, 0x1388

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    .line 3895
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getMasks()Ljava/util/List;

    move-result-object v1

    .line 3896
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    iput-object v4, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    .line 3897
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    .line 3898
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v1

    .line 3900
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    .line 3901
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iget v8, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iget v9, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x1

    xor-int/lit8 v12, v2, 0x1

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBitmap(Ljava/util/ArrayList;IIZZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3902
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3903
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object v3, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    .line 3907
    :cond_4
    :try_start_0
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-eqz v5, :cond_5

    .line 3908
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3912
    :catch_0
    :cond_5
    :try_start_1
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    if-eqz v5, :cond_6

    .line 3913
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3917
    :catch_1
    :cond_6
    :try_start_2
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    if-eqz v5, :cond_7

    .line 3918
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3921
    :catch_2
    :cond_7
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object v3, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    .line 3922
    iput-object v3, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    .line 3923
    iput-object v3, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    .line 3925
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v7, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v15, v7

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v6, v6

    const/16 v17, 0x57

    const/16 v18, 0x0

    const/16 v19, 0x65

    const/16 v20, 0x65

    move-object v13, v2

    move/from16 v16, v6

    invoke-static/range {v13 .. v20}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    iput-object v3, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-eqz v2, :cond_8

    .line 3926
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_8

    .line 3927
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    if-nez v1, :cond_9

    .line 3932
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v7, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iget v8, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBitmap(Ljava/util/ArrayList;IIZZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3933
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v6, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v14, v6

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v15, v5

    const/16 v16, 0x57

    const/16 v17, 0x0

    const/16 v18, 0x65

    const/16 v19, 0x65

    move-object v12, v1

    invoke-static/range {v12 .. v19}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    if-eqz v1, :cond_9

    .line 3934
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3935
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 3940
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->hasBlur()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3941
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3942
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v7, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v7, v7

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v8, v5

    const/16 v9, 0x57

    const/4 v10, 0x0

    const/16 v11, 0x65

    const/16 v12, 0x65

    move-object v5, v1

    invoke-static/range {v5 .. v12}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    if-eqz v1, :cond_a

    .line 3943
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_a

    .line 3944
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    :goto_2
    return-void
.end method

.method public static cameraBtnSpan(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5

    .line 4701
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "c"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4702
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lorg/telegram/messenger/R$drawable;->story_camera:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 v1, 0x23

    .line 4703
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v2, v1

    .line 4704
    div-int/lit8 v3, v2, 0x4

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4705
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$23;

    invoke-direct {v1, p0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$23;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v4, p0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private checkBackgroundVisibility()V
    .locals 3

    .line 4575
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dismissProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->forceBackgroundVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4576
    :goto_1
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isBackgroundVisible:Z

    if-ne v0, v1, :cond_2

    return-void

    .line 4579
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    instance-of v2, v1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v2, :cond_3

    .line 4580
    check-cast v1, Lorg/telegram/ui/LaunchActivity;

    .line 4581
    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowDrawContent(Z)V

    .line 4583
    :cond_3
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isBackgroundVisible:Z

    return-void
.end method

.method private createCameraView()V
    .locals 6

    .line 4088
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 4091
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$19;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraFace()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$19;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    const/4 v1, 0x1

    .line 4130
    iput-boolean v1, v0, Lorg/telegram/messenger/camera/CameraView;->isStory:Z

    .line 4131
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/camera/CameraView;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4132
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->initTexture()V

    .line 4133
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda64;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda64;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/camera/CameraView;->setDelegate(Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;)V

    .line 4143
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4144
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x2e

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 4145
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    const/16 v4, 0x77

    const/4 v5, -0x1

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4146
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "storyhint2"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 4147
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 4148
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 4149
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->isSavedDual()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "storydualhint"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 4150
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_4
    :goto_2
    return-void
.end method

.method private createFilterPhotoView()V
    .locals 15

    .line 3967
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 3972
    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 3973
    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-nez v0, :cond_1

    .line 3974
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 3976
    :cond_1
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda67;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda67;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_2
    move-object v6, v2

    :goto_1
    if-nez v6, :cond_3

    .line 3979
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez v0, :cond_3

    return-void

    .line 3983
    :cond_3
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getTextureView()Lorg/telegram/ui/Components/VideoEditTextureView;

    move-result-object v5

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getOrientation()I

    move-result v7

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    :goto_2
    move-object v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    iget-object v14, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v3, v0

    invoke-direct/range {v3 .. v14}, Lorg/telegram/ui/Components/PhotoFilterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/VideoEditTextureView;Landroid/graphics/Bitmap;ILorg/telegram/messenger/MediaController$SavedFilterState;Lorg/telegram/ui/Components/PaintingOverlay;IZZLorg/telegram/ui/Components/BlurringShader$BlurManager;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    .line 3984
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3985
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    if-eqz v0, :cond_5

    .line 3986
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->setFilterView(Lorg/telegram/ui/Components/PhotoFilterView;)V

    .line 3988
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getMyTextureView()Landroid/view/TextureView;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 3990
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 3992
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setFilterTextureView(Landroid/view/TextureView;Lorg/telegram/ui/Components/PhotoFilterView;)V

    .line 3993
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 3994
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 3995
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3997
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilterMatrix()V

    .line 3998
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getBlurControl()Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    if-eqz v0, :cond_8

    .line 4000
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 4002
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getCurveControl()Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    if-eqz v0, :cond_9

    .line 4004
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 4006
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->orderPreviewViews()V

    .line 4008
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getDoneTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4011
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getCancelTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4014
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4015
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4016
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0xba

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4017
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->init()V

    :cond_a
    :goto_3
    return-void
.end method

.method private createGalleryListView()V
    .locals 1

    const/4 v0, 0x0

    .line 2959
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createGalleryListView(Z)V

    return-void
.end method

.method private createGalleryListView(Z)V
    .locals 8

    .line 2980
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2984
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-object v1, v0

    move-object v2, p0

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MediaController$AlbumEntry;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    .line 3026
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->allowSearch(Z)V

    .line 3027
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->setOnBackClickListener(Ljava/lang/Runnable;)V

    .line 3031
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->setOnSelectListener(Lorg/telegram/messenger/Utilities$Callback2;)V

    .line 3084
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGalleryScrollPosition:Landroid/os/Parcelable;

    if-eqz p1, :cond_1

    .line 3085
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3087
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    const/16 v1, 0x77

    const/4 v2, -0x1

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private createPhotoPaintView()V
    .locals 27

    move-object/from16 v15, p0

    .line 3527
    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_0

    return-void

    .line 3530
    :cond_0
    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getPaintSize()Landroid/util/Pair;

    move-result-object v0

    .line 3533
    iget-object v1, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-boolean v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-nez v3, :cond_1

    iget-boolean v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v3, :cond_2

    :cond_1
    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 3534
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_3

    .line 3537
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_3
    move-object v9, v1

    .line 3542
    iget-object v1, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    iget-boolean v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-nez v5, :cond_4

    iget-boolean v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v5, :cond_5

    :cond_4
    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    if-eqz v1, :cond_5

    .line 3543
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_6

    move v14, v3

    goto :goto_1

    :cond_5
    move-object v1, v2

    :cond_6
    move v14, v4

    :goto_1
    if-nez v1, :cond_7

    .line 3549
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v10, v0

    goto :goto_2

    :cond_7
    move-object v10, v1

    .line 3552
    :goto_2
    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v20

    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v21

    .line 3553
    new-instance v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder$18;

    iget-object v7, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_8

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    if-nez v1, :cond_8

    move v5, v3

    goto :goto_3

    :cond_8
    move v5, v4

    :goto_3
    if-nez v0, :cond_9

    move-object v6, v2

    goto :goto_4

    .line 3556
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    move-object v6, v1

    :goto_4
    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_a

    move v8, v3

    goto :goto_5

    :cond_a
    move v8, v4

    :goto_5
    iget-object v11, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget v12, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    const/16 v22, 0x0

    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    .line 3564
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getOrientation()I

    move-result v23

    .line 3565
    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_b

    move-object/from16 v24, v2

    goto :goto_6

    :cond_b
    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    :goto_6
    new-instance v0, Lorg/telegram/messenger/MediaController$CropState;

    move-object/from16 v16, v0

    invoke-direct {v0}, Lorg/telegram/messenger/MediaController$CropState;-><init>()V

    const/16 v17, 0x0

    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    move-object/from16 v18, v0

    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v19, v0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v7

    move v3, v5

    move-object v4, v6

    move v5, v8

    move-object v6, v11

    move v8, v12

    move-object/from16 v11, v22

    move/from16 v12, v23

    move-object/from16 v25, v13

    move-object/from16 v13, v24

    move/from16 v26, v14

    move/from16 v14, v20

    move/from16 v15, v21

    invoke-direct/range {v0 .. v19}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$18;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;ZLjava/io/File;ZLorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;IILorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    .line 3715
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->setBlurManager(Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    .line 3716
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3717
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getRenderView()Lorg/telegram/ui/Components/Paint/RenderView;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz v1, :cond_c

    .line 3719
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v1

    move/from16 v4, v26

    iput-boolean v4, v1, Lorg/telegram/ui/Components/Paint/Painting;->hasBlur:Z

    .line 3720
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3722
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getRenderInputView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderInputView:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 3724
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3726
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getTextDimView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewTextDim:Landroid/view/View;

    if-eqz v1, :cond_e

    .line 3728
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3730
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getEntitiesView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewEntitiesView:Landroid/view/View;

    if-eqz v1, :cond_f

    .line 3732
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3734
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getSelectionEntitiesView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewSelectionContainerView:Landroid/view/View;

    if-eqz v1, :cond_10

    .line 3736
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3738
    :cond_10
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->orderPreviewViews()V

    .line 3739
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda29;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->setOnDoneButtonClickedListener(Ljava/lang/Runnable;)V

    .line 3742
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda30;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->setOnCancelButtonClickedListener(Ljava/lang/Runnable;)V

    .line 3745
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->init()V

    return-void
.end method

.method private destroyCameraView(Z)V
    .locals 2

    .line 4252
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 4254
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda40;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->saveLastCameraBitmap(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4263
    :cond_0
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda24;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->saveLastCameraBitmap(Ljava/lang/Runnable;)V

    .line 4266
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->destroy(ZLjava/lang/Runnable;)V

    .line 4267
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 4268
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    :cond_1
    :goto_0
    return-void
.end method

.method private destroyGalleryListView()V
    .locals 2

    .line 2963
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-nez v0, :cond_0

    return-void

    .line 2966
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2967
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    .line 2968
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 2969
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2970
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    .line 2972
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v1, :cond_2

    .line 2973
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 2974
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2976
    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    return-void
.end method

.method public static destroyInstance()V
    .locals 2

    .line 180
    sget-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 181
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 183
    sput-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    return-void
.end method

.method private destroyPhotoFilterView()V
    .locals 3

    .line 4056
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-nez v0, :cond_0

    return-void

    .line 4059
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->shutdown()V

    .line 4060
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->setFilterView(Lorg/telegram/ui/Components/PhotoFilterView;)V

    .line 4061
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 4062
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 4063
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 4064
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    .line 4066
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setFilterTextureView(Landroid/view/TextureView;Lorg/telegram/ui/Components/PhotoFilterView;)V

    .line 4067
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    if-eqz v0, :cond_2

    .line 4068
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 4069
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    .line 4071
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    if-eqz v0, :cond_3

    .line 4072
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 4073
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    .line 4075
    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    return-void
.end method

.method private destroyPhotoPaintView()V
    .locals 3

    .line 3782
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-nez v0, :cond_0

    return-void

    .line 3785
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onCleanupEntities()V

    .line 3787
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->shutdown()V

    .line 3788
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3789
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    .line 3790
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz v1, :cond_1

    .line 3791
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3792
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderView:Lorg/telegram/ui/Components/Paint/RenderView;

    .line 3794
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewTextDim:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 3795
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3796
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewTextDim:Landroid/view/View;

    .line 3798
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderInputView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 3799
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3800
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderInputView:Landroid/view/View;

    .line 3802
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewEntitiesView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 3803
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3804
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewEntitiesView:Landroid/view/View;

    .line 3806
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewSelectionContainerView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 3807
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3808
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewSelectionContainerView:Landroid/view/View;

    :cond_5
    return-void
.end method

.method private getCameraFace()Z
    .locals 3

    .line 4481
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "stories_camera"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getCameraThumb()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 4157
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    const-string v2, "cthumb.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4158
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 4161
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1

    .line 4163
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->icplaceholder:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getDraftSavedHint()Lorg/telegram/ui/Stories/recorder/DraftSavedHint;
    .locals 9

    .line 2167
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->draftSavedHint:Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    if-nez v0, :cond_0

    .line 2168
    new-instance v0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->draftSavedHint:Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    .line 2169
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x57

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x4e

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2171
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->draftSavedHint:Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    return-object v0
.end method

.method public static getInstance(Landroid/app/Activity;I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;
    .locals 2

    .line 169
    sget-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    if-ne v1, p0, :cond_0

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    if-eq v1, p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 170
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    const/4 v0, 0x0

    .line 171
    sput-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    .line 173
    :cond_1
    sget-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-nez v0, :cond_2

    .line 174
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;-><init>(Landroid/app/Activity;I)V

    sput-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    .line 176
    :cond_2
    sget-object p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    return-object p0
.end method

.method private getUiBlurBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 2112
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz v0, :cond_0

    .line 2113
    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getUiBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2115
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getTextureView()Lorg/telegram/ui/Components/VideoEditTextureView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2116
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getTextureView()Lorg/telegram/ui/Components/VideoEditTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoEditTextureView;->getUiBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getUsersFrom(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2123
    instance-of v1, p1, Landroid/text/Spanned;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2124
    move-object v1, p1

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Lorg/telegram/ui/Components/URLSpanUserMention;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/URLSpanUserMention;

    move v3, v2

    .line 2125
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 2126
    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 2129
    :try_start_0
    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2130
    iget v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2131
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2132
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_6

    const/4 v1, -0x1

    move v3, v1

    .line 2140
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-wide/32 v5, 0xbdb28

    if-ge v2, v4, :cond_5

    .line 2141
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0x40

    if-ne v4, v7, :cond_2

    add-int/lit8 v3, v2, 0x1

    goto :goto_2

    :cond_2
    const/16 v7, 0x20

    if-ne v4, v7, :cond_4

    if-eq v3, v1, :cond_3

    .line 2146
    invoke-interface {p1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2147
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    .line 2148
    instance-of v7, v4, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v7, :cond_3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v7, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v7, :cond_3

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v5, v7, v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2149
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v3, v1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-eq v3, v1, :cond_6

    .line 2156
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2157
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    .line 2158
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_6

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v2, :cond_6

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_6

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2159
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method private hidePhotoPaintView()V
    .locals 3

    .line 3513
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3516
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewTouchable:Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

    .line 3517
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getTopLayout()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3518
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getTopLayout()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 3519
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBottomLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3520
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBottomLayout()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3521
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getWeightChooserView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 3522
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3523
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    return-void
.end method

.method private initViews()V
    .locals 26

    move-object/from16 v8, p0

    .line 1503
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 1505
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    .line 1506
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    const/4 v12, 0x1

    if-lt v10, v11, :cond_0

    .line 1507
    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 1508
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1533
    :cond_0
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1535
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1537
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$3;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$3;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1559
    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;-><init>(Landroid/view/View;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    .line 1560
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1561
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1562
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1571
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    const/16 v13, 0x8

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1572
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1573
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navbarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1575
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$5;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$5;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    .line 1592
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    .line 1593
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1594
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda13;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1599
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1600
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    const/4 v15, -0x1

    const/16 v7, 0x77

    invoke-static {v15, v15, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1602
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    const/4 v6, 0x0

    if-ne v1, v12, :cond_1

    move v1, v6

    goto :goto_0

    :cond_1
    const v1, -0xe0e0e1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    if-lt v10, v11, :cond_2

    .line 1604
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$6;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$6;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1610
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 1612
    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda25;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {v0, v9, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    .line 1613
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$7;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-direct {v0, v8, v9, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$7;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    .line 1673
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda20;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->invalidateBlur:Ljava/lang/Runnable;

    .line 1674
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda26;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setOnTapListener(Ljava/lang/Runnable;)V

    .line 1687
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setVisibility(I)V

    .line 1688
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda34;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->whenError(Ljava/lang/Runnable;)V

    .line 1693
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v15, v15, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1695
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    invoke-static {v15, v15, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1697
    new-instance v5, Lorg/telegram/ui/Stories/recorder/StoryRecorder$8;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    move-object v0, v5

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    move-object v2, v9

    move-object/from16 v18, v3

    move-object v3, v4

    move-object v11, v5

    move-object/from16 v5, v18

    move v12, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$8;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    iput-object v11, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    .line 1748
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setAccount(I)V

    .line 1749
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda63;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda63;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setUiBlurBitmap(Lorg/telegram/messenger/Utilities$CallbackVoidReturn;)V

    .line 1750
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    .line 1756
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda59;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setOnHeightUpdate(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 1765
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda57;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->setOnPeriodUpdate(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 1772
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda56;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->setOnPremiumHint(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 1773
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda53;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setOnKeyboardOpen(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 1786
    new-instance v6, Lorg/telegram/ui/Stories/recorder/TimelineView;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    move-object v0, v6

    move-object v1, v9

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/TimelineView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    iput-object v6, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    .line 1787
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setVideoTimelineView(Lorg/telegram/ui/Stories/recorder/TimelineView;)V

    .line 1788
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1789
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setAlpha(F)V

    .line 1790
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    .line 1791
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    const/16 v19, -0x1

    const/16 v20, 0x50

    const/16 v21, 0x57

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1792
    new-instance v0, Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/VideoTimeView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    .line 1793
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1794
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    invoke-virtual {v0, v12, v12}, Lorg/telegram/ui/Stories/recorder/VideoTimeView;->show(ZZ)V

    .line 1795
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    const/16 v20, 0x19

    const/16 v21, 0x37

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1796
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    const/16 v20, 0x69

    const/16 v21, 0x57

    const/16 v25, 0x44

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1797
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    const/16 v20, -0x1

    const/16 v23, 0xc8

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1799
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    .line 1800
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrGoBack:I

    const-string v2, "AccDescrGoBack"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1801
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1802
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_photo_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1803
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v15, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1804
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    const v6, 0x20ffffff

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1805
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda18;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1811
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    const/16 v2, 0x33

    const/16 v7, 0x38

    invoke-static {v7, v7, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1813
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x14

    .line 1814
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1815
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 1816
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1817
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1818
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->RecorderNewStory:I

    const-string v2, "RecorderNewStory"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1819
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v14, v11, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1820
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setAlpha(F)V

    .line 1821
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1822
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 1823
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x90

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 1824
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v20, 0x38

    const/16 v21, 0x37

    const/16 v22, 0x47

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1826
    new-instance v5, Lorg/telegram/ui/Stories/recorder/DownloadButton;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda60;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda60;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iget v3, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v5

    move-object/from16 v16, v1

    move-object v1, v9

    move-object v14, v5

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/DownloadButton;-><init>(Landroid/content/Context;Lorg/telegram/messenger/Utilities$Callback;ILandroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v14, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    .line 1830
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x35

    invoke-static {v7, v7, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v14, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1832
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    const/high16 v2, -0x3d780000    # -68.0f

    .line 1833
    invoke-virtual {v0, v11, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    const-wide/16 v4, 0x7d0

    .line 1834
    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    .line 1835
    invoke-virtual {v0, v12}, Lorg/telegram/ui/Stories/recorder/HintView2;->setBounce(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    .line 1836
    invoke-virtual {v0, v3, v3, v12}, Lorg/telegram/ui/Stories/recorder/HintView2;->setAnimatedTextHacks(ZZZ)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1837
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v12, v3, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 1838
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/16 v20, -0x1

    const/16 v21, 0x30

    const/16 v22, 0x0

    const/16 v23, 0x34

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1840
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    .line 1841
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1842
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_3

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    if-eqz v2, :cond_3

    sget v2, Lorg/telegram/messenger/R$drawable;->media_unmute:I

    goto :goto_1

    :cond_3
    sget v2, Lorg/telegram/messenger/R$drawable;->media_mute:I

    :goto_1
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 1843
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v15, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1844
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1845
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda11;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1861
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1862
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1863
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v19, 0x38

    const/16 v20, 0x38

    const/16 v21, 0x35

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x30

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1865
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/PlayPauseButton;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    .line 1866
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1867
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1868
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1869
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda14;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1874
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    const/16 v24, 0x60

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1876
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    .line 1877
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1878
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v15, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1879
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1880
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda15;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1896
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1897
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1898
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-static {v7, v7, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1900
    new-instance v0, Lorg/telegram/ui/Stories/recorder/ToggleButton;

    sget v2, Lorg/telegram/messenger/R$drawable;->media_dual_camera2_shadow:I

    sget v3, Lorg/telegram/messenger/R$drawable;->media_dual_camera2:I

    invoke-direct {v0, v9, v2, v3}, Lorg/telegram/ui/Stories/recorder/ToggleButton;-><init>(Landroid/content/Context;II)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    .line 1901
    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda17;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1915
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailableStatic(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v6, v12

    goto :goto_2

    :cond_4
    move v6, v13

    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1916
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    invoke-static {v7, v7, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1918
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    const/high16 v1, -0x3e600000    # -20.0f

    .line 1919
    invoke-virtual {v0, v11, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    const-wide/16 v3, 0x1388

    .line 1920
    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    .line 1921
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setCloseButton(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->StoryCameraDualHint:I

    .line 1922
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda51;->INSTANCE:Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda51;

    .line 1923
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1924
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v12, v2, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 1925
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x30

    const/16 v22, 0x0

    const/16 v23, 0x34

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1927
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    const/high16 v1, 0x41e00000    # 28.0f

    const/4 v2, 0x0

    .line 1928
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    .line 1929
    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    const/4 v1, 0x1

    .line 1930
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->savedDualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1931
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    const/16 v23, 0x0

    const/16 v24, 0x34

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1933
    new-instance v0, Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    .line 1934
    invoke-direct {v8, v12, v12}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showVideoTimer(ZZ)V

    .line 1935
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    const/16 v20, 0x2d

    const/16 v21, 0x37

    const/16 v22, 0x38

    const/16 v24, 0x38

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x15

    if-lt v10, v0, :cond_5

    .line 1938
    invoke-static {v12}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    .line 1941
    :cond_5
    new-instance v0, Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/RecordControl;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    .line 1942
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControlDelegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setDelegate(Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;)V

    .line 1943
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    iget-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->startAsVideo(Z)V

    .line 1944
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    const/16 v2, 0x64

    const/16 v5, 0x57

    invoke-static {v15, v2, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1945
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 1946
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->StoryCameraHint2:I

    .line 1947
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    const/high16 v1, 0x43a00000    # 320.0f

    .line 1948
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidth(F)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    .line 1949
    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1950
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1951
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x50

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x64

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1953
    new-instance v0, Lorg/telegram/ui/Components/ZoomControlView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/ZoomControlView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    .line 1954
    iput-boolean v12, v0, Lorg/telegram/ui/Components/ZoomControlView;->enabledTouch:Z

    const/4 v1, 0x0

    .line 1955
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1956
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    const/16 v20, 0x32

    const/16 v21, 0x51

    const/16 v25, 0x6c

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1957
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda66;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda66;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ZoomControlView;->setDelegate(Lorg/telegram/ui/Components/ZoomControlView$ZoomControlViewDelegate;)V

    .line 1963
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    const/4 v1, 0x0

    iput v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    invoke-virtual {v0, v1, v12}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    .line 1965
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    .line 1966
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda54;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->setOnSwitchModeListener(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 1976
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda55;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->setOnSwitchingModeListener(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 1979
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navbarContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    invoke-static {v15, v15, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1981
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintTextView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/HintTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    .line 1982
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navbarContainer:Landroid/widget/FrameLayout;

    const/16 v20, 0x20

    const/16 v21, 0x11

    const/16 v22, 0x8

    const/16 v24, 0x8

    const/16 v25, 0x8

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1984
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    .line 1985
    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1986
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda58;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->setOnClickListener(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 2099
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navbarContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    const/16 v2, 0x34

    const/16 v3, 0x17

    invoke-static {v15, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2101
    new-instance v0, Lorg/telegram/ui/Stories/recorder/TrashView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/TrashView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    const/4 v1, 0x0

    .line 2102
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2103
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2104
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    const/16 v20, 0x78

    const/16 v21, 0x51

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x10

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2106
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v9, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewHighlight:Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    .line 2107
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x77

    invoke-static {v15, v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private isGalleryOpen()Z
    .locals 4

    .line 3091
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->scrollingY:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const v3, 0x3eb33333    # 0.35f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVisible()Z
    .locals 1

    .line 187
    sget-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$animateContainerBack$35(FFLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 2937
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 2938
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    mul-float/2addr p1, p3

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY(F)V

    .line 2939
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY2(F)V

    return-void
.end method

.method private synthetic lambda$animateGalleryListView$38(Z)V
    .locals 0

    .line 3115
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    return-void
.end method

.method private synthetic lambda$animateGalleryListView$39(FLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    if-eqz p3, :cond_0

    return-void

    .line 3161
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3162
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->ignoreScroll:Z

    const/4 p1, 0x0

    .line 3163
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 3164
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    return-void
.end method

.method private synthetic lambda$animateGalleryListView$40(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 3170
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$animateOpenTo$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 568
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    .line 569
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->checkBackgroundVisibility()V

    .line 570
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 571
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$close$1(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 533
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onClosePrepareListener:Lorg/telegram/messenger/Utilities$Callback3;

    const/4 v0, 0x0

    .line 534
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareClosing:Z

    .line 535
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    return-void
.end method

.method private synthetic lambda$createCameraView$49()V
    .locals 3

    .line 4134
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 4135
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraSession;->getNextFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    .line 4138
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v1, :cond_1

    move-object v2, v0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setCameraFlashModeIcon(Ljava/lang/String;Z)V

    .line 4139
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 4140
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$createFilterPhotoView$46(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 3976
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$createFilterPhotoView$47(Landroid/view/View;)V
    .locals 1

    const/4 p1, -0x1

    const/4 v0, 0x1

    .line 4009
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    return-void
.end method

.method private synthetic lambda$createFilterPhotoView$48(Landroid/view/View;)V
    .locals 1

    const/4 p1, -0x1

    const/4 v0, 0x1

    .line 4012
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    return-void
.end method

.method private synthetic lambda$createGalleryListView$36()V
    .locals 1

    const/4 v0, 0x0

    .line 3028
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    const/4 v0, 0x0

    .line 3029
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return-void
.end method

.method private synthetic lambda$createGalleryListView$37(ZLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p2, :cond_8

    .line 3032
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->scrollingY:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isGalleryOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 3037
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez p1, :cond_1

    return-void

    .line 3040
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createPhotoPaintView()V

    .line 3041
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    .line 3042
    instance-of p1, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz p1, :cond_2

    .line 3043
    check-cast p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3044
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object p2, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->createPhoto(Ljava/lang/String;Z)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->appearAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 3045
    :cond_2
    instance-of p1, p2, Lorg/telegram/tgnet/TLObject;

    if-eqz p1, :cond_3

    .line 3046
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    check-cast p2, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->createPhoto(Lorg/telegram/tgnet/TLObject;Z)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->appearAnimation(Landroid/view/View;)V

    .line 3048
    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    goto :goto_2

    .line 3050
    :cond_4
    instance-of p1, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz p1, :cond_5

    .line 3051
    check-cast p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3052
    iget-boolean p1, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    .line 3053
    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 3054
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p2, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 3055
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object p3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    .line 3056
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromGallery:Z

    goto :goto_1

    .line 3057
    :cond_5
    instance-of p1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_7

    .line 3058
    check-cast p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 3059
    iget-object p1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-nez p1, :cond_6

    .line 3060
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    sget p3, Lorg/telegram/messenger/R$raw;->error:I

    const-string v0, "Failed to load draft"

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->showToast(ILjava/lang/CharSequence;)V

    .line 3061
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/DraftsController;->delete(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    return-void

    .line 3065
    :cond_6
    iget-boolean p1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    .line 3066
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 3067
    iput-object p3, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    .line 3068
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromGallery:Z

    .line 3071
    :cond_7
    :goto_1
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showVideoTimer(ZZ)V

    .line 3072
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->switchMode(Z)V

    .line 3073
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/RecordControl;->startAsVideo(Z)V

    .line 3075
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    .line 3076
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    .line 3079
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-eqz p1, :cond_8

    .line 3080
    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGalleryScrollPosition:Landroid/os/Parcelable;

    .line 3081
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->getSelectedAlbum()Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    :cond_8
    :goto_3
    return-void
.end method

.method private synthetic lambda$createPhotoPaintView$44()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 3740
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    return-void
.end method

.method private synthetic lambda$createPhotoPaintView$45()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 3743
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    return-void
.end method

.method private synthetic lambda$destroyCameraView$53()V
    .locals 3

    .line 4255
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4256
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4257
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->destroy(ZLjava/lang/Runnable;)V

    .line 4258
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 4259
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    :cond_0
    return-void
.end method

.method private synthetic lambda$destroyCameraView$54()V
    .locals 2

    .line 4264
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$initViews$10(Landroid/view/View;)V
    .locals 0

    .line 1806
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    if-eqz p1, :cond_0

    return-void

    .line 1809
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onBackPressed()Z

    return-void
.end method

.method private synthetic lambda$initViews$11(Ljava/lang/Runnable;)V
    .locals 0

    .line 1827
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyPaint()V

    .line 1828
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilter(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initViews$12(Landroid/view/View;)V
    .locals 3

    .line 1846
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    if-eqz v0, :cond_0

    goto :goto_3

    .line 1849
    :cond_0
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    .line 1850
    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v1

    .line 1851
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1852
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    .line 1853
    sget p1, Lorg/telegram/messenger/R$string;->StoryOriginalSoundMuted:I

    goto :goto_0

    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->StorySoundMuted:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 1854
    sget p1, Lorg/telegram/messenger/R$string;->StoryOriginalSoundNotMuted:I

    goto :goto_1

    :cond_3
    sget p1, Lorg/telegram/messenger/R$string;->StorySoundNotMuted:I

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1855
    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v2

    .line 1851
    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1857
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1858
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setIconMuted(ZZ)V

    .line 1859
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->mute(Z)V

    :cond_4
    :goto_3
    return-void
.end method

.method private synthetic lambda$initViews$13(Landroid/view/View;)V
    .locals 2

    .line 1870
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isPlaying()Z

    move-result p1

    .line 1871
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->play(Z)V

    .line 1872
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/PlayPauseButton;->drawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    return-void
.end method

.method private synthetic lambda$initViews$14(Landroid/view/View;)V
    .locals 1

    .line 1881
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1884
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 1888
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 1889
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->getNextFlashMode()Ljava/lang/String;

    move-result-object p1

    .line 1890
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1893
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraSession;->setCurrentFlashMode(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1894
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setCameraFlashModeIcon(Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$15(Landroid/view/View;)V
    .locals 2

    .line 1902
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz p1, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1905
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toggleDual()V

    .line 1906
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isDual()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ToggleButton;->setValue(Z)V

    .line 1908
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 1909
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "storydualhint"

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1910
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->savedDualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1911
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "storysvddualhint"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1913
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->savedDualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static synthetic lambda$initViews$16()V
    .locals 4

    .line 1923
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "storydualhint"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic lambda$initViews$17(F)V
    .locals 1

    .line 1958
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v0, :cond_0

    .line 1959
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraView;->setZoom(F)V

    :cond_0
    const/4 p1, 0x1

    .line 1961
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showZoomControls(ZZ)V

    return-void
.end method

.method private synthetic lambda$initViews$18(Ljava/lang/Boolean;)V
    .locals 1

    .line 1967
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingPhoto:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingVideo:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1971
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    const/4 v0, 0x1

    .line 1972
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showVideoTimer(ZZ)V

    .line 1973
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->switchMode(Z)V

    .line 1974
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->startAsVideo(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$19(Ljava/lang/Float;)V
    .locals 1

    .line 1977
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->startAsVideoT(F)V

    return-void
.end method

.method private synthetic lambda$initViews$20(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V
    .locals 1

    .line 2041
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_0

    .line 2042
    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    :cond_0
    return-void
.end method

.method private synthetic lambda$initViews$21(Lorg/telegram/tgnet/TLRPC$InputPeer;)V
    .locals 1

    .line 2048
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2051
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    :cond_1
    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    return-void
.end method

.method private synthetic lambda$initViews$22(Ljava/lang/Runnable;)V
    .locals 0

    .line 2067
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    .line 2068
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->upload(Z)V

    return-void
.end method

.method private synthetic lambda$initViews$23(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZLorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/Runnable;)V
    .locals 3

    .line 2054
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    return-void

    .line 2057
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 2058
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    .line 2059
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->save(ILorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V

    .line 2060
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-boolean p3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->pinned:Z

    .line 2061
    iput-boolean p2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->allowScreenshots:Z

    .line 2062
    iget-object p2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 2063
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2064
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-boolean v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedPrivacy:Z

    .line 2065
    iput-object p4, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2066
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda42;

    invoke-direct {p1, p0, p5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilter(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initViews$24(Landroid/content/DialogInterface;)V
    .locals 2

    .line 2072
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    const/4 p1, 0x0

    .line 2073
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    return-void
.end method

.method private synthetic lambda$initViews$25(Ljava/lang/Integer;)V
    .locals 7

    .line 1987
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    return-void

    .line 1990
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clearFocus()V

    .line 1991
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_9

    .line 1992
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1993
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->dismiss()V

    .line 1994
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    .line 1996
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoError:Z

    if-eqz p1, :cond_2

    .line 1997
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->showFailedVideo()V

    .line 1998
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 1999
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->shareButton:Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shiftDp:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shiftDp:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    .line 2002
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isCaptionOverLimit()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2003
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 2004
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shiftDp:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shiftDp:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 2005
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->captionLimitToast()Z

    return-void

    .line 2008
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez p1, :cond_4

    .line 2009
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->checkStoryLimit()Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2010
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->active(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2011
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showLimitReachedSheet(Lorg/telegram/ui/Stories/StoriesController$StoryLimit;Z)V

    return-void

    .line 2015
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->storyEntitiesAllowed()Z

    move-result v1

    iput-boolean v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->captionEntitiesAllowed:Z

    .line 2016
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz p1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->captionEntitiesAllowed:Z

    if-nez v1, :cond_6

    .line 2017
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 2018
    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, Landroid/text/Spannable;

    .line 2019
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-interface {v1, v3, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/TextStyleSpan;

    array-length v1, v1

    if-gtz v1, :cond_5

    move-object v1, p1

    check-cast v1, Landroid/text/Spannable;

    .line 2020
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v5, Landroid/text/style/URLSpan;

    invoke-interface {v1, v3, p1, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    array-length p1, p1

    if-lez p1, :cond_6

    .line 2022
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->voip_invite:I

    sget v1, Lorg/telegram/messenger/R$string;->StoryPremiumFormatting:I

    const-string v2, "StoryPremiumFormatting"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->premiumText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    .line 2023
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shiftDp:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shiftDp:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    .line 2027
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v1, :cond_7

    .line 2028
    iput-boolean v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedPrivacy:Z

    .line 2029
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilter(Ljava/lang/Runnable;)V

    .line 2030
    invoke-direct {p0, v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->upload(Z)V

    goto/16 :goto_0

    .line 2032
    :cond_7
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedDialogId:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_8

    .line 2033
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedDialogId:J

    invoke-virtual {v0, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2035
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1, v2, v4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 2036
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    .line 2037
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setValue(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2038
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->canChangePeer:Z

    .line 2039
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setCanChangePeer(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda62;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda62;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    .line 2040
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->whenDismiss(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    .line 2045
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isEdit(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    .line 2046
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getUsersFrom(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setWarnUsers(Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda61;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda61;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    .line 2047
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->whenSelectedPeer(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda68;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda68;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    .line 2053
    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->whenSelectedRules(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$DoneCallback;Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    .line 2071
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2075
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    goto :goto_0

    .line 2077
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_a

    .line 2078
    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    .line 2079
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz p1, :cond_d

    .line 2080
    iput-boolean v3, p1, Lorg/telegram/ui/Stories/recorder/PaintView;->enteredThroughText:Z

    .line 2081
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->openPaint()V

    goto :goto_0

    .line 2083
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_b

    .line 2084
    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    .line 2085
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz p1, :cond_d

    .line 2086
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->openText()V

    .line 2087
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iput-boolean v4, p1, Lorg/telegram/ui/Stories/recorder/PaintView;->enteredThroughText:Z

    goto :goto_0

    .line 2089
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 2090
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createPhotoPaintView()V

    .line 2091
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hidePhotoPaintView()V

    .line 2092
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz p1, :cond_d

    .line 2093
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->openStickers()V

    goto :goto_0

    .line 2095
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_d

    .line 2096
    invoke-virtual {p0, v4, v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    :cond_d
    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$4(Landroid/view/View;)V
    .locals 0

    .line 1595
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->noCameraPermission:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1596
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestCameraPermission(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initViews$5()V
    .locals 2

    .line 1675
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1678
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1681
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    .line 1682
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_2

    .line 1683
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->openText()V

    .line 1684
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->enteredThroughText:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$6()V
    .locals 2

    const/4 v0, 0x1

    .line 1689
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoError:Z

    .line 1690
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->setShareEnabled(Z)V

    .line 1691
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->showFailedVideo()V

    return-void
.end method

.method private synthetic lambda$initViews$7(Ljava/lang/Integer;)V
    .locals 2

    .line 1757
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 1758
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextHeight()I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    neg-int v0, v0

    const/16 v1, 0x40

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1760
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1761
    iget v0, p1, Lorg/telegram/ui/Components/Bulletin;->tag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1762
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->updatePosition()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initViews$8(Ljava/lang/Integer;)V
    .locals 2

    .line 1766
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_0

    .line 1767
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    .line 1768
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "story_period"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initViews$9(Ljava/lang/Boolean;)V
    .locals 3

    .line 1774
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz v0, :cond_0

    .line 1775
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->onBackPressed()Z

    .line 1777
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 1778
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 1779
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1780
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1781
    iget v0, p1, Lorg/telegram/ui/Components/Bulletin;->tag:I

    if-ne v0, v2, :cond_2

    .line 1782
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->updatePosition()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$navigateToPreviewWithPlayerAwait$34(Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    .line 2818
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    .line 2819
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->afterPlayerAwait:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 2820
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->afterPlayerAwait:Ljava/lang/Runnable;

    .line 2821
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    .line 2822
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$onCloseDone$3()V
    .locals 2

    .line 668
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onNavigateStart$41()V
    .locals 2

    .line 3215
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$onNavigateStart$42()V
    .locals 4

    .line 3262
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->voip_invite:I

    sget v2, Lorg/telegram/messenger/R$string;->StoryPremiumFormatting:I

    const-string v3, "StoryPremiumFormatting"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->premiumText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onNavigateStart$43(Lorg/telegram/ui/Components/FilterGLThread;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3278
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-eqz v0, :cond_0

    .line 3279
    invoke-static {v0}, Lorg/telegram/ui/Components/FilterShaders;->getFilterShadersDelegate(Lorg/telegram/messenger/MediaController$SavedFilterState;)Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterGLThread;->setFilterGLThreadDelegate(Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResultInternal$57(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 4440
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4441
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4442
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4444
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResultInternal$58(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 4458
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4459
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4460
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4462
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onResumeInternal$56()V
    .locals 1

    const/4 v0, 0x0

    .line 4370
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestCameraPermission(Z)V

    return-void
.end method

.method private synthetic lambda$openEdit$0(Z)V
    .locals 2

    .line 500
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateOpenTo(FZLjava/lang/Runnable;)V

    .line 501
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appear(ZZ)V

    return-void
.end method

.method private synthetic lambda$openPremium$60(Landroid/content/DialogInterface;)V
    .locals 2

    .line 4627
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 4628
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestCameraPermission$55(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 4300
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4301
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4302
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4304
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$saveLastCameraBitmap$50(Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V
    .locals 9

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4177
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4178
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/16 p1, 0x50

    .line 4180
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42a00000    # 80.0f

    div-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    .line 4183
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v4, 0x7

    const/4 v5, 0x1

    .line 4185
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 4186
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    const-string v2, "cthumb.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4187
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4188
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x57

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4189
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 4190
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4196
    :catchall_0
    :cond_1
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setCameraFlashModeIcon$30()V
    .locals 2

    .line 2362
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$showDismissEntry$51(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 4208
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez p1, :cond_0

    return-void

    .line 4211
    :cond_0
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->storyEntitiesAllowed()Z

    move-result p2

    iput-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->captionEntitiesAllowed:Z

    .line 4212
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showSavedDraftHint:Z

    const/4 p1, 0x0

    .line 4213
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilter(Ljava/lang/Runnable;)V

    .line 4214
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyPaint()V

    .line 4215
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoFilterView()V

    .line 4216
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 4217
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->destroy(Z)V

    .line 4218
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    .line 4219
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 4220
    invoke-direct {p0, v0, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareThumb(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)Ljava/io/File;

    .line 4221
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object p1

    .line 4222
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-eqz v1, :cond_1

    .line 4223
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->edit(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    goto :goto_0

    .line 4225
    :cond_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->append(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :goto_0
    const/4 p1, 0x0

    .line 4227
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    return-void
.end method

.method private synthetic lambda$showDismissEntry$52(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 4231
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_0

    iget-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez p2, :cond_0

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-eqz p1, :cond_0

    .line 4232
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/DraftsController;->delete(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    const/4 p1, 0x0

    .line 4233
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 4235
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz p1, :cond_1

    .line 4236
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4238
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showLimitReachedSheet$59(ZLandroid/content/DialogInterface;)V
    .locals 2

    const/4 p2, 0x0

    .line 4561
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shownLimitReached:Z

    .line 4562
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    if-eqz p1, :cond_0

    .line 4564
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showVideoTimer$31(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 2713
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;->setRecording(ZZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showZoomControls$32()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2735
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showZoomControls(ZZ)V

    const/4 v0, 0x0

    .line 2736
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$showZoomControls$33()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2763
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showZoomControls(ZZ)V

    const/4 v0, 0x0

    .line 2764
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$upload$26(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2183
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->preparingUpload:Z

    .line 2184
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->uploadInternal(Z)V

    return-void
.end method

.method private synthetic lambda$upload$27(Z)V
    .locals 1

    .line 2181
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyPaint()V

    .line 2182
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda46;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$uploadInternal$28()V
    .locals 1

    const/4 v0, 0x1

    .line 2242
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    return-void
.end method

.method private synthetic lambda$uploadInternal$29(ZJ)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 2218
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2219
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->show()V

    .line 2220
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    .line 2222
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->closingSourceProvider:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;->getView(J)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    if-eqz p1, :cond_3

    .line 2224
    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->type:I

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    .line 2225
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->updateBackground()V

    .line 2226
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const p2, -0xe0e0e1

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2227
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2228
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    iget p2, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->rounding:F

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    .line 2229
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->hide()V

    .line 2231
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    if-le p1, v0, :cond_3

    const p1, 0x81e0

    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    .line 2235
    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->closingSourceProvider:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;

    .line 2237
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    instance-of p2, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p2, :cond_4

    .line 2238
    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    iget-object p1, p1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda31;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 2245
    :cond_4
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    goto :goto_2

    .line 2248
    :cond_5
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    :goto_2
    return-void
.end method

.method private onCloseDone()V
    .locals 5

    const/4 v0, 0x0

    .line 648
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isShown:Z

    .line 649
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    .line 650
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v1, :cond_1

    .line 651
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingVideo:Z

    if-eqz v1, :cond_0

    .line 652
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;Z)V

    .line 654
    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyCameraView(Z)V

    .line 656
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 657
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 659
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoPaintView()V

    .line 660
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoFilterView()V

    .line 661
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputFile:Ljava/io/File;

    if-eqz v1, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSend:Z

    if-nez v3, :cond_3

    .line 663
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :catch_0
    :cond_3
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputFile:Ljava/io/File;

    .line 667
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    const-wide/16 v3, 0x10

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 672
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    if-eqz v1, :cond_4

    .line 673
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->show()V

    .line 675
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->whenOpenDone:Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    .line 676
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->whenOpenDone:Ljava/lang/Runnable;

    .line 678
    :cond_5
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGalleryScrollPosition:Landroid/os/Parcelable;

    .line 679
    sget-object v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-eqz v1, :cond_6

    .line 680
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    .line 682
    :cond_6
    sput-object v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    .line 684
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onCloseListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 685
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 686
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onCloseListener:Ljava/lang/Runnable;

    .line 688
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    if-eqz v0, :cond_8

    .line 689
    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    .line 691
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    .line 692
    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    :cond_9
    return-void
.end method

.method private onNavigateEnd(II)V
    .locals 9

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 3322
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyCameraView(Z)V

    .line 3323
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3324
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3325
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3326
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3327
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateRecording(ZZ)V

    .line 3328
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setAwakeLock(Z)V

    .line 3330
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-nez p2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    const/4 v2, 0x0

    if-ne p1, v3, :cond_2

    .line 3332
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3333
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setVisibility(I)V

    .line 3334
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3335
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3336
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3337
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3339
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setVisibility(I)V

    .line 3340
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3341
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoPaintView()V

    .line 3342
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoFilterView()V

    .line 3343
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3344
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyGalleryListView()V

    .line 3345
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 3346
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3347
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 p1, 0x2

    if-ne p2, v3, :cond_5

    .line 3350
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createPhotoPaintView()V

    .line 3351
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hidePhotoPaintView()V

    .line 3352
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createFilterPhotoView()V

    .line 3353
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    if-eqz v4, :cond_3

    .line 3354
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->setAllowTouch(Z)V

    .line 3356
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v4, p1, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 3357
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 3358
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 3359
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 3360
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v5, 0x7

    invoke-virtual {v4, v5, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 3361
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v5, :cond_4

    iget-wide v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const-wide/16 v7, 0x7530

    cmp-long v5, v5, v7

    if-ltz v5, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3362
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3363
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_5
    if-nez p2, :cond_6

    .line 3365
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showSavedDraftHint:Z

    if-eqz v0, :cond_6

    .line 3366
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getDraftSavedHint()Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3367
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getDraftSavedHint()Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->show()V

    .line 3368
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->updateGalleryImage()V

    .line 3370
    :cond_6
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showSavedDraftHint:Z

    .line 3372
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    if-eqz v0, :cond_9

    if-ne p2, v3, :cond_8

    .line 3373
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    if-ne v2, v3, :cond_8

    :cond_7
    move v2, v3

    goto :goto_1

    :cond_8
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->setAllowTouch(Z)V

    .line 3379
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz v0, :cond_b

    if-eq p2, v3, :cond_a

    move v2, v3

    goto :goto_2

    :cond_a
    move v2, v1

    .line 3380
    :goto_2
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTouches:Z

    :cond_b
    if-ne p2, v3, :cond_c

    .line 3384
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    .line 3385
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    invoke-virtual {p2, v1, v1, v3, v1}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    .line 3386
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    invoke-virtual {p2, p1, v1, v3, v1}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    .line 3387
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->loadBlocklistAtFirst()V

    .line 3388
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->loadSendAs()V

    :cond_c
    return-void
.end method

.method private onNavigateStart(II)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 3198
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestCameraPermission(Z)V

    .line 3199
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3200
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    if-eqz v3, :cond_0

    .line 3201
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Stories/recorder/RecordControl;->stopRecordingLoading(Z)V

    .line 3203
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3204
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3205
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 3206
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5, v1}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;->setDuration(JZ)V

    .line 3208
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v3, :cond_1

    .line 3209
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->destroy(Z)V

    .line 3210
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    :cond_1
    const/16 v3, 0x8

    if-nez p1, :cond_3

    .line 3214
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setCameraFlashModeIcon(Ljava/lang/String;Z)V

    .line 3215
    new-instance v4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda37;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {p0, v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->saveLastCameraBitmap(Ljava/lang/Runnable;)V

    .line 3216
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->draftSavedHint:Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    if-eqz v4, :cond_2

    .line 3217
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3219
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 3220
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v4, :cond_3

    .line 3221
    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_3
    if-eq p2, v1, :cond_4

    if-ne p1, v1, :cond_c

    .line 3225
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    if-ne p2, v1, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    goto :goto_0

    :cond_5
    move-object v5, v0

    :goto_0
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->setEntry(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 3226
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v4, :cond_7

    .line 3227
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3228
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v4, :cond_6

    iget-boolean v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    if-eqz v4, :cond_6

    move v4, v1

    goto :goto_1

    :cond_6
    move v4, v2

    :goto_1
    invoke-virtual {p0, v4, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setIconMuted(ZZ)V

    .line 3229
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3230
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->play(Z)V

    .line 3231
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/PlayPauseButton;->drawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isPlaying()Z

    move-result v5

    invoke-virtual {v4, v5, v2}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    .line 3232
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v5, 0x90

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    goto :goto_2

    .line 3233
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/16 v5, 0x30

    if-eqz v4, :cond_8

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 3234
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3235
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3236
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/PlayPauseButton;->drawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v4, v1, v2}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    .line 3237
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    goto :goto_2

    .line 3239
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 3241
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3243
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3244
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setVisibility(I)V

    .line 3245
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3246
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 3249
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v5, :cond_9

    const v5, 0x15180

    goto :goto_3

    :cond_9
    iget v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    :goto_3
    invoke-virtual {v4, v5, v2}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->setPeriod(IZ)V

    .line 3250
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez v5, :cond_b

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v5, :cond_a

    iget-boolean v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v5, :cond_b

    :cond_a
    move v5, v1

    goto :goto_4

    :cond_b
    move v5, v2

    :goto_4
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->setPeriodVisible(Z)V

    :cond_c
    if-ne p2, v1, :cond_18

    .line 3253
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoError:Z

    .line 3254
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v5, :cond_d

    iget-boolean v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v5, :cond_d

    sget v5, Lorg/telegram/messenger/R$string;->Done:I

    const-string v6, "Done"

    goto :goto_5

    :cond_d
    sget v5, Lorg/telegram/messenger/R$string;->Next:I

    const-string v6, "Next"

    :goto_5
    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->setShareText(Ljava/lang/String;)V

    .line 3256
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewAlreadySet:Z

    if-nez v4, :cond_e

    .line 3257
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 3258
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v4, v5, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupAudio(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    .line 3260
    :cond_e
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewAlreadySet:Z

    .line 3261
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->storyEntitiesAllowed()Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_6

    :cond_f
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    :goto_6
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setOnPremiumMenuLockClickListener(Ljava/lang/Runnable;)V

    .line 3264
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_13

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-nez v4, :cond_10

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v4, :cond_13

    .line 3265
    :cond_10
    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-eqz v0, :cond_11

    .line 3266
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoPaintView()V

    .line 3267
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createPhotoPaintView()V

    .line 3268
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hidePhotoPaintView()V

    .line 3274
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v4, :cond_12

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-eqz v0, :cond_12

    .line 3275
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getTextureView()Lorg/telegram/ui/Components/VideoEditTextureView;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3277
    new-instance v4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda65;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda65;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/VideoEditTextureView;->setDelegate(Lorg/telegram/ui/Components/VideoEditTextureView$VideoEditTextureViewDelegate;)V

    .line 3284
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 3286
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clear()V

    .line 3288
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoError:Z

    if-nez v4, :cond_15

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isCaptionOverLimit()Z

    move-result v4

    if-nez v4, :cond_15

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/StoriesController;->hasStoryLimit()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v4, :cond_15

    iget-boolean v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v4, :cond_15

    :cond_14
    move v4, v1

    goto :goto_8

    :cond_15
    move v4, v2

    :goto_8
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->setShareEnabled(Z)V

    .line 3289
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v4, :cond_16

    iget-boolean v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    if-eqz v4, :cond_16

    sget v4, Lorg/telegram/messenger/R$drawable;->media_unmute:I

    goto :goto_9

    :cond_16
    sget v4, Lorg/telegram/messenger/R$drawable;->media_mute:I

    :goto_9
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 3290
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setVisibility(I)V

    .line 3291
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3292
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3293
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v4, :cond_17

    iget-boolean v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v4, :cond_17

    sget v4, Lorg/telegram/messenger/R$string;->RecorderEditStory:I

    goto :goto_a

    :cond_17
    sget v4, Lorg/telegram/messenger/R$string;->RecorderNewStory:I

    :goto_a
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :cond_18
    if-ne p1, v1, :cond_19

    .line 3299
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->hidePeriodPopup()V

    .line 3300
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 3302
    :cond_19
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    if-eqz p1, :cond_1a

    .line 3303
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->setAllowTouch(Z)V

    .line 3305
    :cond_1a
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 3306
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->savedDualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz p1, :cond_1b

    .line 3307
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 3309
    :cond_1b
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    .line 3311
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz p1, :cond_1c

    .line 3312
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->closeKeyboard()V

    .line 3313
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iput-boolean v1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTouches:Z

    .line 3315
    :cond_1c
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz p1, :cond_1e

    if-eq p2, v1, :cond_1d

    goto :goto_b

    :cond_1d
    move v1, v2

    .line 3316
    :goto_b
    invoke-virtual {p1, v3, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    :cond_1e
    return-void
.end method

.method private onOpenDone()V
    .locals 3

    const/4 v0, 0x1

    .line 628
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isShown:Z

    const/4 v1, 0x0

    .line 629
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSend:Z

    .line 630
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    if-ne v1, v0, :cond_0

    .line 631
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 632
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 633
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 634
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 635
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 639
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->whenOpenDone:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 640
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 641
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->whenOpenDone:Ljava/lang/Runnable;

    goto :goto_0

    .line 643
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onResumeInternal()V

    :goto_0
    return-void
.end method

.method public static onPause()V
    .locals 1

    .line 4395
    sget-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-eqz v0, :cond_0

    .line 4396
    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onPauseInternal()V

    :cond_0
    return-void
.end method

.method private onPauseInternal()V
    .locals 3

    const/4 v0, 0x0

    .line 4400
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyCameraView(Z)V

    .line 4401
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz v1, :cond_0

    .line 4402
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onPause()V

    .line 4404
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 4405
    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    :cond_1
    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 4410
    sget-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-eqz v0, :cond_0

    .line 4411
    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onRequestPermissionsResultInternal(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method private onRequestPermissionsResultInternal(I[Ljava/lang/String;[I)V
    .locals 6

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 4417
    array-length v1, p3

    if-ne v1, p2, :cond_0

    aget p3, p3, v0

    if-nez p3, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    const/16 v1, 0x6f

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    xor-int/lit8 p1, p3, 0x1

    .line 4419
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->noCameraPermission:Z

    if-eqz p3, :cond_7

    .line 4420
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez p1, :cond_7

    .line 4421
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4422
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4423
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createCameraView()V

    goto/16 :goto_1

    .line 4425
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda32;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0x72

    if-ne p1, v1, :cond_3

    if-eqz p3, :cond_7

    .line 4430
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    .line 4431
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    goto/16 :goto_1

    :cond_3
    const/16 p2, 0x70

    const-string v1, "ContactsPermissionAlertNotNow"

    const-string v3, "PermissionOpenSettings"

    const/16 v4, 0x48

    if-ne p1, p2, :cond_4

    if-nez p3, :cond_7

    .line 4435
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    .line 4436
    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, v4, v0, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PermissionNoCameraMicVideo:I

    const-string p3, "PermissionNoCameraMicVideo"

    .line 4437
    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    .line 4438
    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->ContactsPermissionAlertNotNow:I

    .line 4447
    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 4448
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 4449
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto :goto_1

    :cond_4
    const/16 p2, 0x73

    if-ne p1, p2, :cond_7

    if-nez p3, :cond_5

    .line 4453
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$raw;->permission_request_folder:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    .line 4454
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {p1, p2, v4, v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PermissionNoAudioStorageStory:I

    const-string v0, "PermissionNoAudioStorageStory"

    .line 4455
    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    .line 4456
    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->ContactsPermissionAlertNotNow:I

    .line 4465
    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 4466
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 4467
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :cond_5
    if-eqz p3, :cond_6

    .line 4469
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->audioGrantedCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_6

    .line 4470
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4472
    :cond_6
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->audioGrantedCallback:Ljava/lang/Runnable;

    :cond_7
    :goto_1
    return-void
.end method

.method public static onResume()V
    .locals 1

    .line 4360
    sget-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-eqz v0, :cond_0

    .line 4361
    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onResumeInternal()V

    :cond_0
    return-void
.end method

.method private onResumeInternal()V
    .locals 2

    .line 4367
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4369
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4370
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->whenOpenDone:Ljava/lang/Runnable;

    goto :goto_0

    .line 4372
    :cond_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestCameraPermission(Z)V

    .line 4375
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz v0, :cond_2

    .line 4376
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onResume()V

    .line 4378
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    if-eqz v0, :cond_3

    .line 4379
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->updateGalleryImage()V

    .line 4381
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewHighlight:Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    if-eqz v0, :cond_4

    .line 4382
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->updateCount()V

    .line 4384
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_5

    .line 4385
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onResume()V

    .line 4387
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v0, :cond_6

    .line 4388
    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 4391
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->load()V

    return-void
.end method

.method private onSwitchEditModeEnd(II)V
    .locals 5

    const/16 v0, 0x8

    if-nez p2, :cond_0

    .line 3855
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    if-nez p1, :cond_1

    .line 3857
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v1, :cond_1

    .line 3858
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 3861
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3862
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3863
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3864
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3866
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3867
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3869
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setAllowCropping(Z)V

    if-eqz p2, :cond_4

    if-nez p1, :cond_5

    .line 3870
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz p1, :cond_5

    .line 3871
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->onAnimationStateChanged(Z)V

    .line 3873
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    if-eqz p1, :cond_8

    if-eq p2, v2, :cond_7

    if-ne p2, v1, :cond_6

    goto :goto_1

    :cond_6
    move v2, v3

    .line 3874
    :cond_7
    :goto_1
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->setAllowTouch(Z)V

    :cond_8
    return-void
.end method

.method private onSwitchEditModeStart(II)V
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    .line 3814
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3815
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3816
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v2, :cond_0

    .line 3817
    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->clearSelection()V

    .line 3819
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3820
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3822
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v2, :cond_1

    .line 3823
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3824
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3825
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3826
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3827
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3829
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-nez p2, :cond_4

    .line 3831
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v2, :cond_4

    .line 3832
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    const/4 v2, 0x1

    if-eqz p2, :cond_5

    if-nez p1, :cond_6

    .line 3834
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v3, :cond_6

    .line 3835
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->onAnimationStateChanged(Z)V

    .line 3838
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v3, :cond_8

    .line 3839
    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    if-eqz p2, :cond_7

    move v4, v2

    goto :goto_1

    :cond_7
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    .line 3841
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    if-eq p2, v0, :cond_9

    move p2, v2

    goto :goto_2

    :cond_9
    move p2, v1

    :goto_2
    invoke-virtual {v3, p2}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    .line 3843
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    .line 3844
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz p2, :cond_a

    if-ne p1, v2, :cond_a

    const/4 p1, 0x0

    .line 3845
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilter(Ljava/lang/Runnable;)V

    .line 3847
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    if-eqz p1, :cond_b

    .line 3848
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->setAllowTouch(Z)V

    .line 3850
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    return-void
.end method

.method private openPremium()V
    .locals 4

    .line 4592
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 4593
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 4595
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz v0, :cond_1

    .line 4596
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->hidePeriodPopup()V

    .line 4598
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$21;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$21;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    .line 4626
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4631
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return-void
.end method

.method private orderPreviewViews()V
    .locals 1

    .line 3749
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz v0, :cond_0

    .line 3750
    invoke-virtual {v0}, Landroid/view/TextureView;->bringToFront()V

    .line 3752
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderInputView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3753
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 3755
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewTextDim:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 3756
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 3758
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewEntitiesView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 3759
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 3761
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewSelectionContainerView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 3762
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 3764
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    if-eqz v0, :cond_5

    .line 3765
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 3767
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    if-eqz v0, :cond_6

    .line 3768
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 3770
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    if-eqz v0, :cond_7

    .line 3771
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 3773
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    if-eqz v0, :cond_8

    .line 3774
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 3776
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewHighlight:Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    if-eqz v0, :cond_9

    .line 3777
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    :cond_9
    return-void
.end method

.method private premiumText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .line 4635
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method private prepareThumb(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)Ljava/io/File;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 2260
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    if-lez v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_7

    :cond_0
    if-eqz p2, :cond_1

    .line 2266
    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    :goto_0
    if-eqz v1, :cond_2

    .line 2268
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    if-eqz p2, :cond_3

    const v1, 0x3eaaaaab

    goto :goto_1

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2273
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 2274
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 2275
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2276
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2278
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 2279
    invoke-virtual {v4, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2280
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2281
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 2283
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 2285
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getTextureView()Lorg/telegram/ui/Components/VideoEditTextureView;

    move-result-object v6

    .line 2286
    iget-boolean v7, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v7, :cond_5

    if-eqz v6, :cond_5

    .line 2287
    invoke-virtual {v6}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2288
    invoke-virtual {v6, v0}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2290
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 2291
    invoke-virtual {v6, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, v6

    .line 2293
    :cond_4
    invoke-virtual {v4, v7, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 2294
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 2297
    :cond_5
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    .line 2299
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2300
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    int-to-float v7, v2

    .line 2301
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 2302
    invoke-virtual {v4, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2303
    invoke-virtual {v4, v0, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2304
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 2305
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2307
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2311
    :cond_6
    :goto_2
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-eqz v0, :cond_7

    .line 2313
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2314
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v2

    .line 2315
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v2, v7

    .line 2316
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2317
    invoke-virtual {v4, v0, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2318
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 2319
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 2321
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2325
    :cond_7
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_8

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz v0, :cond_8

    .line 2326
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 2327
    invoke-virtual {v4, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2328
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iput-boolean v5, v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->drawForThumb:Z

    .line 2329
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2330
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iput-boolean v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->drawForThumb:Z

    .line 2331
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    const/16 v0, 0x28

    const/16 v1, 0x16

    .line 2334
    invoke-static {v3, v0, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2336
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v1

    .line 2338
    :try_start_2
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-eqz p2, :cond_9

    const/16 v4, 0x5f

    goto :goto_4

    :cond_9
    const/16 v4, 0x63

    :goto_4
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v2, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v2

    .line 2340
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2342
    :goto_5
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz p2, :cond_a

    .line 2345
    iput-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    goto :goto_6

    .line 2347
    :cond_a
    iput-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    .line 2349
    :goto_6
    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    return-object v1

    :cond_b
    :goto_7
    return-object v0
.end method

.method private requestAudioPermission()Z
    .locals 4

    .line 4349
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    const-string v2, "android.permission.RECORD_AUDIO"

    .line 4350
    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_1

    .line 4352
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x70

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return v3

    :cond_1
    return v1
.end method

.method private requestCameraPermission(Z)V
    .locals 6

    .line 4281
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestedCameraPermission:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4284
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->noCameraPermission:Z

    .line 4286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    const-string v1, "android.permission.CAMERA"

    .line 4287
    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->noCameraPermission:Z

    if-eqz v0, :cond_3

    .line 4289
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->story_camera:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4290
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const v4, 0x3dffffff    # 0.12499999f

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4291
    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, -0xddddde

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v3, v4, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x40

    .line 4292
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 4293
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4294
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4295
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    const/16 v2, 0x48

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    .line 4296
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->PermissionNoCameraWithHint:I

    const-string v1, "PermissionNoCameraWithHint"

    .line 4297
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    const-string v1, "PermissionOpenSettings"

    .line 4298
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->ContactsPermissionAlertNotNow:I

    const-string v1, "ContactsPermissionAlertNotNow"

    .line 4307
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 4308
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 4309
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    .line 4312
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6f

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 4313
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestedCameraPermission:Z

    .line 4317
    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->noCameraPermission:Z

    if-nez p1, :cond_5

    .line 4318
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4319
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createCameraView()V

    goto :goto_1

    .line 4321
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private requestGalleryPermission()Z
    .locals 6

    .line 4327
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 4329
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/16 v4, 0x72

    const/4 v5, 0x0

    if-lt v2, v3, :cond_2

    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    .line 4331
    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    .line 4332
    invoke-virtual {v0, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v5, v1

    :cond_1
    if-eqz v5, :cond_4

    .line 4335
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x17

    if-lt v2, v3, :cond_4

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 4338
    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    move v5, v1

    :cond_3
    if-eqz v5, :cond_4

    .line 4340
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_4
    :goto_0
    xor-int/lit8 v0, v5, 0x1

    return v0

    :cond_5
    return v1
.end method

.method private saveCameraFace(Z)V
    .locals 2

    .line 4477
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "stories_camera"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveLastCameraBitmap(Ljava/lang/Runnable;)V
    .locals 3

    .line 4168
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4172
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    .line 4173
    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4174
    sget-object v1, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda41;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method private setAwakeLock(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2625
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 2627
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2630
    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2632
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private setCameraFlashModeIcon(Ljava/lang/String;Z)V
    .locals 5

    .line 2354
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2355
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isDual()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    :cond_2
    const/4 v0, 0x0

    if-nez p1, :cond_4

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    .line 2360
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2361
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda28;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2363
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 2365
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2366
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    return-void

    :cond_4
    const/4 v1, -0x1

    .line 2371
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xddf

    const/4 v4, 0x1

    if-eq v2, v3, :cond_7

    const v3, 0x1ad6f

    if-eq v2, v3, :cond_6

    const v3, 0x2dddaf

    if-eq v2, v3, :cond_5

    goto :goto_1

    :cond_5
    const-string v2, "auto"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    move v1, v4

    goto :goto_1

    :cond_6
    const-string v2, "off"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 v1, 0x3

    goto :goto_1

    :cond_7
    const-string v2, "on"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    move v1, v0

    :cond_8
    :goto_1
    if-eqz v1, :cond_a

    if-eq v1, v4, :cond_9

    .line 2382
    sget p1, Lorg/telegram/messenger/R$drawable;->media_photo_flash_off2:I

    .line 2383
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashOff:I

    const-string v3, "AccDescrCameraFlashOff"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2377
    :cond_9
    sget p1, Lorg/telegram/messenger/R$drawable;->media_photo_flash_auto2:I

    .line 2378
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashAuto:I

    const-string v3, "AccDescrCameraFlashAuto"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2373
    :cond_a
    sget p1, Lorg/telegram/messenger/R$drawable;->media_photo_flash_on2:I

    .line 2374
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashOn:I

    const-string v3, "AccDescrCameraFlashOn"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    if-eqz p2, :cond_b

    .line 2386
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButtonResId:I

    if-eq v1, p1, :cond_b

    .line 2387
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButtonResId:I

    invoke-static {v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;I)V

    goto :goto_3

    .line 2389
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButtonResId:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2391
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_c

    .line 2393
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    .line 2395
    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_4
    return-void
.end method

.method private showDismissEntry()V
    .locals 4

    .line 4203
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4204
    sget v1, Lorg/telegram/messenger/R$string;->DiscardChanges:I

    const-string v2, "DiscardChanges"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4205
    sget v1, Lorg/telegram/messenger/R$string;->PhotoEditorDiscardAlert:I

    const-string v2, "PhotoEditorDiscardAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4206
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v2, :cond_1

    .line 4207
    iget-boolean v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-eqz v1, :cond_0

    const-string v1, "StoryKeepDraft"

    goto :goto_0

    :cond_0
    const-string v1, "StorySaveDraft"

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4230
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-eqz v2, :cond_2

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v1, :cond_2

    const-string v1, "StoryDeleteDraft"

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->Discard:I

    const-string v2, "Discard"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4241
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4242
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 4243
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 4244
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    .line 4245
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 4246
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4247
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/16 v2, 0x33

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v1, v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private showLimitReachedSheet(Lorg/telegram/ui/Stories/StoriesController$StoryLimit;Z)V
    .locals 7

    .line 4529
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shownLimitReached:Z

    if-eqz v0, :cond_0

    return-void

    .line 4532
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$20;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    .line 4559
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->getLimitReachedType()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4560
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4567
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 p2, 0x7

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 4568
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shownLimitReached:Z

    .line 4569
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private showPremiumPeriodBulletin(I)V
    .locals 5

    .line 4639
    div-int/lit16 p1, p1, 0xe10

    .line 4641
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->make(Landroid/content/Context;Lorg/telegram/ui/Components/Bulletin$Delegate;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    move-result-object v0

    .line 4652
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;->getLayout()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, -0x2

    .line 4654
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 4655
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 4656
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    const/16 v3, 0x38

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4657
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;->updateLayout()V

    :cond_0
    const/4 v1, 0x1

    .line 4659
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;->setTouchable(Z)V

    .line 4660
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$raw;->fire_on:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "StoryPeriodPremium"

    .line 4661
    invoke-static {v4, p1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->premiumText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v3, 0x3

    invoke-virtual {v0, v2, p1, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 4662
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private showVideoTimer(ZZ)V
    .locals 2

    .line 2705
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerShown:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2709
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerShown:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 2711
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x15e

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2715
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 2717
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 2718
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    if-nez p1, :cond_4

    .line 2720
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;->setRecording(ZZ)V

    :cond_4
    :goto_2
    return-void
.end method

.method private showZoomControls(ZZ)V
    .locals 8

    .line 2729
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-wide/16 v0, 0x7d0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    if-nez p1, :cond_4

    :cond_1
    if-eqz p1, :cond_3

    .line 2731
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlHideRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 2732
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2734
    :cond_2
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda23;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlHideRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    return-void

    .line 2741
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_5

    .line 2742
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2744
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2745
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xb4

    .line 2746
    invoke-virtual {p2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    .line 2748
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2750
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v2, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    if-eqz p1, :cond_8

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    :goto_1
    aput v7, v2, p2

    invoke-static {v5, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v4, p2

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2751
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$12;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$12;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2760
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    if-eqz p1, :cond_9

    .line 2762
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda39;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlHideRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_9
    return-void
.end method

.method private upload(Z)V
    .locals 2

    .line 2176
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->preparingUpload:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2179
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->preparingUpload:Z

    .line 2180
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private uploadInternal(Z)V
    .locals 5

    .line 2190
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2191
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    return-void

    .line 2194
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoFilterView()V

    .line 2195
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareThumb(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)Ljava/io/File;

    .line 2196
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2197
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v1

    iput-boolean v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedCaption:Z

    .line 2198
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object v0, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    .line 2199
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Stories/StoriesController;->uploadStory(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    .line 2200
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-eqz v2, :cond_1

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v0, :cond_1

    .line 2201
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/DraftsController;->delete(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 2203
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->cancelCheckStickers()V

    .line 2205
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v2, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    .line 2206
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v0, :cond_2

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    if-nez v4, :cond_2

    .line 2207
    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$InputPeer;)J

    move-result-wide v2

    :cond_2
    const/4 v0, 0x0

    .line 2209
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 2211
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSend:Z

    .line 2212
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->forceBackgroundVisible:Z

    .line 2213
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->checkBackgroundVisibility()V

    .line 2216
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda50;

    invoke-direct {v0, p0, p1, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZJ)V

    .line 2251
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->closingSourceProvider:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;

    if-eqz p1, :cond_3

    .line 2252
    invoke-interface {p1, v2, v3, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;->preLayout(JLjava/lang/Runnable;)V

    goto :goto_0

    .line 2254
    :cond_3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2256
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x2

    const-string v1, "storyhint2"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public addNotificationObservers()V
    .locals 2

    .line 4516
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4517
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4518
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesLimitUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public canChangePeer(Z)Lorg/telegram/ui/Stories/recorder/StoryRecorder;
    .locals 0

    .line 4696
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->canChangePeer:Z

    return-object p0
.end method

.method public close(Z)V
    .locals 7

    .line 510
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isShown:Z

    if-nez v0, :cond_0

    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 515
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->dismiss()V

    .line 516
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    .line 519
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditSaved:Z

    if-nez v3, :cond_5

    .line 520
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSend:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v3, :cond_3

    :cond_2
    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 521
    :cond_3
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    .line 523
    :cond_4
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->destroy(Z)V

    .line 525
    :cond_5
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 527
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onClosePrepareListener:Lorg/telegram/messenger/Utilities$Callback3;

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v4, :cond_7

    .line 528
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareClosing:Z

    if-eqz v1, :cond_6

    return-void

    .line 531
    :cond_6
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareClosing:Z

    .line 532
    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->release()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda48;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSend:Z

    .line 536
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 532
    invoke-interface {v0, v1, v2, p1}, Lorg/telegram/messenger/Utilities$Callback3;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 540
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    .line 541
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_8
    const/4 v0, 0x0

    .line 544
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {p0, v0, p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateOpenTo(FZLjava/lang/Runnable;)V

    .line 545
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    if-ne p1, v3, :cond_9

    .line 546
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 547
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appear(ZZ)V

    .line 550
    :cond_9
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->removeNotificationObservers()V

    return-void
.end method

.method public closeToWhenSent(Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;)Lorg/telegram/ui/Stories/recorder/StoryRecorder;
    .locals 0

    .line 397
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->closingSourceProvider:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;

    return-object p0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 4486
    sget p2, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    const/4 p3, 0x0

    if-ne p1, p2, :cond_2

    .line 4487
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    if-eqz p1, :cond_0

    .line 4488
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->updateGalleryImage()V

    .line 4490
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz p1, :cond_7

    sget-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    .line 4491
    :goto_0
    sget-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_7

    .line 4492
    sget-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 4493
    iget p2, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget v1, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    if-ne p2, v1, :cond_1

    iget-boolean p2, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->videoOnly:Z

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->videoOnly:Z

    if-ne p2, v0, :cond_1

    .line 4494
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 4499
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    if-ne p1, p2, :cond_3

    .line 4500
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    if-eqz p1, :cond_7

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showSavedDraftHint:Z

    if-nez p2, :cond_7

    .line 4501
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->updateGalleryImage()V

    goto :goto_1

    .line 4503
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesLimitUpdate:I

    if-ne p1, p2, :cond_7

    .line 4504
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_6

    .line 4505
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoError:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isCaptionOverLimit()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->hasStoryLimit()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_5

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v0, :cond_5

    :cond_4
    move p3, p2

    :cond_5
    invoke-virtual {p1, p3}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->setShareEnabled(Z)V

    goto :goto_1

    :cond_6
    if-nez p1, :cond_7

    .line 4507
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->checkStoryLimit()Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 4508
    iget p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->active(I)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 4509
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showLimitReachedSheet(Lorg/telegram/ui/Stories/StoriesController$StoryLimit;Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1498
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public invalidateBlur()V
    .locals 1

    .line 4021
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz v0, :cond_0

    .line 4022
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->invalidateBlur()V

    :cond_0
    return-void
.end method

.method public navigateTo(IZ)V
    .locals 12

    .line 2833
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2838
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    .line 2840
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 2841
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2844
    :cond_1
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onNavigateStart(II)V

    .line 2845
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-ne p1, v4, :cond_2

    .line 2846
    iget v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    cmpl-float v5, v5, v3

    if-lez v5, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_0
    invoke-virtual {v1, v5, p2}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appear(ZZ)V

    :cond_3
    if-nez p1, :cond_4

    .line 2848
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showVideoTimer(ZZ)V

    if-eq p1, v4, :cond_5

    .line 2850
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    invoke-virtual {v1, v2, p2}, Lorg/telegram/ui/Stories/recorder/VideoTimeView;->show(ZZ)V

    :cond_5
    const/16 v1, 0xc

    const/16 v5, 0x30

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1a

    .line 2853
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    .line 2855
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2857
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v7, :cond_7

    .line 2858
    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v4, [F

    if-nez p1, :cond_6

    move v10, v6

    goto :goto_2

    :cond_6
    move v10, v3

    :goto_2
    aput v10, v9, v2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2860
    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2861
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v4, [F

    if-nez p1, :cond_8

    move v10, v6

    goto :goto_3

    :cond_8
    move v10, v3

    :goto_3
    aput v10, v9, v2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2862
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v4, [F

    if-ne p1, v4, :cond_9

    move v10, v6

    goto :goto_4

    :cond_9
    move v10, v3

    :goto_4
    aput v10, v9, v2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2864
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v4, [F

    if-nez p1, :cond_a

    move v10, v6

    goto :goto_5

    :cond_a
    move v10, v3

    :goto_5
    aput v10, v9, v2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2865
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v4, [F

    if-nez p1, :cond_b

    move v10, v6

    goto :goto_6

    :cond_b
    move v10, v3

    :goto_6
    aput v10, v9, v2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2866
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v4, [F

    if-nez p1, :cond_c

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailable()Z

    move-result v10

    if-eqz v10, :cond_c

    move v10, v6

    goto :goto_7

    :cond_c
    move v10, v3

    :goto_7
    aput v10, v9, v2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2867
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v4, [F

    const/16 v10, 0x18

    if-nez p1, :cond_d

    move v11, v3

    goto :goto_8

    :cond_d
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    :goto_8
    aput v11, v9, v2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2868
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v4, [F

    if-nez p1, :cond_e

    move v11, v6

    goto :goto_9

    :cond_e
    move v11, v3

    :goto_9
    aput v11, v9, v2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2869
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v4, [F

    if-nez p1, :cond_f

    move v10, v3

    goto :goto_a

    :cond_f
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    :goto_a
    aput v10, v9, v2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2870
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2871
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v4, [F

    aput v6, v9, v2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2872
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v4, [F

    if-nez p1, :cond_10

    iget-boolean v10, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-eqz v10, :cond_10

    move v10, v6

    goto :goto_b

    :cond_10
    move v10, v3

    :goto_b
    aput v10, v9, v2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2873
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v4, [F

    if-ne p1, v4, :cond_11

    move v10, v6

    goto :goto_c

    :cond_11
    move v10, v3

    :goto_c
    aput v10, v9, v2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2874
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v4, [F

    if-ne p1, v4, :cond_12

    move v1, v3

    goto :goto_d

    :cond_12
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    :goto_d
    aput v1, v9, v2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2875
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    if-ne p1, v4, :cond_13

    move v9, v6

    goto :goto_e

    :cond_13
    move v9, v3

    :goto_e
    aput v9, v8, v2

    invoke-static {v1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2877
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    if-ne p1, v4, :cond_14

    move v9, v6

    goto :goto_f

    :cond_14
    move v9, v3

    :goto_f
    aput v9, v8, v2

    invoke-static {v1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2879
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    if-ne p1, v4, :cond_15

    iget-boolean v9, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v9, :cond_15

    move v9, v6

    goto :goto_10

    :cond_15
    move v9, v3

    :goto_10
    aput v9, v8, v2

    invoke-static {v1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2880
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v7, :cond_16

    move v7, v5

    goto :goto_11

    :cond_16
    move v7, v2

    :goto_11
    add-int/2addr v7, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2881
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v4, [F

    if-ne p1, v4, :cond_18

    iget-boolean v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-nez v8, :cond_17

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v8, :cond_18

    iget-object v8, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_18

    :cond_17
    move v8, v6

    goto :goto_12

    :cond_18
    move v8, v3

    :goto_12
    aput v8, v7, v2

    invoke-static {v1, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2882
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v4, [F

    if-ne p1, v4, :cond_19

    goto :goto_13

    :cond_19
    move v6, v3

    :goto_13
    aput v6, v7, v2

    invoke-static {v1, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2885
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    aput v3, v4, v2

    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2887
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2888
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$13;

    invoke-direct {v1, p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$13;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;II)V

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2894
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x1cc

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2895
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2896
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_25

    .line 2898
    :cond_1a
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz p2, :cond_1c

    if-nez p1, :cond_1b

    move v7, v6

    goto :goto_14

    :cond_1b
    move v7, v3

    .line 2899
    :goto_14
    invoke-virtual {p2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2901
    :cond_1c
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    if-nez p1, :cond_1d

    move v7, v6

    goto :goto_15

    :cond_1d
    move v7, v3

    :goto_15
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2902
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    if-nez p1, :cond_1e

    move v7, v2

    goto :goto_16

    :cond_1e
    const/16 v7, 0x8

    :goto_16
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2903
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-ne p1, v4, :cond_1f

    move v7, v6

    goto :goto_17

    :cond_1f
    move v7, v3

    :goto_17
    invoke-virtual {p2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2904
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    if-nez p1, :cond_20

    move v7, v6

    goto :goto_18

    :cond_20
    move v7, v3

    :goto_18
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2905
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    if-nez p1, :cond_21

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v7, :cond_21

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailable()Z

    move-result v7

    if-eqz v7, :cond_21

    move v7, v6

    goto :goto_19

    :cond_21
    move v7, v3

    :goto_19
    invoke-virtual {p2, v7}, Landroid/view/View;->setAlpha(F)V

    .line 2906
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    if-nez p1, :cond_22

    move v7, v6

    goto :goto_1a

    :cond_22
    move v7, v3

    :goto_1a
    invoke-virtual {p2, v7}, Landroid/view/View;->setAlpha(F)V

    .line 2907
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    const/16 v7, 0x10

    if-nez p1, :cond_23

    move v8, v3

    goto :goto_1b

    :cond_23
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    :goto_1b
    invoke-virtual {p2, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 2908
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    if-nez p1, :cond_24

    move v8, v6

    goto :goto_1c

    :cond_24
    move v8, v3

    :goto_1c
    invoke-virtual {p2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 2909
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    if-nez p1, :cond_25

    move v7, v3

    goto :goto_1d

    :cond_25
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    :goto_1d
    invoke-virtual {p2, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 2910
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2911
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2912
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    if-nez p1, :cond_26

    iget-boolean v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-eqz v7, :cond_26

    move v7, v6

    goto :goto_1e

    :cond_26
    move v7, v3

    :goto_1e
    invoke-virtual {p2, v7}, Landroid/view/View;->setAlpha(F)V

    .line 2913
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_27

    move v7, v6

    goto :goto_1f

    :cond_27
    move v7, v3

    :goto_1f
    invoke-virtual {p2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2914
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_28

    move v1, v3

    goto :goto_20

    :cond_28
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    :goto_20
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2915
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-ne p1, v4, :cond_29

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v1, :cond_29

    move v1, v6

    goto :goto_21

    :cond_29
    move v1, v3

    :goto_21
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2916
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v1, :cond_2a

    move v2, v5

    :cond_2a
    add-int/2addr v2, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2917
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    if-ne p1, v4, :cond_2c

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-nez v1, :cond_2b

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v1, :cond_2c

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    :cond_2b
    move v1, v6

    goto :goto_22

    :cond_2c
    move v1, v3

    :goto_22
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2918
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    if-ne p1, v4, :cond_2d

    move v1, v6

    goto :goto_23

    :cond_2d
    move v1, v3

    :goto_23
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2920
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-ne p1, v4, :cond_2e

    move v1, v6

    goto :goto_24

    :cond_2e
    move v1, v3

    :goto_24
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2921
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-ne p1, v4, :cond_2f

    move v3, v6

    :cond_2f
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2922
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onNavigateEnd(II)V

    :goto_25
    return-void
.end method

.method public navigateToPreviewWithPlayerAwait(Ljava/lang/Runnable;J)V
    .locals 3

    .line 2809
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2812
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->afterPlayerAwait:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 2813
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x1

    .line 2815
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewAlreadySet:Z

    .line 2816
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    .line 2817
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->afterPlayerAwait:Ljava/lang/Runnable;

    .line 2824
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2825
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setVisibility(I)V

    .line 2826
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->afterPlayerAwait:Ljava/lang/Runnable;

    invoke-virtual {p1, v1, v2, p2, p3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    .line 2827
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupAudio(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    .line 2828
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->afterPlayerAwait:Ljava/lang/Runnable;

    const-wide/16 p2, 0x190

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .line 2770
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingVideo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2771
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->stopRecording()V

    return v1

    .line 2774
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingPhoto:Z

    if-eqz v0, :cond_1

    return v1

    .line 2777
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 2779
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-eqz v0, :cond_4

    .line 2780
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 2783
    :cond_3
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    const/4 v0, 0x0

    .line 2784
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return v1

    .line 2786
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 2788
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-le v0, v2, :cond_6

    .line 2789
    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    return v1

    .line 2791
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-ne v0, v3, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_8

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    if-nez v2, :cond_8

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedCaption:Z

    if-eqz v0, :cond_f

    .line 2792
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    .line 2794
    :cond_9
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromGallery:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz v0, :cond_c

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->isShareEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_d

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v0, :cond_e

    .line 2795
    :cond_d
    invoke-virtual {p0, v1, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    goto :goto_0

    .line 2797
    :cond_e
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showDismissEntry()V

    :goto_0
    return v1

    .line 2801
    :cond_f
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    return v3
.end method

.method public open(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V
    .locals 1

    const/4 v0, 0x1

    .line 402
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->open(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;Z)V

    return-void
.end method

.method public open(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;Z)V
    .locals 7

    .line 406
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 410
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareClosing:Z

    .line 412
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->forceBackgroundVisible:Z

    .line 414
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 415
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 420
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->checkStoryLimit()Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 421
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->active(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 422
    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showLimitReachedSheet(Lorg/telegram/ui/Stories/StoriesController$StoryLimit;Z)V

    .line 425
    :cond_2
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    const/4 v1, -0x1

    .line 426
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 429
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    .line 430
    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->type:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    .line 431
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    iget-object v4, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 432
    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->rounding:F

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    .line 433
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->hide()V

    goto :goto_0

    .line 435
    :cond_3
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    .line 436
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    const/16 v3, 0x64

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {p1, v1, v4, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 p1, 0x8

    .line 437
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    .line 439
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->updateBackground()V

    .line 440
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    if-ne v3, v2, :cond_4

    goto :goto_1

    :cond_4
    const v0, -0xe0e0e1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 442
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 443
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY(F)V

    .line 444
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY2(F)V

    .line 445
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 446
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 447
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dismissProgress:F

    .line 449
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-static {p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;I)V

    .line 451
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda35;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {p0, v0, p2, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateOpenTo(FZLjava/lang/Runnable;)V

    .line 453
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->addNotificationObservers()V

    return-void
.end method

.method public openEdit(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;Lorg/telegram/ui/Stories/recorder/StoryEntry;JZ)V
    .locals 6

    .line 457
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 461
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareClosing:Z

    .line 463
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->forceBackgroundVisible:Z

    .line 465
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 466
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 470
    iget-boolean p2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_0

    :cond_2
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 473
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    .line 474
    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->type:I

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    .line 475
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 476
    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->rounding:F

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    .line 477
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->hide()V

    goto :goto_1

    .line 479
    :cond_3
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    .line 480
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    const/16 v2, 0x64

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {p1, p2, v3, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 p1, 0x8

    .line 481
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    .line 483
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->updateBackground()V

    .line 484
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    if-ne v2, v1, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    const v2, -0xe0e0e1

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 486
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 487
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY(F)V

    .line 488
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY2(F)V

    .line 489
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 490
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 491
    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dismissProgress:F

    .line 493
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;I)V

    .line 495
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_5

    .line 496
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    :cond_5
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda45;

    invoke-direct {p1, p0, p5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    invoke-virtual {p0, p1, p3, p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateToPreviewWithPlayerAwait(Ljava/lang/Runnable;J)V

    .line 503
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    const/4 p1, -0x1

    .line 504
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    .line 506
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->addNotificationObservers()V

    return-void
.end method

.method public removeNotificationObservers()V
    .locals 2

    .line 4522
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4523
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4524
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesLimitUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public selectedPeerId(J)Lorg/telegram/ui/Stories/recorder/StoryRecorder;
    .locals 0

    .line 4691
    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedDialogId:J

    return-object p0
.end method

.method public setIconMuted(ZZ)V
    .locals 8

    .line 4666
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_0

    .line 4667
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/messenger/R$raw;->media_mute_unmute:I

    const/16 v1, 0x1c

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v3, "media_mute_unmute"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 4668
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->multiplySpeed(F)V

    .line 4670
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    const/16 v0, 0x14

    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 4672
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    return-void

    :cond_2
    if-eqz p1, :cond_4

    .line 4676
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result p1

    if-le p1, v0, :cond_3

    .line 4677
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 4679
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 4680
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_1

    .line 4682
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result p1

    const/16 p2, 0x2b

    if-lt p1, p2, :cond_5

    goto :goto_1

    .line 4685
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 4686
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_6
    :goto_1
    return-void
.end method

.method public setOnFullyOpenListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onFullyOpenListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnPrepareCloseListener(Lorg/telegram/messenger/Utilities$Callback3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback3<",
            "Ljava/lang/Long;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 708
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onClosePrepareListener:Lorg/telegram/messenger/Utilities$Callback3;

    return-void
.end method

.method public switchToEditMode(IZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 3394
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    if-ne v3, v1, :cond_0

    return-void

    .line 3399
    :cond_0
    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    .line 3401
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 3402
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3403
    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    .line 3406
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v1, v6, :cond_2

    iget v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    cmpl-float v10, v10, v7

    if-lez v10, :cond_2

    move v10, v9

    goto :goto_0

    :cond_2
    move v10, v8

    :goto_0
    invoke-virtual {v4, v10, v2}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appear(ZZ)V

    .line 3408
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3410
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-nez v10, :cond_3

    if-ne v1, v9, :cond_3

    move v11, v9

    goto :goto_1

    :cond_3
    move v11, v8

    :goto_1
    const/high16 v12, 0x3f800000    # 1.0f

    if-ne v1, v9, :cond_5

    if-eqz v10, :cond_5

    .line 3412
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createFilterPhotoView()V

    .line 3414
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    iput-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewTouchable:Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

    if-eqz v10, :cond_4

    .line 3415
    invoke-virtual {v10}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v10

    goto :goto_2

    :cond_4
    move-object v10, v5

    :goto_2
    if-eqz v10, :cond_6

    .line 3417
    invoke-virtual {v10, v7}, Landroid/view/View;->setAlpha(F)V

    .line 3418
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3419
    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v14, v9, [F

    aput v7, v14, v8

    invoke-static {v10, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3420
    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v9, [F

    aput v12, v14, v8

    invoke-static {v10, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    if-ne v3, v9, :cond_6

    if-eqz v10, :cond_6

    .line 3423
    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewTouchable:Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

    .line 3425
    invoke-virtual {v10}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v10

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v14, v9, [F

    const/16 v15, 0xe2

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    aput v15, v14, v8

    invoke-static {v10, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3426
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v10

    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v9, [F

    aput v7, v14, v8

    invoke-static {v10, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    const/16 v10, 0x20

    const/16 v13, 0x30

    const/16 v14, 0x10

    if-nez v1, :cond_7

    .line 3430
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createPhotoPaintView()V

    .line 3431
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewTouchable:Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

    .line 3432
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v9, [F

    aput v7, v6, v8

    invoke-static {v5, v15, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3433
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/PaintView;->getTopLayout()Landroid/view/View;

    move-result-object v5

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v12, v15, [F

    fill-array-data v12, :array_0

    invoke-static {v5, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3434
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/PaintView;->getTopLayout()Landroid/view/View;

    move-result-object v5

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v12, v15, [F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    aput v14, v12, v8

    aput v7, v12, v9

    invoke-static {v5, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3435
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBottomLayout()Landroid/view/View;

    move-result-object v5

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v15, [F

    fill-array-data v12, :array_1

    invoke-static {v5, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3436
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBottomLayout()Landroid/view/View;

    move-result-object v5

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v12, v15, [F

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    aput v13, v12, v8

    aput v7, v12, v9

    invoke-static {v5, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3437
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/PaintView;->getWeightChooserView()Landroid/view/View;

    move-result-object v5

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v12, v15, [F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    aput v10, v12, v8

    aput v7, v12, v9

    invoke-static {v5, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_7
    if-nez v3, :cond_8

    .line 3438
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v6, :cond_8

    .line 3439
    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewTouchable:Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

    .line 3440
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v9, [F

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v12, v8

    invoke-static {v5, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3441
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/PaintView;->getTopLayout()Landroid/view/View;

    move-result-object v5

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v9, [F

    aput v7, v12, v8

    invoke-static {v5, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3442
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/PaintView;->getTopLayout()Landroid/view/View;

    move-result-object v5

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v12, v9, [F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    aput v14, v12, v8

    invoke-static {v5, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3443
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBottomLayout()Landroid/view/View;

    move-result-object v5

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v9, [F

    aput v7, v12, v8

    invoke-static {v5, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3444
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBottomLayout()Landroid/view/View;

    move-result-object v5

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v12, v9, [F

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    aput v13, v12, v8

    invoke-static {v5, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3445
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/PaintView;->getWeightChooserView()Landroid/view/View;

    move-result-object v5

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v12, v9, [F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    aput v10, v12, v8

    invoke-static {v5, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    :goto_4
    const/high16 v15, 0x3f800000    # 1.0f

    .line 3448
    :goto_5
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v9, [F

    const/4 v12, -0x1

    if-ne v1, v12, :cond_9

    iget-boolean v12, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v12, :cond_9

    move v12, v15

    goto :goto_6

    :cond_9
    move v12, v7

    :goto_6
    aput v12, v10, v8

    invoke-static {v5, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3449
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v9, [F

    const/4 v12, -0x1

    if-ne v1, v12, :cond_b

    iget-boolean v12, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-nez v12, :cond_a

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v12, :cond_b

    iget-object v12, v12, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    :cond_a
    move v12, v15

    goto :goto_7

    :cond_b
    move v12, v7

    :goto_7
    aput v12, v10, v8

    invoke-static {v5, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3450
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v9, [F

    const/4 v12, -0x1

    if-ne v1, v12, :cond_c

    move v13, v15

    goto :goto_8

    :cond_c
    move v13, v7

    :goto_8
    aput v13, v10, v8

    invoke-static {v5, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3454
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v9, [F

    iget v13, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-ne v13, v9, :cond_d

    if-ne v1, v12, :cond_d

    move v12, v15

    goto :goto_9

    :cond_d
    move v12, v7

    :goto_9
    aput v12, v10, v8

    invoke-static {v5, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v1, v9, :cond_e

    .line 3458
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    const v10, 0x3e4ccccd    # 0.2f

    mul-float/2addr v6, v10

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setPivotY(F)V

    const/16 v5, 0xa4

    .line 3459
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    goto :goto_a

    :cond_e
    if-nez v1, :cond_f

    .line 3461
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v10

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setPivotY(F)V

    const/16 v5, 0x28

    .line 3462
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    goto :goto_a

    :cond_f
    move v5, v8

    :goto_a
    if-lez v5, :cond_10

    .line 3467
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getPivotY()F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v6, v10

    sub-int v5, v6, v5

    int-to-float v5, v5

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_b

    :cond_10
    move v5, v15

    .line 3471
    :goto_b
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v12, v9, [F

    aput v5, v12, v8

    invoke-static {v6, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3472
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v9, [F

    aput v5, v12, v8

    invoke-static {v6, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, -0x1

    if-ne v1, v5, :cond_11

    .line 3474
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v9, [F

    aput v7, v10, v8

    invoke-static {v5, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3477
    :cond_11
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    if-eqz v5, :cond_13

    .line 3478
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v9, [F

    if-ne v1, v9, :cond_12

    move v12, v15

    goto :goto_c

    :cond_12
    move v12, v7

    :goto_c
    aput v12, v10, v8

    invoke-static {v5, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3480
    :cond_13
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    if-eqz v5, :cond_15

    .line 3481
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v9, [F

    if-ne v1, v9, :cond_14

    move v12, v15

    goto :goto_d

    :cond_14
    move v12, v7

    :goto_d
    aput v12, v10, v8

    invoke-static {v5, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3484
    :cond_15
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v9, [F

    const/4 v10, -0x1

    if-ne v1, v10, :cond_16

    move v7, v15

    :cond_16
    aput v7, v9, v8

    invoke-static {v5, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3486
    invoke-direct {v0, v3, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onSwitchEditModeStart(II)V

    if-eqz v2, :cond_18

    .line 3488
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    .line 3489
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3490
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x140

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3491
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3492
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$17;

    invoke-direct {v4, v0, v3, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$17;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;II)V

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v11, :cond_17

    .line 3499
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x78

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 3501
    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_f

    .line 3503
    :cond_18
    :goto_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_19

    .line 3504
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    const-wide/16 v5, 0x1

    .line 3505
    invoke-virtual {v2, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 3506
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 3508
    :cond_19
    invoke-direct {v0, v3, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onSwitchEditModeEnd(II)V

    :goto_f
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
