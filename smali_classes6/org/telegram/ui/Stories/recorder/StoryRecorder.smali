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

.field private awaitingPlayer:Z

.field private backButton:Landroid/widget/ImageView;

.field private cameraHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

.field private cameraViewThumb:Landroid/widget/ImageView;

.field private cameraZoom:F

.field private captionContainer:Landroid/widget/FrameLayout;

.field private captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

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

.field private openCloseAnimator:Landroid/animation/ValueAnimator;

.field private openProgress:F

.field private openType:I

.field private outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

.field private outputFile:Ljava/io/File;

.field private pageAnimator:Landroid/animation/AnimatorSet;

.field private paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

.field private paintViewBitmap:Landroid/graphics/Bitmap;

.field private paintViewEntitiesView:Landroid/view/View;

.field private paintViewRenderInputView:Landroid/view/View;

.field private paintViewRenderView:Landroid/view/View;

.field private paintViewSelectionContainerView:Landroid/view/View;

.field private paintViewTextDim:Landroid/view/View;

.field private photoFilterBitmap:Landroid/graphics/Bitmap;

.field private photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

.field private photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

.field private photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

.field private photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

.field private photoFilterViewTextureView:Landroid/view/TextureView;

.field private prepareClosing:Z

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

.field private shiftDp:I

.field private showSavedDraftHint:Z

.field private stoppingTakingVideo:Z

.field private takingPhoto:Z

.field private takingVideo:Z

.field private titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private trash:Lorg/telegram/ui/Stories/recorder/TrashView;

.field private underControls:I

.field private underStatusBar:Z

.field private videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

.field private videoTimelineContainerView:Landroid/widget/FrameLayout;

.field private videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

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
.method public static synthetic $r8$lambda$2vQI_l1_2KSDE8-vxqzHJZz7n0M(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$9(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3vvNTsNAaR5xb3-RK1MBQjSz-ko(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$destroyCameraView$48()V

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

.method public static synthetic $r8$lambda$4uBFXmq5170WNT75ghdqQ3qiXeM(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$22(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8xz1BC5TgMjOp_Jv4Baa3yo63Dg(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$saveLastCameraBitmap$44(Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9GhNsU_pFXRaKOQxA2tO0oQiZz0(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$19(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AE9ENnXwtvA-unS2FpYnDMygCWs(Lorg/telegram/ui/Stories/recorder/StoryRecorder;FLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$animateGalleryListView$35(FLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$Aejhtw0dEEmuouXp_jsI562AipA(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createGalleryListView$32()V

    return-void
.end method

.method public static synthetic $r8$lambda$BUpGWaTEuOmyLUh1Vqe1rWOKWiI(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$8(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CFiwKqf-auq2MUkedhldYtr6Z9g(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$requestCameraPermission$49(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DOr62jqUoJpTcCYnLdGwwFNAvFs(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createFilterPhotoView()V

    return-void
.end method

.method public static synthetic $r8$lambda$Dxu38DDCp16M6ZZxPdXnK4EGf9A(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$upload$25(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$EaE5RdKfU01sM2QO4bOXry8WLFw(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$G5VBq4Zi2jdfRAfUQpldc6zFi-A(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createFilterPhotoView$42(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HDAu6t4nXDZhW9cMxIHg0qqD6Mw(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$destroyCameraView$47()V

    return-void
.end method

.method public static synthetic $r8$lambda$I7SOSJuVn3ZBzd-rkY1ZhesCtws(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$setCameraFlashModeIcon$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$KLCt13GtfvT_dRb68p4xjP3L_cw(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createPhotoPaintView$40()V

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

.method public static synthetic $r8$lambda$MC3QQH8VLZOQZbNJQ9IptJ3AHrM(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$20(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NYwgnwhl8gQ_kr7BgbCdgCoemIs(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$URfX0H9pYtxUdAgbqEKBzW04M6I(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$animateOpenTo$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UbUGg4Dkd3_52LiXmR05JHcrYqs(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$showDismissEntry$45(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UcXNWIxW-EJh-ggvj32g2Q5uLNE(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$upload$24()V

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

.method public static synthetic $r8$lambda$WMwo23lKM0ulovsmXHLIup9Kvos(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$18(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WTX4dplLUlAucoj33cjJMJjj__A(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$showVideoTimer$27(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$WZO_H-a0otc_pxFiXbUy6WDpBqA(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$23(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WyxV4RjscpLRm8xL25C2bpVLtNc(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$showZoomControls$28()V

    return-void
.end method

.method public static synthetic $r8$lambda$X7Zzyj6uHhspoXuxUI_PRc5pNO4(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$showZoomControls$29()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZyGcjHKj9JsJQJ6Jac1wBUV8qY8(Lorg/telegram/ui/Stories/recorder/StoryRecorder;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$animateContainerBack$31(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_-O93dCnzkDPnmAHbaEMB8KfEUU(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$aLyJY1L_mRv3BmuUuJ069H1omMY(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$showPremiumPeriodBulletin$53()V

    return-void
.end method

.method public static synthetic $r8$lambda$ae3IrY2Up2CO5hccuV_A1RnV6Z4(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$17(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cF0YKJkyRfDXeNMyLVc6vAG4a5c(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$close$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$cLYkMRfKR5Uo5ryMcjFa-0RIgu0(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$21(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cc0oB1mb8GkwUEMUZc9uV3f4xQQ(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$7(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dC8CMzvV5iH-UKDO9DsCbuongjM(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onOpenDone()V

    return-void
.end method

.method public static synthetic $r8$lambda$dpNvr_BGeE8DiauKq44iOG0rvN0(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createGalleryListView$33(ZLjava/lang/Object;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gSmU7IyaUQNc97faZqmh5pP3plg(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$navigateToPreviewWithPlayerAwait$30(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hmBapYfKotFQF-tMecSFKEnGg_0(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onNavigateStart$37()V

    return-void
.end method

.method public static synthetic $r8$lambda$j66Ld0pmYWotKPSAH6mOgiMniF4(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createPhotoPaintView$39()V

    return-void
.end method

.method public static synthetic $r8$lambda$kOlIN-iNK51PPb8opAtYO0zYQ6U(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onResumeInternal$50()V

    return-void
.end method

.method public static synthetic $r8$lambda$kRvvFjYVO-x8bkWJfpEUBHSLJpM(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$showPremiumPeriodBulletin$52(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nK2rJsRgS_51dQ3revfH1AOkFcs(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$16(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$no75wBSp-qfoRC95_ocspknhrYc(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$animateGalleryListView$36(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o8zhcGoPCtv0JUbHiKAB6oATRoM(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onCloseDone$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$oA9RGulvilqwf5CwkqCBm8mx90w(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Components/FilterGLThread;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onNavigateStart$38(Lorg/telegram/ui/Components/FilterGLThread;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tSNofU8GdidBVmzk98e4gm4tZM4()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$uqPCbDnUZb_4sXyX7p_hSCcJPYQ(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createFilterPhotoView$41(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vNI0PwPzfmmpc1_Yd9R49DcO1qM(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createCameraView$43()V

    return-void
.end method

.method public static synthetic $r8$lambda$vmbWJ1kJ5NCZzDz7DY5RUO93aS4(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$showDismissEntry$46(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$x2ZtBiFaP4fpG0VgVm7e6OfTHUE(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onRequestPermissionsResultInternal$51(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xjEHqDgcerfl1n2L09DOqDzKHxU(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$animateGalleryListView$34(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$xt81TfsIgg0Kg3Rj67noHYpYLfQ(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$11(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zjI8xZITWesHn4AXRrZMDeu0q_M(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$10(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 3

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 219
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    .line 511
    new-instance v0, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    const/4 v0, 0x0

    .line 1311
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    const/4 v1, -0x1

    .line 1316
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    .line 1385
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    .line 1386
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingPhoto:Z

    .line 1387
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingVideo:Z

    .line 1388
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->stoppingTakingVideo:Z

    .line 1389
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    const/4 v0, -0x3

    .line 1393
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shiftDp:I

    .line 2116
    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControlDelegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    const/4 v2, 0x1

    .line 2420
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerShown:Z

    .line 2634
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyContainerViewTranslation2:Z

    .line 189
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    .line 190
    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    .line 192
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 193
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 194
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 195
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v0, 0x33

    .line 196
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0x63

    .line 197
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 199
    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    const v1, 0x8010100

    .line 201
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/high16 v0, -0x80000000

    or-int/2addr v0, v1

    .line 207
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_1
    const/16 v0, 0x10

    .line 209
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const-string p2, "window"

    .line 211
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    .line 213
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->initViews()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/Float;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frozenDismissProgress:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frozenDismissProgress:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F
    .locals 0

    .line 148
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    .line 148
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->underControls:I

    return p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/app/Activity;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    .line 148
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->underControls:I

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)F
    .locals 0

    .line 148
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    .line 148
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetBottom:I

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    .line 148
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetBottom:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F
    .locals 0

    .line 148
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dismissProgress:F

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)F
    .locals 0

    .line 148
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dismissProgress:F

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    .line 148
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F
    .locals 0

    .line 148
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateContainerBack()V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    return-object p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/Stories/recorder/GalleryListView;
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    return-object p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingVideo:Z

    return p0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    .line 148
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingVideo:Z

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->scrollingY:Z

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    .line 148
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->scrollingY:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->scrollingX:Z

    return p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    .line 148
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->scrollingX:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    .line 148
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F
    .locals 0

    .line 148
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    return p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)F
    .locals 0

    .line 148
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    return p1
.end method

.method static synthetic access$3016(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)F
    .locals 1

    .line 148
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/ZoomControlView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showZoomControls(ZZ)V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasGalleryOpen:Z

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 148
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isGalleryOpen()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingPhoto:Z

    return p0
.end method

.method static synthetic access$4102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    .line 148
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingPhoto:Z

    return p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createGalleryListView()V

    return-void
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->saveCameraFace(Z)V

    return-void
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/Boolean;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$4802(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    .line 148
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetTop:I

    return p0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    .line 148
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetTop:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/StoryWaveEffectView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->waveEffect:Lorg/telegram/ui/Stories/StoryWaveEffectView;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    .line 148
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetLeft:I

    return p0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    .line 148
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetLeft:I

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    .line 148
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetRight:I

    return p0
.end method

.method static synthetic access$5102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    .line 148
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetRight:I

    return p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    .line 148
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewW:I

    return p0
.end method

.method static synthetic access$5202(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    .line 148
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewW:I

    return p1
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    .line 148
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewH:I

    return p0
.end method

.method static synthetic access$5302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    .line 148
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewH:I

    return p1
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->underStatusBar:Z

    return p0
.end method

.method static synthetic access$5402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    .line 148
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->underStatusBar:Z

    return p1
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionContainerView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navbarContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/ImageView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/messenger/AnimationNotificationsLocker;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    return-object p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewTouchable:Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

    return-object p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterCurvesControl;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterBlurControl;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    return-object p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    return-object p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilterMatrix()V

    return-void
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewHighlight:Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    return-object p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/TrashView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    return-object p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/VideoTimeView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->checkBackgroundVisibility()V

    return-void
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 148
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestAudioPermission()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-object p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$7202(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    .line 148
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    return-object p0
.end method

.method static synthetic access$7402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    return-object p1
.end method

.method static synthetic access$7502(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    .line 148
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromGallery:Z

    return p1
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->stoppingTakingVideo:Z

    return p0
.end method

.method static synthetic access$7602(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    .line 148
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->stoppingTakingVideo:Z

    return p1
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-object p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->savedDualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-object p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    return p0
.end method

.method static synthetic access$7902(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    .line 148
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    return p1
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showVideoTimer(ZZ)V

    return-void
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintTextView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    return-object p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/VideoTimerView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    return-object p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 148
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestGalleryPermission()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateRecording(ZZ)V

    return-void
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setAwakeLock(Z)V

    return-void
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/ImageView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/ImageView;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$8802(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$8900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;II)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onNavigateEnd(II)V

    return-void
.end method

.method static synthetic access$9002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$9100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyContainerViewTranslation2:Z

    return p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/Runnable;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryLayouted:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$9202(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryLayouted:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$9300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyCameraView(Z)V

    return-void
.end method

.method static synthetic access$9400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 148
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;II)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onSwitchEditModeEnd(II)V

    return-void
.end method

.method static synthetic access$9600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyGalleryListView()V

    return-void
.end method

.method static synthetic access$9700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createGalleryListView(Z)V

    return-void
.end method

.method static synthetic access$9800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/ToggleButton;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    return-object p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/String;Z)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setCameraFlashModeIcon(Ljava/lang/String;Z)V

    return-void
.end method

.method private animateContainerBack()V
    .locals 4

    .line 2636
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2637
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 2638
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x0

    .line 2640
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyContainerViewTranslation2:Z

    .line 2641
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

    .line 2642
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    .line 2643
    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;FF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2649
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x154

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2650
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2651
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$13;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2659
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

    .line 2837
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasGalleryOpen:Z

    .line 2838
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2842
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 2844
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createGalleryListView()V

    .line 2846
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-nez v0, :cond_2

    return-void

    .line 2851
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->firstLayout:Z

    if-eqz v0, :cond_3

    .line 2852
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryLayouted:Ljava/lang/Runnable;

    return-void

    .line 2856
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2857
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2858
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    .line 2860
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_5

    .line 2861
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 2862
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2865
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-nez v0, :cond_7

    if-eqz p1, :cond_6

    .line 2867
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createGalleryListView()V

    .line 2869
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-nez v0, :cond_7

    return-void

    .line 2873
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 2874
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->ignoreScroll:Z

    :cond_8
    const/4 v0, 0x1

    if-eqz p1, :cond_9

    .line 2877
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->draftSavedHint:Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    if-eqz v3, :cond_9

    .line 2878
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->hide(Z)V

    .line 2881
    :cond_9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    .line 2883
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    if-eqz p1, :cond_a

    const/4 v4, 0x0

    goto :goto_0

    .line 2884
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

    .line 2885
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 2887
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    xor-int/lit8 v6, p1, 0x1

    iput-boolean v6, v5, Lorg/telegram/ui/Stories/recorder/GalleryListView;->ignoreScroll:Z

    .line 2889
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    if-nez v5, :cond_b

    move v5, v0

    goto :goto_1

    :cond_b
    move v5, v2

    :goto_1
    iput-boolean v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyContainerViewTranslation2:Z

    if-eqz p1, :cond_c

    .line 2891
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, v2, v3, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2892
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 2893
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x43af0000    # 350.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 2894
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)V

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2903
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_2

    :cond_c
    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v3, v5, v2

    aput v4, v5, v0

    .line 2905
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    .line 2906
    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2909
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2918
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2919
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2920
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    if-nez p1, :cond_d

    .line 2923
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    if-nez v0, :cond_d

    .line 2924
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGalleryScrollPosition:Landroid/os/Parcelable;

    :cond_d
    if-nez p1, :cond_e

    .line 2927
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->noCameraPermission:Z

    if-nez p1, :cond_e

    .line 2928
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createCameraView()V

    :cond_e
    return-void
.end method

.method private animateOpenTo(FZLjava/lang/Runnable;)V
    .locals 5

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 517
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    if-eqz p2, :cond_4

    .line 521
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p2}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 522
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

    .line 523
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dismissProgress:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frozenDismissProgress:Ljava/lang/Float;

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 524
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    aput v0, p2, v4

    aput p1, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    .line 525
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 535
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;

    invoke-direct {v0, p0, p1, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;FLjava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    .line 555
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSend:Z

    if-eqz p2, :cond_1

    .line 556
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xfa

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 557
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_3

    .line 559
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

    .line 563
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x190

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 564
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    .line 560
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x10e

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 561
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 567
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 569
    :cond_4
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frozenDismissProgress:Ljava/lang/Float;

    .line 570
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    .line 571
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 572
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    if-eqz p3, :cond_5

    .line 574
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 576
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->checkBackgroundVisibility()V

    :goto_2
    return-void
.end method

.method private animateRecording(ZZ)V
    .locals 11

    if-eqz p1, :cond_3

    .line 2357
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    .line 2358
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 2360
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->savedDualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_1

    .line 2361
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 2363
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_2

    .line 2364
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 2366
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_3

    .line 2367
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 2370
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-ne v0, p1, :cond_4

    return-void

    .line 2373
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordingAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    .line 2374
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 2375
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordingAnimator:Landroid/animation/AnimatorSet;

    .line 2377
    :cond_5
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    const/16 v0, 0x10

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_13

    .line 2379
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2380
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2381
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailable()Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v4

    :cond_6
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2382
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordingAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x7

    new-array v1, v1, [Landroid/animation/Animator;

    .line 2383
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

    .line 2384
    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v1, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v7, [F

    if-nez p1, :cond_9

    .line 2385
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

    .line 2386
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

    .line 2387
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

    .line 2388
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

    .line 2389
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

    .line 2390
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

    .line 2383
    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2392
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordingAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2403
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordingAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x104

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2404
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordingAnimator:Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2405
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_14

    .line 2407
    :cond_13
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_14

    move v5, v3

    goto :goto_8

    :cond_14
    move v5, v2

    :goto_8
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2408
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_15

    move v5, v1

    goto :goto_9

    :cond_15
    move v5, v4

    :goto_9
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2409
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

    .line 2410
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

    .line 2411
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

    .line 2412
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

    .line 2413
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

    .line 2414
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

    .line 2415
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    if-nez p1, :cond_21

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-eqz v1, :cond_22

    :cond_21
    move v2, v3

    :cond_22
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2416
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

    .line 3515
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3521
    :cond_0
    iget-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->hasChanges()Z

    move-result v0

    or-int/2addr v0, v2

    iput-boolean v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    .line 3522
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->updateFilter(Lorg/telegram/ui/Components/PhotoFilterView;Ljava/lang/Runnable;)V

    if-nez p1, :cond_1

    .line 3523
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v0, :cond_1

    .line 3524
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 3517
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private applyFilterMatrix()V
    .locals 6

    .line 3591
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 3592
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 3593
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 3594
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    if-eqz v1, :cond_0

    neg-int v1, v1

    int-to-float v1, v1

    .line 3595
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

    .line 3596
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    div-int/lit8 v1, v1, 0x5a

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3597
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    .line 3598
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    .line 3599
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    .line 3600
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    .line 3601
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 3597
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 3605
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    .line 3606
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

    .line 3607
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 3605
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3609
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 3610
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    .line 3611
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    .line 3612
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 3610
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3614
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 3615
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->invalidate()V

    :cond_1
    return-void
.end method

.method private applyPaint(Z)V
    .locals 23

    move-object/from16 v0, p0

    .line 3488
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 3492
    :cond_0
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->clearPaint()V

    .line 3493
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->hasChanges()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    .line 3495
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 3496
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    goto :goto_0

    .line 3498
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3500
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iget v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iget v6, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBitmap(Ljava/util/ArrayList;IIZZ)Landroid/graphics/Bitmap;

    .line 3501
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3502
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v11, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iget v12, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    const/4 v13, 0x1

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v2

    if-nez v2, :cond_2

    move v14, v3

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    move v14, v2

    :goto_1
    move-object v10, v1

    invoke-virtual/range {v9 .. v14}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBitmap(Ljava/util/ArrayList;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 3503
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->getMasks()Ljava/util/List;

    move-result-object v2

    .line 3505
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :cond_3
    move-object v6, v5

    :goto_2
    iput-object v6, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    .line 3506
    sget-object v16, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v4, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v4, v4

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v2, v2

    const/16 v19, 0x57

    const/16 v20, 0x0

    const/16 v21, 0x65

    const/16 v22, 0x65

    move/from16 v17, v4

    move/from16 v18, v2

    invoke-static/range {v15 .. v22}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    .line 3507
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v1, v5

    :cond_4
    iput-object v1, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    .line 3508
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v4, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez v4, :cond_5

    .line 3509
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/PaintView;->getLcm()J

    move-result-wide v5

    const-wide/16 v7, 0x1d4c

    const-wide/16 v9, 0x1388

    invoke-static/range {v5 .. v10}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v4

    iput-wide v4, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    .line 3511
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    :cond_6
    :goto_3
    return-void
.end method

.method public static cameraBtnSpan(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5

    .line 4190
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "c"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4191
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lorg/telegram/messenger/R$drawable;->story_camera:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 v1, 0x23

    .line 4192
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v2, v1

    .line 4193
    div-int/lit8 v3, v2, 0x4

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4194
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$20;

    invoke-direct {v1, p0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$20;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v4, p0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private checkBackgroundVisibility()V
    .locals 3

    .line 4120
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

    .line 4121
    :goto_1
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isBackgroundVisible:Z

    if-ne v0, v1, :cond_2

    return-void

    .line 4124
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    instance-of v2, v1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v2, :cond_3

    .line 4125
    check-cast v1, Lorg/telegram/ui/LaunchActivity;

    .line 4126
    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowDrawContent(Z)V

    .line 4128
    :cond_3
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isBackgroundVisible:Z

    return-void
.end method

.method private createCameraView()V
    .locals 6

    .line 3716
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3719
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$18;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraFace()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$18;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    const/4 v1, 0x1

    .line 3758
    iput-boolean v1, v0, Lorg/telegram/messenger/camera/CameraView;->isStory:Z

    .line 3759
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/camera/CameraView;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3760
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->initTexture()V

    .line 3761
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda56;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/camera/CameraView;->setDelegate(Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;)V

    .line 3771
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

    .line 3772
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

    .line 3773
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    const/16 v4, 0x77

    const/4 v5, -0x1

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3774
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "storyhint2"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 3775
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 3776
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

    .line 3777
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

    .line 3778
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_4
    :goto_2
    return-void
.end method

.method private createFilterPhotoView()V
    .locals 12

    .line 3531
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3535
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    .line 3540
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getTextureView()Lorg/telegram/ui/Components/VideoEditTextureView;

    move-result-object v3

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getOrientation()I

    move-result v5

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    :goto_0
    move-object v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lorg/telegram/ui/Components/PhotoFilterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/VideoEditTextureView;Landroid/graphics/Bitmap;ILorg/telegram/messenger/MediaController$SavedFilterState;Lorg/telegram/ui/Components/PaintingOverlay;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    .line 3541
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3542
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    if-eqz v0, :cond_3

    .line 3543
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->setFilterView(Lorg/telegram/ui/Components/PhotoFilterView;)V

    .line 3545
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getMyTextureView()Landroid/view/TextureView;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 3547
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 3549
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setFilterTextureView(Landroid/view/TextureView;)V

    .line 3550
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 3551
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 3552
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

    .line 3554
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilterMatrix()V

    .line 3555
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getBlurControl()Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    if-eqz v0, :cond_6

    .line 3557
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3559
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getCurveControl()Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    if-eqz v0, :cond_7

    .line 3561
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3563
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->orderPreviewViews()V

    .line 3565
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getDoneTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3569
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getCancelTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3584
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3585
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3586
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0xba

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3587
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->init()V

    :cond_8
    :goto_1
    return-void
.end method

.method private createGalleryListView()V
    .locals 1

    const/4 v0, 0x0

    .line 2666
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createGalleryListView(Z)V

    return-void
.end method

.method private createGalleryListView(Z)V
    .locals 8

    .line 2687
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2691
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$14;

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-object v1, v0

    move-object v2, p0

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$14;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MediaController$AlbumEntry;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    .line 2723
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->setOnBackClickListener(Ljava/lang/Runnable;)V

    .line 2727
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->setOnSelectListener(Lorg/telegram/messenger/Utilities$Callback2;)V

    .line 2821
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGalleryScrollPosition:Landroid/os/Parcelable;

    if-eqz p1, :cond_1

    .line 2822
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2824
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
    .locals 17

    move-object/from16 v15, p0

    .line 3236
    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_0

    return-void

    .line 3239
    :cond_0
    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getPaintSize()Landroid/util/Pair;

    move-result-object v0

    .line 3240
    iget-object v1, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3241
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 3242
    iput-object v2, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewBitmap:Landroid/graphics/Bitmap;

    .line 3244
    :cond_1
    iget-object v1, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v1, :cond_2

    iget-boolean v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-eqz v3, :cond_2

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 3245
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewBitmap:Landroid/graphics/Bitmap;

    .line 3247
    :cond_2
    iget-object v1, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 3248
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewBitmap:Landroid/graphics/Bitmap;

    .line 3250
    :cond_3
    new-instance v14, Lorg/telegram/ui/Stories/recorder/StoryRecorder$17;

    iget-object v4, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    iget-object v3, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget v5, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    iget-object v6, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getOrientation()I

    move-result v8

    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_4

    move-object v9, v2

    goto :goto_0

    :cond_4
    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    move-object v9, v0

    :goto_0
    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v11

    new-instance v12, Lorg/telegram/messenger/MediaController$CropState;

    invoke-direct {v12}, Lorg/telegram/messenger/MediaController$CropState;-><init>()V

    const/4 v13, 0x0

    iget-object v2, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v16, v2

    move-object v2, v4

    move-object v15, v14

    move-object/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$17;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;IILorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    .line 3324
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v1, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3325
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getRenderView()Lorg/telegram/ui/Components/Paint/RenderView;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 3327
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3329
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getRenderInputView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderInputView:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 3331
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3333
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getTextDimView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewTextDim:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 3335
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3337
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getEntitiesView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewEntitiesView:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 3339
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3341
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getSelectionEntitiesView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewSelectionContainerView:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 3343
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3345
    :cond_9
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->orderPreviewViews()V

    .line 3346
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda33;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->setOnDoneButtonClickedListener(Ljava/lang/Runnable;)V

    .line 3349
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda24;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->setOnCancelButtonClickedListener(Ljava/lang/Runnable;)V

    .line 3352
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->init()V

    return-void
.end method

.method private destroyCameraView(Z)V
    .locals 2

    .line 3875
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3877
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda22;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->saveLastCameraBitmap(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3886
    :cond_0
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->saveLastCameraBitmap(Ljava/lang/Runnable;)V

    .line 3889
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->destroy(ZLjava/lang/Runnable;)V

    .line 3890
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3891
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    :cond_1
    :goto_0
    return-void
.end method

.method private destroyGalleryListView()V
    .locals 2

    .line 2670
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-nez v0, :cond_0

    return-void

    .line 2673
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2674
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    .line 2675
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 2676
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2677
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    .line 2679
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v1, :cond_2

    .line 2680
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 2681
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2683
    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    return-void
.end method

.method public static destroyInstance()V
    .locals 2

    .line 179
    sget-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 180
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 182
    sput-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    return-void
.end method

.method private destroyPhotoFilterView()V
    .locals 3

    .line 3680
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-nez v0, :cond_0

    return-void

    .line 3683
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->shutdown()V

    .line 3684
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->setFilterView(Lorg/telegram/ui/Components/PhotoFilterView;)V

    .line 3685
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3686
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 3687
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3688
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    .line 3690
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setFilterTextureView(Landroid/view/TextureView;)V

    .line 3691
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    if-eqz v0, :cond_2

    .line 3692
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3693
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    .line 3695
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    if-eqz v0, :cond_3

    .line 3696
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3697
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    .line 3699
    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    .line 3700
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 3701
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3702
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterBitmap:Landroid/graphics/Bitmap;

    :cond_4
    return-void
.end method

.method private destroyPhotoPaintView()V
    .locals 3

    .line 3389
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-nez v0, :cond_0

    return-void

    .line 3392
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onCleanupEntities()V

    .line 3394
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->shutdown()V

    .line 3395
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3396
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3397
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3398
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewBitmap:Landroid/graphics/Bitmap;

    .line 3400
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    .line 3401
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 3402
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3403
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderView:Landroid/view/View;

    .line 3405
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewTextDim:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 3406
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3407
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewTextDim:Landroid/view/View;

    .line 3409
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderInputView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 3410
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3411
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderInputView:Landroid/view/View;

    .line 3413
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewEntitiesView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 3414
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3415
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewEntitiesView:Landroid/view/View;

    .line 3417
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewSelectionContainerView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 3418
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3419
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewSelectionContainerView:Landroid/view/View;

    :cond_6
    return-void
.end method

.method private getCameraFace()Z
    .locals 3

    .line 4082
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

    .line 3785
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    const-string v2, "cthumb.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3786
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

    .line 3789
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1

    .line 3791
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

    .line 1920
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->draftSavedHint:Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    if-nez v0, :cond_0

    .line 1921
    new-instance v0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->draftSavedHint:Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    .line 1922
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

    .line 1924
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->draftSavedHint:Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    return-object v0
.end method

.method public static getInstance(Landroid/app/Activity;I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;
    .locals 2

    .line 168
    sget-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    if-ne v1, p0, :cond_0

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    if-eq v1, p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 169
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    const/4 v0, 0x0

    .line 170
    sput-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    .line 172
    :cond_1
    sget-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-nez v0, :cond_2

    .line 173
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;-><init>(Landroid/app/Activity;I)V

    sput-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    .line 175
    :cond_2
    sget-object p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    return-object p0
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

    .line 1875
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1876
    instance-of v1, p1, Landroid/text/Spanned;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1877
    move-object v1, p1

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Lorg/telegram/ui/Components/URLSpanUserMention;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/URLSpanUserMention;

    move v3, v2

    .line 1878
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 1879
    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 1882
    :try_start_0
    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1883
    iget v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1884
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1885
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

    .line 1893
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-wide/32 v5, 0xbdb28

    if-ge v2, v4, :cond_5

    .line 1894
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

    .line 1899
    invoke-interface {p1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1900
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    .line 1901
    instance-of v7, v4, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v7, :cond_3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v7, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

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

    .line 1902
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v3, v1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-eq v3, v1, :cond_6

    .line 1909
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1910
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    .line 1911
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_6

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

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

    .line 1912
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method private hidePhotoPaintView()V
    .locals 3

    .line 3222
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3225
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewTouchable:Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

    .line 3226
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getTopLayout()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3227
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getTopLayout()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 3228
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBottomLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3229
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBottomLayout()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3230
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getWeightChooserView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 3231
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3232
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    return-void
.end method

.method private initViews()V
    .locals 27

    move-object/from16 v7, p0

    .line 1402
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 1404
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    .line 1405
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    const/4 v11, 0x1

    if-lt v9, v10, :cond_0

    .line 1406
    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 1407
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1432
    :cond_0
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1434
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1436
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$3;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$3;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1458
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1459
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1460
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1469
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1470
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1471
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navbarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1473
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$5;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$5;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    .line 1480
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    .line 1481
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1482
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda11;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1487
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1488
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    const/4 v14, -0x1

    const/16 v15, 0x77

    invoke-static {v14, v14, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1490
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    const/4 v6, 0x0

    if-ne v1, v11, :cond_1

    move v1, v6

    goto :goto_0

    :cond_1
    const v1, -0xe0e0e1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    if-lt v9, v10, :cond_2

    .line 1492
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$6;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$6;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1498
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 1500
    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda20;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {v0, v8, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    .line 1501
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$7;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$7;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    .line 1560
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda21;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setOnTapListener(Ljava/lang/Runnable;)V

    .line 1570
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setVisibility(I)V

    .line 1571
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda29;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->whenError(Ljava/lang/Runnable;)V

    .line 1575
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v14, v14, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1577
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    invoke-static {v14, v14, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1579
    new-instance v5, Lorg/telegram/ui/Stories/recorder/StoryRecorder$8;

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    iget-object v4, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v5

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    move-object v2, v8

    move-object v15, v5

    move-object/from16 v5, v17

    move v10, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$8;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;ILorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v15, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    .line 1586
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda53;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setOnHeightUpdate(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 1591
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda51;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setOnPeriodUpdate(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 1598
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda50;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setOnPremiumHint(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 1599
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda47;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setOnKeyboardOpen(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 1605
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getTimelineView()Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    .line 1606
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1607
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 1608
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    .line 1609
    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    const/16 v18, -0x1

    const/16 v19, 0x3a

    const/16 v20, 0x57

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1610
    new-instance v0, Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Stories/recorder/VideoTimeView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    .line 1611
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1612
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    invoke-virtual {v0, v10, v10}, Lorg/telegram/ui/Stories/recorder/VideoTimeView;->show(ZZ)V

    .line 1613
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    const/16 v19, 0x19

    const/16 v20, 0x37

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1614
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    const/16 v19, 0x53

    const/16 v20, 0x57

    const/16 v24, 0x40

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1615
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    const/16 v19, -0x1

    const/16 v22, 0xc8

    const/16 v24, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1617
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    .line 1618
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrGoBack:I

    const-string v2, "AccDescrGoBack"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1619
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1620
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_photo_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1621
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v14, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1622
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    const v6, 0x20ffffff

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1623
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda15;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1629
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    const/16 v2, 0x33

    const/16 v15, 0x38

    invoke-static {v15, v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1631
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x14

    .line 1632
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1633
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 1634
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1635
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1636
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->RecorderNewStory:I

    const-string v2, "RecorderNewStory"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1637
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v13, v5, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1638
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 1639
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1640
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 1641
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x60

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 1642
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v19, 0x38

    const/16 v20, 0x37

    const/16 v21, 0x47

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1644
    new-instance v4, Lorg/telegram/ui/Stories/recorder/DownloadButton;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda54;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v16, v0

    move-object v0, v4

    move-object/from16 v18, v1

    move-object v1, v8

    move-object v13, v4

    move-object/from16 v4, v18

    move v6, v5

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/DownloadButton;-><init>(Landroid/content/Context;Lorg/telegram/messenger/Utilities$Callback;ILandroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v13, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    .line 1648
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x35

    invoke-static {v15, v15, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1650
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2, v11}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    const/high16 v2, -0x3d780000    # -68.0f

    .line 1651
    invoke-virtual {v0, v6, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    .line 1652
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    .line 1653
    invoke-virtual {v0, v10}, Lorg/telegram/ui/Stories/recorder/HintView2;->setBounce(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    .line 1654
    invoke-virtual {v0, v11, v11, v10}, Lorg/telegram/ui/Stories/recorder/HintView2;->setAnimatedTextHacks(ZZZ)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1655
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v10, v3, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 1656
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x30

    const/16 v24, 0x34

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1658
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    .line 1659
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1660
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_3

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    if-eqz v2, :cond_3

    sget v2, Lorg/telegram/messenger/R$drawable;->media_unmute:I

    goto :goto_1

    :cond_3
    sget v2, Lorg/telegram/messenger/R$drawable;->media_mute:I

    :goto_1
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 1661
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v14, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1662
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    const v2, 0x20ffffff

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1663
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda9;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1673
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1674
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1675
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v20, 0x38

    const/16 v21, 0x38

    const/16 v22, 0x35

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x30

    const/16 v26, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1677
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    .line 1678
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1679
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v14, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1680
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    const v2, 0x20ffffff

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1681
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda12;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1697
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1698
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1699
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-static {v15, v15, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1701
    new-instance v0, Lorg/telegram/ui/Stories/recorder/ToggleButton;

    sget v2, Lorg/telegram/messenger/R$drawable;->media_dual_camera2_shadow:I

    sget v3, Lorg/telegram/messenger/R$drawable;->media_dual_camera2:I

    invoke-direct {v0, v8, v2, v3}, Lorg/telegram/ui/Stories/recorder/ToggleButton;-><init>(Landroid/content/Context;II)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    .line 1702
    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda13;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1716
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailableStatic(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v10

    goto :goto_2

    :cond_4
    move v2, v12

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1717
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    invoke-static {v15, v15, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1719
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, v11}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    const/high16 v1, -0x3e600000    # -20.0f

    .line 1720
    invoke-virtual {v0, v6, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    const-wide/16 v1, 0x1388

    .line 1721
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    .line 1722
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Stories/recorder/HintView2;->setCloseButton(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->StoryCameraDualHint:I

    .line 1723
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget-object v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda44;->INSTANCE:Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda44;

    .line 1724
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1725
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v3, v10, v4, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 1726
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x30

    const/16 v23, 0x0

    const/16 v24, 0x34

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1728
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    const/high16 v3, 0x41e00000    # 28.0f

    const/4 v4, 0x0

    .line 1729
    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    .line 1730
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    .line 1731
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->savedDualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1732
    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    const/16 v24, 0x0

    const/16 v25, 0x34

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1734
    new-instance v0, Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    .line 1735
    invoke-direct {v7, v10, v10}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showVideoTimer(ZZ)V

    .line 1736
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    const/16 v21, 0x2d

    const/16 v22, 0x37

    const/16 v23, 0x38

    const/16 v25, 0x38

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x15

    if-lt v9, v0, :cond_5

    .line 1739
    invoke-static {v10}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    .line 1742
    :cond_5
    new-instance v0, Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Stories/recorder/RecordControl;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    .line 1743
    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControlDelegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setDelegate(Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;)V

    .line 1744
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    iget-boolean v3, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/RecordControl;->startAsVideo(Z)V

    .line 1745
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    const/16 v4, 0x64

    const/16 v5, 0x57

    invoke-static {v14, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1746
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    .line 1747
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->StoryCameraHint2:I

    .line 1748
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    const/high16 v3, 0x43a00000    # 320.0f

    .line 1749
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidth(F)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    .line 1750
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1751
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1752
    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x50

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x64

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1754
    new-instance v0, Lorg/telegram/ui/Components/ZoomControlView;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/ZoomControlView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    .line 1755
    iput-boolean v10, v0, Lorg/telegram/ui/Components/ZoomControlView;->enabledTouch:Z

    const/4 v1, 0x0

    .line 1756
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1757
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    const/16 v21, 0x32

    const/16 v22, 0x51

    const/16 v26, 0x6c

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1758
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda58;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ZoomControlView;->setDelegate(Lorg/telegram/ui/Components/ZoomControlView$ZoomControlViewDelegate;)V

    .line 1764
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    const/4 v1, 0x0

    iput v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    invoke-virtual {v0, v1, v10}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    .line 1766
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    .line 1767
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda48;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->setOnSwitchModeListener(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 1777
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda49;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->setOnSwitchingModeListener(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 1780
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navbarContainer:Landroid/widget/FrameLayout;

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    invoke-static {v14, v14, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1782
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintTextView;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Stories/recorder/HintTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    .line 1783
    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navbarContainer:Landroid/widget/FrameLayout;

    const/16 v21, 0x20

    const/16 v22, 0x11

    const/16 v23, 0x8

    const/16 v25, 0x8

    const/16 v26, 0x8

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1785
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    .line 1786
    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1787
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda52;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->setOnClickListener(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 1863
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navbarContainer:Landroid/widget/FrameLayout;

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    const/16 v2, 0x34

    const/16 v3, 0x17

    invoke-static {v14, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1865
    new-instance v0, Lorg/telegram/ui/Stories/recorder/TrashView;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Stories/recorder/TrashView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    const/4 v1, 0x0

    .line 1866
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1867
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1868
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    const/16 v18, -0x1

    const/16 v19, 0x78

    const/16 v20, 0x51

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x10

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1870
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v8, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewHighlight:Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    .line 1871
    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x77

    invoke-static {v14, v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private isGalleryOpen()Z
    .locals 4

    .line 2828
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

    .line 186
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

.method private synthetic lambda$animateContainerBack$31(FFLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 2644
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 2645
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    mul-float/2addr p1, p3

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY(F)V

    .line 2646
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY2(F)V

    return-void
.end method

.method private synthetic lambda$animateGalleryListView$34(Z)V
    .locals 0

    .line 2852
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    return-void
.end method

.method private synthetic lambda$animateGalleryListView$35(FLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    if-eqz p3, :cond_0

    return-void

    .line 2898
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2899
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->ignoreScroll:Z

    const/4 p1, 0x0

    .line 2900
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2901
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    return-void
.end method

.method private synthetic lambda$animateGalleryListView$36(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2907
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

    .line 526
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    .line 527
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->checkBackgroundVisibility()V

    .line 528
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 529
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$close$1(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 491
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onClosePrepareListener:Lorg/telegram/messenger/Utilities$Callback3;

    const/4 v0, 0x0

    .line 492
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareClosing:Z

    .line 493
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    return-void
.end method

.method private synthetic lambda$createCameraView$43()V
    .locals 3

    .line 3762
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 3763
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

    .line 3766
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v1, :cond_1

    move-object v2, v0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setCameraFlashModeIcon(Ljava/lang/String;Z)V

    .line 3767
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 3768
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$createFilterPhotoView$41(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 3566
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilter(Ljava/lang/Runnable;)V

    const/4 p1, -0x1

    const/4 v0, 0x1

    .line 3567
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    return-void
.end method

.method private synthetic lambda$createFilterPhotoView$42(Landroid/view/View;)V
    .locals 1

    const/4 p1, -0x1

    const/4 v0, 0x1

    .line 3581
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    return-void
.end method

.method private synthetic lambda$createGalleryListView$32()V
    .locals 1

    const/4 v0, 0x0

    .line 2724
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    const/4 v0, 0x0

    .line 2725
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return-void
.end method

.method private synthetic lambda$createGalleryListView$33(ZLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p2, :cond_7

    .line 2728
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->scrollingY:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isGalleryOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 2733
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_2

    instance-of p1, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-nez p1, :cond_1

    goto :goto_0

    .line 2736
    :cond_1
    check-cast p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 2737
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createPhotoPaintView()V

    .line 2738
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-boolean v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    .line 2739
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object p2, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->createPhoto(Ljava/lang/String;Z)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->appearAnimation(Landroid/view/View;)V

    .line 2785
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    goto :goto_2

    :cond_2
    :goto_0
    return-void

    .line 2787
    :cond_3
    instance-of p1, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz p1, :cond_4

    .line 2788
    check-cast p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 2789
    iget-boolean p1, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    .line 2790
    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 2791
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p2, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 2792
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object p3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    .line 2793
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromGallery:Z

    goto :goto_1

    .line 2794
    :cond_4
    instance-of p1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_6

    .line 2795
    check-cast p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 2796
    iget-object p1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-nez p1, :cond_5

    .line 2797
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    sget p3, Lorg/telegram/messenger/R$raw;->error:I

    const-string v0, "Failed to load draft"

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->showToast(ILjava/lang/CharSequence;)V

    .line 2798
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/DraftsController;->delete(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    return-void

    .line 2802
    :cond_5
    iget-boolean p1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    .line 2803
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 2804
    iput-object p3, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    .line 2805
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromGallery:Z

    .line 2808
    :cond_6
    :goto_1
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showVideoTimer(ZZ)V

    .line 2809
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->switchMode(Z)V

    .line 2810
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/RecordControl;->startAsVideo(Z)V

    .line 2812
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    .line 2813
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    .line 2816
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-eqz p1, :cond_7

    .line 2817
    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGalleryScrollPosition:Landroid/os/Parcelable;

    .line 2818
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->getSelectedAlbum()Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    :cond_7
    :goto_3
    return-void
.end method

.method private synthetic lambda$createPhotoPaintView$39()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 3347
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    return-void
.end method

.method private synthetic lambda$createPhotoPaintView$40()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 3350
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    return-void
.end method

.method private synthetic lambda$destroyCameraView$47()V
    .locals 3

    .line 3878
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3879
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3880
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->destroy(ZLjava/lang/Runnable;)V

    .line 3881
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3882
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    :cond_0
    return-void
.end method

.method private synthetic lambda$destroyCameraView$48()V
    .locals 2

    .line 3887
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$initViews$10(Landroid/view/View;)V
    .locals 0

    .line 1624
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    if-eqz p1, :cond_0

    return-void

    .line 1627
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onBackPressed()Z

    return-void
.end method

.method private synthetic lambda$initViews$11(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    .line 1645
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyPaint(Z)V

    .line 1646
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilter(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initViews$12(Landroid/view/View;)V
    .locals 3

    .line 1664
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1667
    :cond_0
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    .line 1668
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_1

    const-string v0, "StorySoundMuted"

    goto :goto_0

    :cond_1
    const-string v0, "StorySoundNotMuted"

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1669
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1670
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setIconMuted(ZZ)V

    .line 1671
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->mute(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$initViews$13(Landroid/view/View;)V
    .locals 1

    .line 1682
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1685
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 1689
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 1690
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->getNextFlashMode()Ljava/lang/String;

    move-result-object p1

    .line 1691
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1694
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraSession;->setCurrentFlashMode(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1695
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setCameraFlashModeIcon(Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$14(Landroid/view/View;)V
    .locals 2

    .line 1703
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz p1, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1706
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toggleDual()V

    .line 1707
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isDual()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ToggleButton;->setValue(Z)V

    .line 1709
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 1710
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "storydualhint"

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1711
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->savedDualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1712
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "storysvddualhint"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1714
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->savedDualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static synthetic lambda$initViews$15()V
    .locals 4

    .line 1724
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

.method private synthetic lambda$initViews$16(F)V
    .locals 1

    .line 1759
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v0, :cond_0

    .line 1760
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraView;->setZoom(F)V

    :cond_0
    const/4 p1, 0x1

    .line 1762
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showZoomControls(ZZ)V

    return-void
.end method

.method private synthetic lambda$initViews$17(Ljava/lang/Boolean;)V
    .locals 1

    .line 1768
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingPhoto:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingVideo:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1772
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    const/4 v0, 0x1

    .line 1773
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showVideoTimer(ZZ)V

    .line 1774
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->switchMode(Z)V

    .line 1775
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->startAsVideo(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$18(Ljava/lang/Float;)V
    .locals 1

    .line 1778
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->startAsVideoT(F)V

    return-void
.end method

.method private synthetic lambda$initViews$19(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V
    .locals 1

    .line 1812
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_0

    .line 1813
    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    :cond_0
    return-void
.end method

.method private synthetic lambda$initViews$20(Ljava/lang/Runnable;)V
    .locals 0

    .line 1831
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    .line 1832
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->upload(Z)V

    return-void
.end method

.method private synthetic lambda$initViews$21(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Runnable;)V
    .locals 3

    .line 1819
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    return-void

    .line 1822
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 1823
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    .line 1824
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->save(ILorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V

    .line 1825
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iput-boolean p3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->pinned:Z

    .line 1826
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->allowScreenshots:Z

    .line 1827
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1828
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1829
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-boolean v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedPrivacy:Z

    .line 1830
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda37;

    invoke-direct {p1, p0, p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilter(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initViews$22(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1836
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    const/4 p1, 0x0

    .line 1837
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    return-void
.end method

.method private synthetic lambda$initViews$23(Ljava/lang/Integer;)V
    .locals 5

    .line 1788
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    return-void

    .line 1791
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clearFocus()V

    .line 1792
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_4

    .line 1793
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1794
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->dismiss()V

    .line 1795
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    .line 1797
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->isShareEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1798
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->showFailedVideo()V

    .line 1799
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 1800
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->shareButton:Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shiftDp:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shiftDp:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    .line 1803
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v1, :cond_3

    .line 1804
    iput-boolean v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedPrivacy:Z

    .line 1805
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilter(Ljava/lang/Runnable;)V

    .line 1806
    invoke-direct {p0, v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->upload(Z)V

    goto/16 :goto_0

    .line 1808
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1, v2, v4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 1809
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    .line 1810
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setValue(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda55;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    .line 1811
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->whenDismiss(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    .line 1816
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isEdit(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    .line 1817
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getUsersFrom(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setWarnUsers(Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda46;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    .line 1818
    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->whenSelectedRules(Lorg/telegram/messenger/Utilities$Callback4;Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    .line 1835
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1839
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    goto :goto_0

    .line 1841
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    .line 1842
    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    .line 1843
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz p1, :cond_8

    .line 1844
    iput-boolean v3, p1, Lorg/telegram/ui/Stories/recorder/PaintView;->enteredThroughText:Z

    .line 1845
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->openPaint()V

    goto :goto_0

    .line 1847
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 1848
    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    .line 1849
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz p1, :cond_8

    .line 1850
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->openText()V

    .line 1851
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iput-boolean v4, p1, Lorg/telegram/ui/Stories/recorder/PaintView;->enteredThroughText:Z

    goto :goto_0

    .line 1853
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 1854
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createPhotoPaintView()V

    .line 1855
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hidePhotoPaintView()V

    .line 1856
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz p1, :cond_8

    .line 1857
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->openStickers()V

    goto :goto_0

    .line 1859
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_8

    .line 1860
    invoke-virtual {p0, v4, v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    :cond_8
    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$4(Landroid/view/View;)V
    .locals 0

    .line 1483
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->noCameraPermission:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1484
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestCameraPermission(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initViews$5()V
    .locals 2

    .line 1561
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1564
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    .line 1565
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_1

    .line 1566
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->openText()V

    .line 1567
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->enteredThroughText:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$6()V
    .locals 2

    .line 1572
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->setShareEnabled(Z)V

    .line 1573
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->showFailedVideo()V

    return-void
.end method

.method private synthetic lambda$initViews$7(Ljava/lang/Integer;)V
    .locals 2

    .line 1587
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 1588
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

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

    :cond_0
    return-void
.end method

.method private synthetic lambda$initViews$8(Ljava/lang/Integer;)V
    .locals 2

    .line 1592
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_0

    .line 1593
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    .line 1594
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

    .line 1600
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 1601
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 1602
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$navigateToPreviewWithPlayerAwait$30(Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    .line 2530
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    .line 2531
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->afterPlayerAwait:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 2532
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->afterPlayerAwait:Ljava/lang/Runnable;

    .line 2533
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    .line 2534
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$onCloseDone$3()V
    .locals 2

    .line 621
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onNavigateStart$37()V
    .locals 2

    .line 2951
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$onNavigateStart$38(Lorg/telegram/ui/Components/FilterGLThread;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3002
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-eqz v0, :cond_0

    .line 3003
    invoke-static {v0}, Lorg/telegram/ui/Components/FilterShaders;->getFilterShadersDelegate(Lorg/telegram/messenger/MediaController$SavedFilterState;)Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterGLThread;->setFilterGLThreadDelegate(Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResultInternal$51(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 4063
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4064
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

    .line 4065
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4067
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onResumeInternal$50()V
    .locals 1

    const/4 v0, 0x0

    .line 3994
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestCameraPermission(Z)V

    return-void
.end method

.method private synthetic lambda$openEdit$0(Z)V
    .locals 2

    .line 454
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateOpenTo(FZLjava/lang/Runnable;)V

    .line 455
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appear(ZZ)V

    return-void
.end method

.method private synthetic lambda$requestCameraPermission$49(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 3923
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3924
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

    .line 3925
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3927
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$saveLastCameraBitmap$44(Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V
    .locals 9

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3805
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

    .line 3806
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/16 p1, 0x50

    .line 3808
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

    .line 3811
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v4, 0x7

    const/4 v5, 0x1

    .line 3813
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 3814
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    const-string v2, "cthumb.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3815
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3816
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x57

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3817
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 3818
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3824
    :catchall_0
    :cond_1
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setCameraFlashModeIcon$26()V
    .locals 2

    .line 2079
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$showDismissEntry$45(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 3836
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez p1, :cond_0

    return-void

    .line 3839
    :cond_0
    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showSavedDraftHint:Z

    const/4 p1, 0x0

    .line 3840
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilter(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3841
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyPaint(Z)V

    .line 3842
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoFilterView()V

    .line 3843
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 3844
    invoke-virtual {v1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->destroy(Z)V

    .line 3845
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    .line 3846
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 3847
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareThumb(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)Ljava/io/File;

    .line 3848
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object p1

    .line 3849
    iget-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-eqz v2, :cond_1

    .line 3850
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->edit(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    goto :goto_0

    .line 3852
    :cond_1
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->append(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 3854
    :goto_0
    invoke-virtual {p0, v0, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    return-void
.end method

.method private synthetic lambda$showDismissEntry$46(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3858
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-eqz p1, :cond_0

    .line 3859
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

    .line 3860
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 3862
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    return-void
.end method

.method private synthetic lambda$showPremiumPeriodBulletin$52(Landroid/content/DialogInterface;)V
    .locals 2

    .line 4156
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 4157
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showPremiumPeriodBulletin$53()V
    .locals 3

    .line 4140
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 4141
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 4143
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$19;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    .line 4155
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4160
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$showVideoTimer$27(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 2430
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;->setRecording(ZZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showZoomControls$28()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2452
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showZoomControls(ZZ)V

    const/4 v0, 0x0

    .line 2453
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$showZoomControls$29()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2480
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showZoomControls(ZZ)V

    const/4 v0, 0x0

    .line 2481
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$upload$24()V
    .locals 1

    const/4 v0, 0x1

    .line 1975
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    return-void
.end method

.method private synthetic lambda$upload$25(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 1951
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1952
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->show()V

    .line 1953
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    .line 1955
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->closingSourceProvider:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;->getView()Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    if-eqz p1, :cond_3

    .line 1957
    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->type:I

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    .line 1958
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->updateBackground()V

    .line 1959
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    if-ne v2, v0, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const v2, -0xe0e0e1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1960
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1961
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->rounding:F

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    .line 1962
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->hide()V

    .line 1964
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    if-le p1, v0, :cond_3

    const p1, 0x81e0

    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    .line 1968
    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->closingSourceProvider:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;

    .line 1970
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    instance-of v1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_4

    .line 1971
    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    iget-object p1, p1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 1978
    :cond_4
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    goto :goto_2

    .line 1981
    :cond_5
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    :goto_2
    return-void
.end method

.method private onCloseDone()V
    .locals 5

    const/4 v0, 0x0

    .line 601
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isShown:Z

    .line 602
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    .line 603
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v1, :cond_1

    .line 604
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingVideo:Z

    if-eqz v1, :cond_0

    .line 605
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;Z)V

    .line 607
    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyCameraView(Z)V

    .line 609
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 610
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 612
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoPaintView()V

    .line 613
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoFilterView()V

    .line 614
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputFile:Ljava/io/File;

    if-eqz v1, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSend:Z

    if-nez v3, :cond_3

    .line 616
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :catch_0
    :cond_3
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputFile:Ljava/io/File;

    .line 620
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    const-wide/16 v3, 0x10

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 625
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    if-eqz v1, :cond_4

    .line 626
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->show()V

    .line 628
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->whenOpenDone:Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    .line 629
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->whenOpenDone:Ljava/lang/Runnable;

    .line 631
    :cond_5
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGalleryScrollPosition:Landroid/os/Parcelable;

    .line 632
    sget-object v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-eqz v1, :cond_6

    .line 633
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    .line 635
    :cond_6
    sput-object v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onCloseListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 638
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 639
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onCloseListener:Ljava/lang/Runnable;

    .line 641
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    if-eqz v0, :cond_8

    .line 642
    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    :cond_8
    return-void
.end method

.method private onNavigateEnd(II)V
    .locals 8

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 3042
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyCameraView(Z)V

    .line 3043
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3044
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3045
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3046
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3047
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateRecording(ZZ)V

    .line 3048
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setAwakeLock(Z)V

    .line 3050
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-nez p2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    if-ne p1, v3, :cond_2

    .line 3052
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3053
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setVisibility(I)V

    .line 3054
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3055
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3056
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3058
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setVisibility(I)V

    .line 3059
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3060
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoPaintView()V

    .line 3061
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoFilterView()V

    .line 3062
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3063
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyGalleryListView()V

    .line 3064
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 3065
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3066
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-ne p2, v3, :cond_4

    .line 3069
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createPhotoPaintView()V

    .line 3070
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hidePhotoPaintView()V

    .line 3071
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createFilterPhotoView()V

    .line 3072
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 3073
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 3074
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 3075
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 3076
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_3

    iget-wide v4, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const-wide/16 v6, 0x7530

    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    move v1, v0

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-nez p2, :cond_5

    .line 3078
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showSavedDraftHint:Z

    if-eqz p1, :cond_5

    .line 3079
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getDraftSavedHint()Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3080
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getDraftSavedHint()Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->show()V

    .line 3081
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->updateGalleryImage()V

    .line 3083
    :cond_5
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showSavedDraftHint:Z

    .line 3085
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    if-eqz p1, :cond_8

    if-ne p2, v3, :cond_7

    .line 3086
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    if-ne v1, v3, :cond_7

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v1, v0

    :goto_1
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->setAllowTouch(Z)V

    .line 3092
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    if-eqz p1, :cond_a

    if-eq p2, v3, :cond_9

    move v0, v3

    .line 3093
    :cond_9
    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTouches:Z

    :cond_a
    return-void
.end method

.method private onNavigateStart(II)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 2934
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestCameraPermission(Z)V

    .line 2935
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2936
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    if-eqz v3, :cond_0

    .line 2937
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Stories/recorder/RecordControl;->stopRecordingLoading(Z)V

    .line 2939
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2940
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2941
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2942
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5, v1}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;->setDuration(JZ)V

    .line 2944
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v3, :cond_1

    .line 2945
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->destroy(Z)V

    .line 2946
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    :cond_1
    const/16 v3, 0x8

    if-nez p1, :cond_3

    .line 2950
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setCameraFlashModeIcon(Ljava/lang/String;Z)V

    .line 2951
    new-instance v4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda32;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {p0, v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->saveLastCameraBitmap(Ljava/lang/Runnable;)V

    .line 2952
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->draftSavedHint:Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    if-eqz v4, :cond_2

    .line 2953
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2955
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 2956
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v4, :cond_3

    .line 2957
    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_3
    if-eq p2, v1, :cond_4

    if-ne p1, v1, :cond_b

    .line 2961
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    if-ne p2, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    :cond_5
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->setEntry(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 2962
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v0, :cond_7

    .line 2963
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2964
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_6

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setIconMuted(ZZ)V

    .line 2965
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v4, 0x60

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    goto :goto_1

    .line 2967
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v4, 0x30

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 2969
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2971
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2972
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setVisibility(I)V

    .line 2973
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2974
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 2977
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v4, :cond_8

    const v4, 0x15180

    goto :goto_2

    :cond_8
    iget v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    :goto_2
    invoke-virtual {v0, v4, v2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setPeriod(IZ)V

    .line 2978
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v4, :cond_a

    iget-boolean v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v4, :cond_9

    goto :goto_3

    :cond_9
    move v4, v2

    goto :goto_4

    :cond_a
    :goto_3
    move v4, v1

    :goto_4
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setPeriodVisible(Z)V

    :cond_b
    if-ne p2, v1, :cond_15

    .line 2981
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_c

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v0, :cond_c

    sget v0, Lorg/telegram/messenger/R$string;->Done:I

    const-string v4, "Done"

    goto :goto_5

    :cond_c
    sget v0, Lorg/telegram/messenger/R$string;->Next:I

    const-string v4, "Next"

    :goto_5
    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->setShareText(Ljava/lang/String;)V

    .line 2982
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->setShareEnabled(Z)V

    .line 2984
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewAlreadySet:Z

    if-nez p2, :cond_d

    .line 2985
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 2987
    :cond_d
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewAlreadySet:Z

    .line 2988
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p2, :cond_11

    iget-boolean v0, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-eqz v0, :cond_11

    .line 2989
    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-eqz p2, :cond_e

    .line 2990
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoPaintView()V

    .line 2991
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createPhotoPaintView()V

    .line 2992
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hidePhotoPaintView()V

    .line 2994
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-eqz p2, :cond_f

    .line 2995
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoFilterView()V

    .line 2996
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createFilterPhotoView()V

    .line 2998
    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_10

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-eqz p2, :cond_10

    .line 2999
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getTextureView()Lorg/telegram/ui/Components/VideoEditTextureView;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 3001
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda57;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/VideoEditTextureView;->setDelegate(Lorg/telegram/ui/Components/VideoEditTextureView$VideoEditTextureViewDelegate;)V

    .line 3008
    :cond_10
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 3010
    :cond_11
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clear()V

    .line 3012
    :goto_6
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_12

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    if-eqz v0, :cond_12

    sget v0, Lorg/telegram/messenger/R$drawable;->media_unmute:I

    goto :goto_7

    :cond_12
    sget v0, Lorg/telegram/messenger/R$drawable;->media_mute:I

    :goto_7
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 3013
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setVisibility(I)V

    .line 3014
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v0, :cond_13

    move v3, v2

    :cond_13
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3015
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3016
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_14

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v0, :cond_14

    sget v0, Lorg/telegram/messenger/R$string;->RecorderEditStory:I

    goto :goto_8

    :cond_14
    sget v0, Lorg/telegram/messenger/R$string;->RecorderNewStory:I

    :goto_8
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 3017
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    .line 3018
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaDataController;->checkFeaturedEmoji()V

    :cond_15
    if-ne p1, v1, :cond_16

    .line 3022
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->hidePeriodPopup()V

    .line 3023
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 3025
    :cond_16
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    if-eqz p1, :cond_17

    .line 3026
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->setAllowTouch(Z)V

    .line 3028
    :cond_17
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 3029
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->savedDualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz p1, :cond_18

    .line 3030
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 3032
    :cond_18
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    .line 3034
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    if-eqz p1, :cond_19

    .line 3035
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->closeKeyboard()V

    .line 3036
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iput-boolean v1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTouches:Z

    :cond_19
    return-void
.end method

.method private onOpenDone()V
    .locals 3

    const/4 v0, 0x1

    .line 581
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isShown:Z

    const/4 v1, 0x0

    .line 582
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSend:Z

    .line 583
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    if-ne v1, v0, :cond_0

    .line 584
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 585
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 586
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 587
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 588
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 589
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 592
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->whenOpenDone:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 593
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 594
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->whenOpenDone:Ljava/lang/Runnable;

    goto :goto_0

    .line 596
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onResumeInternal()V

    :goto_0
    return-void
.end method

.method public static onPause()V
    .locals 1

    .line 4019
    sget-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-eqz v0, :cond_0

    .line 4020
    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onPauseInternal()V

    :cond_0
    return-void
.end method

.method private onPauseInternal()V
    .locals 3

    const/4 v0, 0x0

    .line 4024
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyCameraView(Z)V

    .line 4025
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    if-eqz v1, :cond_0

    .line 4026
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onPause()V

    .line 4028
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 4029
    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    :cond_1
    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 4034
    sget-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-eqz v0, :cond_0

    .line 4035
    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onRequestPermissionsResultInternal(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method private onRequestPermissionsResultInternal(I[Ljava/lang/String;[I)V
    .locals 3

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 4040
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

    .line 4042
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->noCameraPermission:Z

    if-eqz p3, :cond_4

    .line 4043
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez p1, :cond_4

    .line 4044
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4045
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4046
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createCameraView()V

    goto :goto_1

    .line 4048
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda26;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x72

    if-ne p1, v1, :cond_3

    if-eqz p3, :cond_4

    .line 4053
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    .line 4054
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    goto :goto_1

    :cond_3
    const/16 p2, 0x70

    if-ne p1, p2, :cond_4

    if-nez p3, :cond_4

    .line 4058
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    const/16 p3, 0x48

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    .line 4059
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p2, p3, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PermissionNoCameraMicVideo:I

    const-string p3, "PermissionNoCameraMicVideo"

    .line 4060
    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    const-string p3, "PermissionOpenSettings"

    .line 4061
    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->ContactsPermissionAlertNotNow:I

    const-string p3, "ContactsPermissionAlertNotNow"

    .line 4070
    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 4071
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 4072
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :cond_4
    :goto_1
    return-void
.end method

.method public static onResume()V
    .locals 1

    .line 3984
    sget-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-eqz v0, :cond_0

    .line 3985
    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onResumeInternal()V

    :cond_0
    return-void
.end method

.method private onResumeInternal()V
    .locals 2

    .line 3991
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3993
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3994
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->whenOpenDone:Ljava/lang/Runnable;

    goto :goto_0

    .line 3996
    :cond_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestCameraPermission(Z)V

    .line 3999
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    if-eqz v0, :cond_2

    .line 4000
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onResume()V

    .line 4002
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    if-eqz v0, :cond_3

    .line 4003
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->updateGalleryImage()V

    .line 4005
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewHighlight:Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    if-eqz v0, :cond_4

    .line 4006
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->updateCount()V

    .line 4008
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_5

    .line 4009
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onResume()V

    .line 4011
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v0, :cond_6

    .line 4012
    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 4015
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

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    .line 3462
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoFilterView()V

    :cond_0
    const/16 v2, 0x8

    if-nez p2, :cond_1

    .line 3465
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    if-nez p1, :cond_2

    .line 3467
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v3, :cond_2

    .line 3468
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    if-ne p1, v0, :cond_3

    .line 3471
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3472
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3473
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3475
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3476
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3478
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v3, 0x0

    if-ne p2, v0, :cond_4

    move v4, v1

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setAllowCropping(Z)V

    if-eqz p2, :cond_5

    if-nez p1, :cond_6

    .line 3479
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz p1, :cond_6

    .line 3480
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->onAnimationStateChanged(Z)V

    .line 3482
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    if-eqz p1, :cond_9

    if-eq p2, v1, :cond_8

    if-ne p2, v0, :cond_7

    goto :goto_1

    :cond_7
    move v1, v3

    .line 3483
    :cond_8
    :goto_1
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->setAllowTouch(Z)V

    :cond_9
    return-void
.end method

.method private onSwitchEditModeStart(II)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    .line 3425
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3426
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3427
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v2, :cond_0

    .line 3428
    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->clearSelection()V

    .line 3430
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3431
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3433
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v2, :cond_1

    .line 3434
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3436
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-nez p2, :cond_3

    .line 3438
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v2, :cond_3

    .line 3439
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    const/4 v2, 0x1

    if-eqz p2, :cond_4

    if-nez p1, :cond_5

    .line 3441
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz p1, :cond_5

    .line 3442
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->onAnimationStateChanged(Z)V

    .line 3445
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz p1, :cond_7

    .line 3446
    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    if-eqz p2, :cond_6

    move v3, v2

    goto :goto_0

    :cond_6
    move v3, v1

    :goto_0
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    .line 3448
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    if-eq p2, v0, :cond_8

    move v0, v2

    goto :goto_1

    :cond_8
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    .line 3450
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    .line 3451
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz p1, :cond_9

    if-ne p2, v2, :cond_9

    const/4 p1, 0x0

    .line 3452
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilter(Ljava/lang/Runnable;)V

    .line 3454
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    if-eqz p1, :cond_a

    .line 3455
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->setAllowTouch(Z)V

    .line 3457
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    return-void
.end method

.method private orderPreviewViews()V
    .locals 1

    .line 3356
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3357
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 3359
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderInputView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3360
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 3362
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewTextDim:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 3363
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 3365
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewEntitiesView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 3366
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 3368
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewSelectionContainerView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 3369
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 3371
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    if-eqz v0, :cond_5

    .line 3372
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 3374
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    if-eqz v0, :cond_6

    .line 3375
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 3377
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    if-eqz v0, :cond_7

    .line 3378
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 3380
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    if-eqz v0, :cond_8

    .line 3381
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 3383
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewHighlight:Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    if-eqz v0, :cond_9

    .line 3384
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    :cond_9
    return-void
.end method

.method private prepareThumb(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)Ljava/io/File;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 1993
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    if-lez v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p2, :cond_1

    .line 1996
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    .line 1999
    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    :goto_0
    if-eqz v1, :cond_3

    .line 2001
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    if-eqz p2, :cond_4

    const v1, 0x3eaaaaab

    goto :goto_1

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2006
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 2007
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 2008
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2009
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2011
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 2012
    invoke-virtual {v4, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2013
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2014
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 2016
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 2018
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getTextureView()Lorg/telegram/ui/Components/VideoEditTextureView;

    move-result-object v6

    .line 2019
    iget-boolean v7, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v7, :cond_6

    if-eqz v6, :cond_6

    .line 2020
    invoke-virtual {v6}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2021
    invoke-virtual {v6, v0}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2023
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 2024
    invoke-virtual {v6, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, v6

    .line 2026
    :cond_5
    invoke-virtual {v4, v7, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 2027
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 2030
    :cond_6
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-eqz v0, :cond_7

    .line 2032
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2033
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v2

    .line 2034
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v2, v6

    .line 2035
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v2, 0x0

    .line 2036
    invoke-virtual {v4, v0, v2, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2037
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 2038
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2040
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2044
    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz v0, :cond_8

    .line 2045
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 2046
    invoke-virtual {v4, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2047
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2048
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    const/16 v0, 0x28

    const/16 v1, 0x16

    const/4 v2, 0x1

    .line 2051
    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2053
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v1

    .line 2055
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-eqz p2, :cond_9

    const/16 v4, 0x5f

    goto :goto_3

    :cond_9
    const/16 v4, 0x4b

    :goto_3
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v2, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v2

    .line 2057
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2059
    :goto_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz p2, :cond_a

    .line 2062
    iput-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    goto :goto_5

    .line 2064
    :cond_a
    iput-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    .line 2066
    :goto_5
    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    return-object v1

    :cond_b
    :goto_6
    return-object v0
.end method

.method private requestAudioPermission()Z
    .locals 4

    .line 3973
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    const-string v2, "android.permission.RECORD_AUDIO"

    .line 3974
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

    .line 3976
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

    .line 3904
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestedCameraPermission:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3907
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->noCameraPermission:Z

    .line 3909
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    const-string v1, "android.permission.CAMERA"

    .line 3910
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

    .line 3912
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->story_camera:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3913
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const v4, 0x3dffffff    # 0.12499999f

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3914
    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, -0xddddde

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v3, v4, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x40

    .line 3915
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 3916
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3917
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3918
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    const/16 v2, 0x48

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    .line 3919
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->PermissionNoCameraWithHint:I

    const-string v1, "PermissionNoCameraWithHint"

    .line 3920
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    const-string v1, "PermissionOpenSettings"

    .line 3921
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->ContactsPermissionAlertNotNow:I

    const-string v1, "ContactsPermissionAlertNotNow"

    .line 3930
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 3931
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 3932
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    .line 3935
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6f

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 3936
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestedCameraPermission:Z

    .line 3940
    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->noCameraPermission:Z

    if-nez p1, :cond_5

    .line 3941
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3942
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createCameraView()V

    goto :goto_1

    .line 3944
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private requestGalleryPermission()Z
    .locals 5

    .line 3950
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 3961
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 3962
    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v4, v1

    :cond_0
    if-eqz v4, :cond_1

    .line 3964
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x72

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    xor-int/lit8 v0, v4, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private saveCameraFace(Z)V
    .locals 2

    .line 4078
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

    .line 3796
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3800
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    .line 3801
    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3802
    sget-object v1, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

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

    .line 2342
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 2344
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2347
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

    .line 2349
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private setCameraFlashModeIcon(Ljava/lang/String;Z)V
    .locals 5

    .line 2071
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2072
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

    .line 2077
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2078
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda23;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2080
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 2082
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2083
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    return-void

    :cond_4
    const/4 v1, -0x1

    .line 2088
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

    .line 2099
    sget p1, Lorg/telegram/messenger/R$drawable;->media_photo_flash_off2:I

    .line 2100
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashOff:I

    const-string v3, "AccDescrCameraFlashOff"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2094
    :cond_9
    sget p1, Lorg/telegram/messenger/R$drawable;->media_photo_flash_auto2:I

    .line 2095
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashAuto:I

    const-string v3, "AccDescrCameraFlashAuto"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2090
    :cond_a
    sget p1, Lorg/telegram/messenger/R$drawable;->media_photo_flash_on2:I

    .line 2091
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashOn:I

    const-string v3, "AccDescrCameraFlashOn"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    if-eqz p2, :cond_b

    .line 2103
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButtonResId:I

    if-eq v1, p1, :cond_b

    .line 2104
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButtonResId:I

    invoke-static {v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;I)V

    goto :goto_3

    .line 2106
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButtonResId:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2108
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_c

    .line 2110
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    .line 2112
    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_4
    return-void
.end method

.method private showDismissEntry()V
    .locals 4

    .line 3831
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3832
    sget v1, Lorg/telegram/messenger/R$string;->DiscardChanges:I

    const-string v2, "DiscardChanges"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3833
    sget v1, Lorg/telegram/messenger/R$string;->PhotoEditorDiscardAlert:I

    const-string v2, "PhotoEditorDiscardAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3834
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v1, :cond_1

    .line 3835
    iget-boolean v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-eqz v1, :cond_0

    const-string v1, "StoryKeepDraft"

    goto :goto_0

    :cond_0
    const-string v1, "StorySaveDraft"

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3857
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-eqz v1, :cond_2

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
    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3864
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3865
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 3866
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 3867
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    .line 3868
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 3869
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3870
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

.method private showPremiumPeriodBulletin(I)V
    .locals 4

    .line 4137
    div-int/lit16 p1, p1, 0xe10

    .line 4138
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->fire_on:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "StoryPeriodPremium"

    .line 4139
    invoke-static {v3, p1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-static {p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 v0, 0x1

    .line 4161
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private showVideoTimer(ZZ)V
    .locals 2

    .line 2422
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerShown:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2426
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerShown:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 2428
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

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2432
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 2434
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 2435
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    if-nez p1, :cond_4

    .line 2437
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;->setRecording(ZZ)V

    :cond_4
    :goto_2
    return-void
.end method

.method private showZoomControls(ZZ)V
    .locals 8

    .line 2446
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

    .line 2448
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlHideRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 2449
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2451
    :cond_2
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda27;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlHideRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    return-void

    .line 2458
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_5

    .line 2459
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2461
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

    .line 2462
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xb4

    .line 2463
    invoke-virtual {p2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    .line 2465
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2467
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

    .line 2468
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$11;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$11;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2477
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    if-eqz p1, :cond_9

    .line 2479
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda28;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlHideRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_9
    return-void
.end method

.method private upload(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 1928
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyPaint(Z)V

    .line 1929
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v1, :cond_0

    .line 1930
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    return-void

    .line 1933
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoFilterView()V

    .line 1934
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareThumb(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)Ljava/io/File;

    .line 1935
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1936
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v0

    iput-boolean v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedCaption:Z

    .line 1937
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object v1, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    .line 1938
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v1, v2, p1}, Lorg/telegram/ui/Stories/StoriesController;->uploadStory(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    .line 1939
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-eqz v1, :cond_1

    .line 1940
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/DraftsController;->delete(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 1942
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->cancelCheckStickers()V

    const/4 v1, 0x0

    .line 1943
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 1945
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSend:Z

    .line 1946
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->forceBackgroundVisible:Z

    .line 1947
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->checkBackgroundVisibility()V

    .line 1949
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 1984
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->closingSourceProvider:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;

    if-eqz p1, :cond_2

    .line 1985
    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;->preLayout(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1987
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1989
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

    .line 4108
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4109
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public close(Z)V
    .locals 5

    .line 468
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isShown:Z

    if-nez v0, :cond_0

    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->dismiss()V

    .line 474
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    .line 477
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 478
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSend:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v3, :cond_2

    .line 479
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    .line 481
    :cond_2
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->destroy(Z)V

    .line 482
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 485
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onClosePrepareListener:Lorg/telegram/messenger/Utilities$Callback3;

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v4, :cond_5

    .line 486
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareClosing:Z

    if-eqz v1, :cond_4

    return-void

    .line 489
    :cond_4
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareClosing:Z

    .line 490
    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->release()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda42;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSend:Z

    .line 494
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 490
    invoke-interface {v0, v1, v2, p1}, Lorg/telegram/messenger/Utilities$Callback3;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 498
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    .line 499
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_6
    const/4 v0, 0x0

    .line 502
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {p0, v0, p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateOpenTo(FZLjava/lang/Runnable;)V

    .line 503
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    if-ne p1, v3, :cond_7

    .line 504
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 505
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appear(ZZ)V

    .line 508
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->removeNotificationObservers()V

    return-void
.end method

.method public closeToWhenSent(Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;)Lorg/telegram/ui/Stories/recorder/StoryRecorder;
    .locals 0

    .line 360
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->closingSourceProvider:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;

    return-object p0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 4087
    sget p2, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    if-ne p1, p2, :cond_2

    .line 4088
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    if-eqz p1, :cond_0

    .line 4089
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->updateGalleryImage()V

    .line 4091
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz p1, :cond_3

    sget-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 4092
    :goto_0
    sget-object p2, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 4093
    sget-object p2, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 4094
    iget p3, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget v1, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    if-ne p3, v1, :cond_1

    iget-boolean p3, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->videoOnly:Z

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->videoOnly:Z

    if-ne p3, v0, :cond_1

    .line 4095
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4100
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    if-ne p1, p2, :cond_3

    .line 4101
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    if-eqz p1, :cond_3

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showSavedDraftHint:Z

    if-nez p2, :cond_3

    .line 4102
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->updateGalleryImage()V

    :cond_3
    :goto_1
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1397
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public navigateTo(IZ)V
    .locals 11

    .line 2544
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2549
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    .line 2551
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 2552
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2555
    :cond_1
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onNavigateStart(II)V

    .line 2556
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-ne p1, v4, :cond_2

    .line 2557
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

    .line 2559
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showVideoTimer(ZZ)V

    if-eq p1, v4, :cond_5

    .line 2561
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    invoke-virtual {v1, v2, p2}, Lorg/telegram/ui/Stories/recorder/VideoTimeView;->show(ZZ)V

    :cond_5
    const/16 v1, 0xc

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p2, :cond_17

    .line 2564
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    .line 2566
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2568
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v6, :cond_7

    .line 2569
    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    if-nez p1, :cond_6

    move v9, v5

    goto :goto_2

    :cond_6
    move v9, v3

    :goto_2
    aput v9, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2571
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2572
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    if-nez p1, :cond_8

    move v9, v5

    goto :goto_3

    :cond_8
    move v9, v3

    :goto_3
    aput v9, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2573
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    if-ne p1, v4, :cond_9

    move v9, v5

    goto :goto_4

    :cond_9
    move v9, v3

    :goto_4
    aput v9, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2575
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    if-nez p1, :cond_a

    move v9, v5

    goto :goto_5

    :cond_a
    move v9, v3

    :goto_5
    aput v9, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2576
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    if-nez p1, :cond_b

    move v9, v5

    goto :goto_6

    :cond_b
    move v9, v3

    :goto_6
    aput v9, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2577
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    if-nez p1, :cond_c

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailable()Z

    move-result v9

    if-eqz v9, :cond_c

    move v9, v5

    goto :goto_7

    :cond_c
    move v9, v3

    :goto_7
    aput v9, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2578
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v4, [F

    const/16 v9, 0x18

    if-nez p1, :cond_d

    move v10, v3

    goto :goto_8

    :cond_d
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    :goto_8
    aput v10, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2579
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    if-nez p1, :cond_e

    move v10, v5

    goto :goto_9

    :cond_e
    move v10, v3

    :goto_9
    aput v10, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2580
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v4, [F

    if-nez p1, :cond_f

    move v9, v3

    goto :goto_a

    :cond_f
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    :goto_a
    aput v9, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2581
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2582
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    aput v5, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2583
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    if-nez p1, :cond_10

    iget-boolean v9, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-eqz v9, :cond_10

    move v9, v5

    goto :goto_b

    :cond_10
    move v9, v3

    :goto_b
    aput v9, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2584
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    if-ne p1, v4, :cond_11

    move v9, v5

    goto :goto_c

    :cond_11
    move v9, v3

    :goto_c
    aput v9, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2585
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v4, [F

    if-ne p1, v4, :cond_12

    move v1, v3

    goto :goto_d

    :cond_12
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    :goto_d
    aput v1, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2586
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v4, [F

    if-ne p1, v4, :cond_13

    move v8, v5

    goto :goto_e

    :cond_13
    move v8, v3

    :goto_e
    aput v8, v7, v2

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2588
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v4, [F

    if-ne p1, v4, :cond_14

    iget-boolean v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v8, :cond_14

    move v8, v5

    goto :goto_f

    :cond_14
    move v8, v3

    :goto_f
    aput v8, v7, v2

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2590
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v4, [F

    if-ne p1, v4, :cond_15

    iget-boolean v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v8, :cond_15

    move v8, v5

    goto :goto_10

    :cond_15
    move v8, v3

    :goto_10
    aput v8, v7, v2

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2591
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v4, [F

    if-ne p1, v4, :cond_16

    goto :goto_11

    :cond_16
    move v5, v3

    :goto_11
    aput v5, v7, v2

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2594
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    aput v3, v4, v2

    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2596
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2597
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$12;

    invoke-direct {v1, p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$12;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;II)V

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2603
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x1cc

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2604
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2605
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_22

    .line 2607
    :cond_17
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz p2, :cond_19

    if-nez p1, :cond_18

    move v6, v5

    goto :goto_12

    :cond_18
    move v6, v3

    .line 2608
    :goto_12
    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2610
    :cond_19
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    if-nez p1, :cond_1a

    move v6, v5

    goto :goto_13

    :cond_1a
    move v6, v3

    :goto_13
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2611
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    if-nez p1, :cond_1b

    move v6, v2

    goto :goto_14

    :cond_1b
    const/16 v6, 0x8

    :goto_14
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2612
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-ne p1, v4, :cond_1c

    move v6, v5

    goto :goto_15

    :cond_1c
    move v6, v3

    :goto_15
    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2613
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Landroid/widget/ImageView;

    if-nez p1, :cond_1d

    move v6, v5

    goto :goto_16

    :cond_1d
    move v6, v3

    :goto_16
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2614
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    if-nez p1, :cond_1e

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v6, :cond_1e

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailable()Z

    move-result v6

    if-eqz v6, :cond_1e

    move v6, v5

    goto :goto_17

    :cond_1e
    move v6, v3

    :goto_17
    invoke-virtual {p2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2615
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    if-nez p1, :cond_1f

    move v6, v5

    goto :goto_18

    :cond_1f
    move v6, v3

    :goto_18
    invoke-virtual {p2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2616
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    const/16 v6, 0x10

    if-nez p1, :cond_20

    move v7, v3

    goto :goto_19

    :cond_20
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    :goto_19
    invoke-virtual {p2, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 2617
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    if-nez p1, :cond_21

    move v7, v5

    goto :goto_1a

    :cond_21
    move v7, v3

    :goto_1a
    invoke-virtual {p2, v7}, Landroid/view/View;->setAlpha(F)V

    .line 2618
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    if-nez p1, :cond_22

    move v6, v3

    goto :goto_1b

    :cond_22
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    :goto_1b
    invoke-virtual {p2, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 2619
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2620
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2621
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    if-nez p1, :cond_23

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-eqz v2, :cond_23

    move v2, v5

    goto :goto_1c

    :cond_23
    move v2, v3

    :goto_1c
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2622
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_24

    move v2, v5

    goto :goto_1d

    :cond_24
    move v2, v3

    :goto_1d
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2623
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_25

    move v1, v3

    goto :goto_1e

    :cond_25
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    :goto_1e
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2624
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-ne p1, v4, :cond_26

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v1, :cond_26

    move v1, v5

    goto :goto_1f

    :cond_26
    move v1, v3

    :goto_1f
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2625
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    if-ne p1, v4, :cond_27

    move v1, v5

    goto :goto_20

    :cond_27
    move v1, v3

    :goto_20
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2627
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    if-ne p1, v4, :cond_28

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v1, :cond_28

    move v1, v5

    goto :goto_21

    :cond_28
    move v1, v3

    :goto_21
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2628
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-ne p1, v4, :cond_29

    move v3, v5

    :cond_29
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2629
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onNavigateEnd(II)V

    :goto_22
    return-void
.end method

.method public navigateToPreviewWithPlayerAwait(Ljava/lang/Runnable;J)V
    .locals 2

    .line 2521
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2524
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->afterPlayerAwait:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 2525
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x1

    .line 2527
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewAlreadySet:Z

    .line 2528
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    .line 2529
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->afterPlayerAwait:Ljava/lang/Runnable;

    .line 2536
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2537
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setVisibility(I)V

    .line 2538
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->afterPlayerAwait:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    .line 2539
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->afterPlayerAwait:Ljava/lang/Runnable;

    const-wide/16 p2, 0x190

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .line 2487
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingVideo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2488
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->stopRecording()V

    return v1

    .line 2491
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingPhoto:Z

    if-eqz v0, :cond_1

    return v1

    .line 2494
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 2496
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-eqz v0, :cond_3

    .line 2497
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    const/4 v0, 0x0

    .line 2498
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return v1

    .line 2500
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 2502
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-le v0, v2, :cond_5

    .line 2503
    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    return v1

    .line 2505
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_6

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v0, :cond_b

    .line 2506
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromGallery:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->isShareEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2507
    :cond_9
    invoke-virtual {p0, v1, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    goto :goto_0

    .line 2509
    :cond_a
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showDismissEntry()V

    :goto_0
    return v1

    .line 2513
    :cond_b
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    return v3
.end method

.method public open(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V
    .locals 1

    const/4 v0, 0x1

    .line 365
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->open(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;Z)V

    return-void
.end method

.method public open(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;Z)V
    .locals 6

    .line 369
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 373
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareClosing:Z

    .line 375
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->forceBackgroundVisible:Z

    .line 377
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 378
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraViewThumb:Landroid/widget/ImageView;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    const/4 v1, -0x1

    .line 384
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 387
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    .line 388
    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->type:I

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    .line 389
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 390
    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->rounding:F

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    .line 391
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->hide()V

    goto :goto_0

    .line 393
    :cond_2
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    .line 394
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

    invoke-virtual {p1, v1, v3, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 p1, 0x8

    .line 395
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    .line 397
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->updateBackground()V

    .line 398
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const v0, -0xe0e0e1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 400
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 401
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY(F)V

    .line 402
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY2(F)V

    .line 403
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 404
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 405
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dismissProgress:F

    .line 407
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-static {p1, v3}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;I)V

    .line 409
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda31;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {p0, v0, p2, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateOpenTo(FZLjava/lang/Runnable;)V

    .line 411
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->addNotificationObservers()V

    return-void
.end method

.method public openEdit(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;Lorg/telegram/ui/Stories/recorder/StoryEntry;JZ)V
    .locals 6

    .line 415
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 419
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareClosing:Z

    .line 421
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->forceBackgroundVisible:Z

    .line 423
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 424
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 428
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

    .line 431
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    .line 432
    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->type:I

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    .line 433
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 434
    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->rounding:F

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    .line 435
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->hide()V

    goto :goto_1

    .line 437
    :cond_3
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    .line 438
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

    .line 439
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    .line 441
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->updateBackground()V

    .line 442
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    if-ne v2, v1, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    const v2, -0xe0e0e1

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 444
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 445
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY(F)V

    .line 446
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY2(F)V

    .line 447
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 448
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 449
    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dismissProgress:F

    .line 451
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;I)V

    .line 453
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda40;

    invoke-direct {p1, p0, p5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    invoke-virtual {p0, p1, p3, p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateToPreviewWithPlayerAwait(Ljava/lang/Runnable;J)V

    .line 457
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    const/4 p1, -0x1

    .line 458
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    .line 460
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_5

    .line 461
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->addNotificationObservers()V

    return-void
.end method

.method public removeNotificationObservers()V
    .locals 2

    .line 4113
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4114
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public setIconMuted(ZZ)V
    .locals 8

    .line 4165
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_0

    .line 4166
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

    .line 4167
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->multiplySpeed(F)V

    .line 4169
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    const/16 v0, 0x14

    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 4171
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

    .line 4175
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result p1

    if-le p1, v0, :cond_3

    .line 4176
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 4178
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 4179
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_1

    .line 4181
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

    .line 4184
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 4185
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_6
    :goto_1
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

    .line 653
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onClosePrepareListener:Lorg/telegram/messenger/Utilities$Callback3;

    return-void
.end method

.method public switchToEditMode(IZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 3099
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    if-ne v3, v1, :cond_0

    return-void

    .line 3104
    :cond_0
    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    .line 3106
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 3107
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3108
    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    .line 3111
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

    .line 3113
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3115
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-nez v10, :cond_3

    if-ne v1, v9, :cond_3

    move v11, v9

    goto :goto_1

    :cond_3
    move v11, v8

    :goto_1
    const/high16 v12, 0x3f800000    # 1.0f

    if-ne v1, v9, :cond_4

    .line 3117
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createFilterPhotoView()V

    .line 3119
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    iput-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewTouchable:Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

    .line 3120
    invoke-virtual {v10}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3121
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3122
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v10

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v14, v9, [F

    aput v7, v14, v8

    invoke-static {v10, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3123
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v10

    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v9, [F

    aput v12, v14, v8

    invoke-static {v10, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3124
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/PhotoFilterView;->getMyTextureView()Landroid/view/TextureView;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 3126
    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v9, [F

    aput v12, v14, v8

    invoke-static {v10, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-ne v3, v9, :cond_5

    if-eqz v10, :cond_5

    .line 3129
    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewTouchable:Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

    .line 3131
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

    .line 3132
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v10

    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v9, [F

    aput v7, v14, v8

    invoke-static {v10, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3133
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/PhotoFilterView;->getMyTextureView()Landroid/view/TextureView;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 3135
    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v9, [F

    aput v7, v14, v8

    invoke-static {v10, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    const/16 v10, 0x20

    const/16 v13, 0x30

    const/16 v14, 0x10

    if-nez v1, :cond_6

    .line 3140
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createPhotoPaintView()V

    .line 3141
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewTouchable:Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

    .line 3142
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v9, [F

    aput v7, v6, v8

    invoke-static {v5, v15, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3143
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

    .line 3144
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

    .line 3145
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBottomLayout()Landroid/view/View;

    move-result-object v5

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v15, [F

    fill-array-data v12, :array_1

    invoke-static {v5, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3146
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

    .line 3147
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

    goto/16 :goto_3

    :cond_6
    if-nez v3, :cond_7

    .line 3148
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v6, :cond_7

    .line 3149
    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewTouchable:Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

    .line 3150
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v9, [F

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v12, v8

    invoke-static {v5, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3151
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/PaintView;->getTopLayout()Landroid/view/View;

    move-result-object v5

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v9, [F

    aput v7, v12, v8

    invoke-static {v5, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3152
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

    .line 3153
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBottomLayout()Landroid/view/View;

    move-result-object v5

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v9, [F

    aput v7, v12, v8

    invoke-static {v5, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3154
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

    .line 3155
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

    goto :goto_4

    :cond_7
    :goto_3
    const/high16 v15, 0x3f800000    # 1.0f

    .line 3158
    :goto_4
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v9, [F

    const/4 v12, -0x1

    if-ne v1, v12, :cond_8

    iget-boolean v12, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v12, :cond_8

    move v12, v15

    goto :goto_5

    :cond_8
    move v12, v7

    :goto_5
    aput v12, v10, v8

    invoke-static {v5, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3159
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v9, [F

    const/4 v12, -0x1

    if-ne v1, v12, :cond_9

    move v13, v15

    goto :goto_6

    :cond_9
    move v13, v7

    :goto_6
    aput v13, v10, v8

    invoke-static {v5, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3163
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v9, [F

    iget v13, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-ne v13, v9, :cond_a

    if-ne v1, v12, :cond_a

    move v12, v15

    goto :goto_7

    :cond_a
    move v12, v7

    :goto_7
    aput v12, v10, v8

    invoke-static {v5, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v1, v9, :cond_b

    .line 3167
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    const v10, 0x3e4ccccd    # 0.2f

    mul-float/2addr v6, v10

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setPivotY(F)V

    const/16 v5, 0xa4

    .line 3168
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    goto :goto_8

    :cond_b
    if-nez v1, :cond_c

    .line 3170
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v10

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setPivotY(F)V

    const/16 v5, 0x28

    .line 3171
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    goto :goto_8

    :cond_c
    move v5, v8

    :goto_8
    if-lez v5, :cond_d

    .line 3176
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

    goto :goto_9

    :cond_d
    move v5, v15

    .line 3180
    :goto_9
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v12, v9, [F

    aput v5, v12, v8

    invoke-static {v6, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3181
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v9, [F

    aput v5, v12, v8

    invoke-static {v6, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, -0x1

    if-ne v1, v5, :cond_e

    .line 3183
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v9, [F

    aput v7, v10, v8

    invoke-static {v5, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3186
    :cond_e
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    if-eqz v5, :cond_10

    .line 3187
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v9, [F

    if-ne v1, v9, :cond_f

    move v12, v15

    goto :goto_a

    :cond_f
    move v12, v7

    :goto_a
    aput v12, v10, v8

    invoke-static {v5, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3189
    :cond_10
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    if-eqz v5, :cond_12

    .line 3190
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v9, [F

    if-ne v1, v9, :cond_11

    move v12, v15

    goto :goto_b

    :cond_11
    move v12, v7

    :goto_b
    aput v12, v10, v8

    invoke-static {v5, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3193
    :cond_12
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v9, [F

    const/4 v10, -0x1

    if-ne v1, v10, :cond_13

    move v7, v15

    :cond_13
    aput v7, v9, v8

    invoke-static {v5, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3195
    invoke-direct {v0, v3, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onSwitchEditModeStart(II)V

    if-eqz v2, :cond_15

    .line 3197
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    .line 3198
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3199
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x140

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3200
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3201
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$16;

    invoke-direct {v4, v0, v3, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$16;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;II)V

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v11, :cond_14

    .line 3208
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x78

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 3210
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_d

    .line 3212
    :cond_15
    :goto_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_16

    .line 3213
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    const-wide/16 v5, 0x1

    .line 3214
    invoke-virtual {v2, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 3215
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 3217
    :cond_16
    invoke-direct {v0, v3, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onSwitchEditModeEnd(II)V

    :goto_d
    return-void

    nop

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
